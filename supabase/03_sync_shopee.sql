-- =====================================================================
--  M&Q Toys – Đồng bộ sản phẩm với Shopee
--  Chạy SAU 01_schema.sql và 02_seed.sql (chạy lại nhiều lần vẫn an toàn)
-- =====================================================================

-- ---------- Cột mới cho bảng products ----------
alter table products add column if not exists shopee_item_id  text;
alter table products add column if not exists shopee_status   text not null default 'ok';   -- ok | missing | manual | never
alter table products add column if not exists shopee_synced_at timestamptz;
alter table products add column if not exists sync_note       text default '';

update products set shopee_item_id = coalesce(shopee_item_id, id) where shopee_item_id is null;
create index if not exists products_shopee_item on products(shopee_item_id);

-- ---------- Nhật ký đồng bộ ----------
create table if not exists sync_log (
  id         bigserial primary key,
  ran_at     timestamptz not null default now(),
  source     text not null default 'shopee',
  found      int not null default 0,   -- số SP đọc được từ Shopee
  updated    int not null default 0,   -- số SP có thay đổi
  missing    int not null default 0,   -- số SP không còn trên Shopee
  detail     jsonb default '[]',       -- danh sách thay đổi
  ok         boolean not null default true,
  message    text default ''
);
alter table sync_log enable row level security;
drop policy if exists admin_all on sync_log;
create policy admin_all on sync_log for all to authenticated using (true) with check (true);

-- ---------- Khóa bí mật cho script đồng bộ ----------
insert into settings(key, value)
values ('sync_secret', to_jsonb(encode(gen_random_bytes(18), 'hex')))
on conflict (key) do nothing;

-- Chỉ admin (đã đăng nhập) mới đọc được khóa này
create or replace function get_sync_secret() returns text language sql stable security definer as $$
  select value #>> '{}' from settings where key = 'sync_secret';
$$;
revoke all on function get_sync_secret() from anon, public;
grant execute on function get_sync_secret() to authenticated;

-- =====================================================================
--  RPC: nhận dữ liệu Shopee từ script chạy trong trình duyệt
--  p_items  : [{ "item_id":"123", "name":..., "price":104000, "price_before":208000,
--                "stock":12, "sold":93, "rating":5, "rating_count":14, "images":[url,...] }]
--  p_missing: ["item_id", ...]  – các sản phẩm script xác nhận không còn trên Shopee
-- =====================================================================
create or replace function sync_from_shopee(p_secret text, p_items json, p_missing json default '[]')
returns json language plpgsql security definer as $$
declare
  it json; p products%rowtype; ch jsonb := '[]'::jsonb; chg jsonb;
  n_found int := 0; n_upd int := 0; n_missing int := 0;
  v_imgs text[]; v_price bigint; v_before bigint; v_disc int;
begin
  if p_secret is null or p_secret <> (select value #>> '{}' from settings where key = 'sync_secret') then
    raise exception 'Khóa đồng bộ không hợp lệ';
  end if;

  for it in select * from json_array_elements(coalesce(p_items, '[]'::json)) loop
    n_found := n_found + 1;
    select * into p from products where shopee_item_id = it->>'item_id' or id = it->>'item_id' limit 1;
    if not found then continue; end if;   -- SP mới trên Shopee: bỏ qua, admin tự thêm

    v_price  := nullif(it->>'price','')::bigint;
    v_before := nullif(it->>'price_before','')::bigint;
    v_disc   := coalesce(nullif(it->>'discount','')::int, case when v_before > v_price then round((1 - v_price::numeric / v_before) * 100) else 0 end);
    chg := '{}'::jsonb;

    if v_price is not null and v_price <> p.price then
      chg := chg || jsonb_build_object('gia_cu', p.price, 'gia_moi', v_price);
    end if;
    if nullif(it->>'stock','') is not null and coalesce(p.stock,-1) <> (it->>'stock')::int then
      chg := chg || jsonb_build_object('ton_cu', p.stock, 'ton_moi', (it->>'stock')::int);
    end if;
    if nullif(it->>'name','') is not null and it->>'name' <> p.name then
      chg := chg || jsonb_build_object('doi_ten', true);
    end if;

    update products set
      name          = coalesce(nullif(it->>'name',''), name),
      price         = coalesce(v_price, price),
      price_before  = coalesce(v_before, price_before),
      discount      = coalesce(v_disc, discount),
      stock         = case when nullif(it->>'stock','') is null then stock else (it->>'stock')::int end,
      sold          = greatest(sold, coalesce(nullif(it->>'sold','')::int, 0)),
      rating        = coalesce(nullif(it->>'rating','')::numeric, rating),
      rating_count  = greatest(rating_count, coalesce(nullif(it->>'rating_count','')::int, 0)),
      shopee_status = 'ok',
      shopee_synced_at = now(),
      sync_note     = ''
    where id = p.id;

    -- cập nhật ảnh nếu Shopee đổi ảnh
    select array(select json_array_elements_text(coalesce(it->'images','[]'::json))) into v_imgs;
    if array_length(v_imgs,1) > 0 and v_imgs is distinct from (select array_agg(url order by sort_order) from product_images where product_id = p.id) then
      delete from product_images where product_id = p.id;
      insert into product_images(product_id, url, sort_order)
        select p.id, u, i - 1 from unnest(v_imgs) with ordinality as t(u, i);
      chg := chg || jsonb_build_object('doi_anh', true);
    end if;

    if chg <> '{}'::jsonb then
      n_upd := n_upd + 1;
      ch := ch || jsonb_build_array(jsonb_build_object('id', p.id, 'ten', left(p.name, 60)) || chg);
    end if;
  end loop;

  -- Đánh dấu sản phẩm không còn trên Shopee
  for it in select * from json_array_elements(coalesce(p_missing, '[]'::json)) loop
    update products set shopee_status = 'missing', shopee_synced_at = now(),
      sync_note = 'Không tìm thấy trên Shopee lúc ' || to_char(now() at time zone 'Asia/Ho_Chi_Minh','HH24:MI DD/MM/YYYY')
      where (shopee_item_id = (it #>> '{}') or id = (it #>> '{}')) and shopee_status <> 'manual';
    if found then n_missing := n_missing + 1; end if;
  end loop;

  insert into sync_log(found, updated, missing, detail) values (n_found, n_upd, n_missing, ch);
  return json_build_object('ok', true, 'found', n_found, 'updated', n_upd, 'missing', n_missing, 'changes', ch);
end $$;

revoke all on function sync_from_shopee(text, json, json) from public;
grant execute on function sync_from_shopee(text, json, json) to anon, authenticated;  -- bảo vệ bằng p_secret

-- Danh sách sản phẩm cần script kiểm tra (công khai id + link, không lộ dữ liệu nhạy cảm)
create or replace function sync_targets() returns json language sql stable security definer as $$
  select coalesce(json_agg(json_build_object('id', id, 'item_id', coalesce(shopee_item_id, id), 'name', left(name, 70), 'status', shopee_status)), '[]')
  from products where is_active;
$$;
grant execute on function sync_targets() to anon, authenticated;

-- Admin gán lại link Shopee bằng tay
create or replace function relink_shopee(p_product_id text, p_url text) returns json language plpgsql security definer as $$
declare v_item text;
begin
  if auth.role() <> 'authenticated' then raise exception 'Chỉ quản trị viên mới thực hiện được'; end if;
  v_item := substring(p_url from 'i\.\d+\.(\d+)');
  if v_item is null then v_item := substring(p_url from '(\d{6,})\s*$'); end if;
  if v_item is null then raise exception 'Link Shopee không hợp lệ (cần dạng …-i.67689883.123456789)'; end if;
  update products set shopee_item_id = v_item, shopee_url = p_url, shopee_status = 'manual',
    sync_note = 'Đã gán link thủ công', shopee_synced_at = now() where id = p_product_id;
  return json_build_object('ok', true, 'item_id', v_item);
end $$;
grant execute on function relink_shopee(text, text) to authenticated;

-- Thống kê nhanh cho trang Đồng bộ
create or replace view v_sync_status as
  select count(*) filter (where shopee_status = 'ok')      as ok,
         count(*) filter (where shopee_status = 'missing') as missing,
         count(*) filter (where shopee_status = 'manual')  as manual,
         max(shopee_synced_at)                             as last_sync,
         (select count(*) from sync_log)                   as runs
  from products where is_active;
grant select on v_sync_status to authenticated;

-- Bổ sung shopee_status vào catalog để website hiển thị nhãn (tuỳ chọn)
comment on column products.shopee_status is 'ok = đồng bộ tốt | missing = link Shopee đã mất | manual = admin gán link tay';
