-- =====================================================================
--  M&Q Toys – Voucher giảm giá + theo dõi tồn kho
--  Chạy SAU 03_sync_shopee.sql (chạy lại nhiều lần vẫn an toàn)
-- =====================================================================

-- ---------- Bảng voucher ----------
create table if not exists vouchers (
  code          text primary key,
  title         text not null,                       -- hiển thị cho khách
  description   text default '',
  kind          text not null default 'percent' check (kind in ('percent','amount')),
  value         numeric not null,                    -- percent: 15 = 15% | amount: 50000 = 50.000₫
  max_discount  bigint,                              -- trần giảm (chỉ dùng cho percent), null = không giới hạn
  min_order     bigint not null default 0,           -- đơn tối thiểu
  starts_at     timestamptz,
  ends_at       timestamptz,
  usage_limit   int,                                 -- tổng lượt dùng, null = không giới hạn
  used_count    int not null default 0,
  is_active     boolean not null default true,
  is_default    boolean not null default false,      -- tự áp dụng khi khách vào thanh toán
  show_on_site  boolean not null default true,       -- quảng cáo trên trang sản phẩm
  created_at    timestamptz not null default now()
);
create unique index if not exists vouchers_one_default on vouchers(is_default) where is_default;

-- Voucher mặc định: giảm thêm 15% khi đặt trên website
insert into vouchers(code, title, description, kind, value, max_discount, min_order, is_default, show_on_site)
values ('WEB15', 'Giảm thêm 15% khi đặt trên website',
        'Tự động áp dụng cho mọi đơn hàng đặt tại mqhometech.com – rẻ hơn mua trên sàn.',
        'percent', 15, null, 0, true, true)
on conflict (code) do nothing;

-- ---------- Đơn hàng: thêm cột giảm giá ----------
alter table orders add column if not exists discount     bigint not null default 0;
alter table orders add column if not exists voucher_code text;

-- =====================================================================
--  Tính giảm giá (dùng chung cho kiểm tra và khi đặt hàng)
-- =====================================================================
create or replace function voucher_discount(p_code text, p_subtotal bigint)
returns table(code text, title text, discount bigint, err text) language plpgsql stable as $$
declare v vouchers%rowtype; d bigint;
begin
  if coalesce(p_code,'') = '' then return; end if;
  select * into v from vouchers where upper(vouchers.code) = upper(trim(p_code));
  if not found then return query select null::text, null::text, 0::bigint, 'Mã giảm giá không tồn tại'; return; end if;
  if not v.is_active then return query select v.code, v.title, 0::bigint, 'Mã đã ngừng áp dụng'; return; end if;
  if v.starts_at is not null and now() < v.starts_at then return query select v.code, v.title, 0::bigint, 'Mã chưa tới thời gian áp dụng'; return; end if;
  if v.ends_at is not null and now() > v.ends_at then return query select v.code, v.title, 0::bigint, 'Mã đã hết hạn'; return; end if;
  if v.usage_limit is not null and v.used_count >= v.usage_limit then return query select v.code, v.title, 0::bigint, 'Mã đã hết lượt sử dụng'; return; end if;
  if p_subtotal < v.min_order then
    return query select v.code, v.title, 0::bigint, 'Đơn tối thiểu ' || to_char(v.min_order, 'FM999G999G999') || '₫ mới dùng được mã này'; return;
  end if;
  if v.kind = 'percent' then
    d := floor(p_subtotal * v.value / 100);
    if v.max_discount is not null then d := least(d, v.max_discount); end if;
  else
    d := least(v.value::bigint, p_subtotal);
  end if;
  return query select v.code, v.title, d, null::text;
end $$;

-- Khách kiểm tra mã trước khi đặt
create or replace function check_voucher(p_code text, p_subtotal bigint)
returns json language sql stable security definer as $$
  select coalesce((select json_build_object('ok', err is null, 'code', code, 'title', title, 'discount', discount, 'error', err)
                   from voucher_discount(p_code, p_subtotal)),
                  json_build_object('ok', false, 'error', 'Mã giảm giá không hợp lệ', 'discount', 0));
$$;
grant execute on function check_voucher(text, bigint) to anon, authenticated;

-- Danh sách voucher quảng cáo trên website
create or replace function public_vouchers() returns json language sql stable security definer as $$
  select coalesce(json_agg(json_build_object(
      'code', code, 'title', title, 'description', description, 'kind', kind, 'value', value,
      'min_order', min_order, 'max_discount', max_discount, 'is_default', is_default,
      'ends_at', ends_at) order by is_default desc, value desc), '[]')
  from vouchers
  where is_active and show_on_site
    and (starts_at is null or now() >= starts_at)
    and (ends_at   is null or now() <= ends_at)
    and (usage_limit is null or used_count < usage_limit);
$$;
grant execute on function public_vouchers() to anon, authenticated;

-- =====================================================================
--  Catalog: kèm voucher + cảnh báo hết hàng
-- =====================================================================
create or replace function get_catalog() returns json language sql stable security definer as $$
  select json_build_object(
    'shop', (select value from settings where key = 'shop'),
    'shipping', json_build_object('fee', (select value from settings where key='shipping_fee'), 'freeFrom', (select value from settings where key='freeship_from')),
    'vouchers', public_vouchers(),
    'categories', (
      select coalesce(json_agg(json_build_object('id', c.id, 'name', c.name, 'slug', c.slug,
        'items', (select coalesce(json_agg(pc.product_id), '[]') from product_categories pc join products p on p.id = pc.product_id and p.is_active where pc.category_id = c.id))
        order by c.sort_order, c.name), '[]')
      from categories c where c.is_active),
    'products', (
      select coalesce(json_agg(json_build_object(
        'id', p.id, 'name', p.name, 'slug', p.slug, 'price', p.price, 'priceMax', p.price_max, 'priceBefore', p.price_before, 'discount', p.discount,
        'stock', p.stock, 'sold', p.sold, 'rating', p.rating, 'ratingCount', p.rating_count, 'ratingDist', p.rating_dist,
        'brand', p.brand, 'description', p.description, 'attrs', p.attrs, 'catpath', p.catpath, 'shopeeUrl', p.shopee_url,
        'images', (select coalesce(json_agg(url order by sort_order), '[]') from product_images where product_id = p.id),
        'variants', (select coalesce(json_agg(json_build_object('name', name, 'options', options, 'images', images)), '[]') from product_variants where product_id = p.id),
        'models', (select coalesce(json_agg(json_build_object('name', name, 'price', price, 'stock', stock, 'image', image) order by id), '[]') from product_models where product_id = p.id),
        'categories', (select coalesce(json_agg(category_id), '[]') from product_categories where product_id = p.id),
        'reviews', (select coalesce(json_agg(json_build_object('user', user_name, 'star', star, 'comment', comment, 'variant', variant, 'images', images, 'reply', shop_reply, 'time', extract(epoch from created_at)::bigint) order by created_at desc), '[]') from reviews where product_id = p.id and is_approved)
      ) order by p.sold desc), '[]')
      from products p where p.is_active)
  );
$$;
grant execute on function get_catalog() to anon, authenticated;

-- =====================================================================
--  Đặt hàng: áp dụng voucher + kiểm tra tồn kho chặt chẽ
-- =====================================================================
create or replace function place_order(payload json) returns json language plpgsql security definer as $$
declare
  c json := payload->'customer';
  v_name text := trim(coalesce(c->>'name',''));
  v_phone text := regexp_replace(coalesce(c->>'phone',''), '\s', '', 'g');
  v_addr text := trim(coalesce(c->>'address',''));
  v_note text := left(trim(coalesce(c->>'note','')), 500);
  it json; p products%rowtype; m product_models%rowtype;
  v_qty int; v_price bigint; v_variant text; v_sub bigint := 0;
  v_fee bigint := (select (value)::bigint from settings where key='shipping_fee');
  v_free bigint := (select (value)::bigint from settings where key='freeship_from');
  v_ship bigint; v_code text; v_oid bigint; v_cid bigint;
  v_vcode text := upper(trim(coalesce(payload->>'voucher','')));
  v_disc bigint := 0; v_vrow record;
begin
  if length(v_name) < 2 then raise exception 'Vui lòng nhập họ tên'; end if;
  if v_phone !~ '^(0|\+84)\d{9}$' then raise exception 'Số điện thoại không hợp lệ'; end if;
  if length(v_addr) < 8 then raise exception 'Vui lòng nhập địa chỉ đầy đủ'; end if;
  if json_array_length(coalesce(payload->'items','[]'::json)) = 0 then raise exception 'Giỏ hàng trống'; end if;

  insert into customers(phone, name, address, note) values (v_phone, v_name, v_addr, v_note)
    on conflict (phone) do update set name = excluded.name, address = excluded.address, updated_at = now()
    returning id into v_cid;

  v_code := 'MQ' || to_char(now() at time zone 'Asia/Ho_Chi_Minh', 'YYMMDD') || lpad((select count(*)+1 from orders where created_at::date = current_date)::text, 3, '0');
  insert into orders(code, customer_id, name, phone, address, note, subtotal, shipping, total)
    values (v_code, v_cid, v_name, v_phone, v_addr, v_note, 0, 0, 0) returning id into v_oid;

  for it in select * from json_array_elements(payload->'items') loop
    select * into p from products where id = it->>'id' and is_active;
    if not found then raise exception 'Sản phẩm không tồn tại hoặc đã ngừng bán'; end if;
    v_qty := greatest(1, least(99, coalesce((it->>'qty')::int, 1)));
    v_price := p.price; v_variant := '';
    if coalesce(it->>'model','') <> '' then
      select * into m from product_models where product_id = p.id and name = it->>'model' limit 1;
      if found then
        v_price := coalesce(nullif(m.price,0), p.price); v_variant := m.name;
        if m.stock is not null and m.stock < v_qty then raise exception 'Phân loại "%" của "%" chỉ còn % sản phẩm', m.name, p.name, m.stock; end if;
        update product_models set stock = stock - v_qty where id = m.id and stock is not null;
      end if;
    end if;
    if p.stock is not null and p.stock < v_qty then raise exception 'Sản phẩm "%" chỉ còn % sản phẩm', p.name, p.stock; end if;
    update products set stock = case when stock is null then null else stock - v_qty end, sold = sold + v_qty where id = p.id;
    v_sub := v_sub + v_price * v_qty;
    insert into order_items(order_id, product_id, name, image, variant, price, qty)
      values (v_oid, p.id, p.name, (select url from product_images where product_id = p.id order by sort_order limit 1), v_variant, v_price, v_qty);
  end loop;

  -- Voucher: nếu khách không nhập thì tự lấy voucher mặc định
  if v_vcode = '' then
    select vouchers.code into v_vcode from vouchers where is_default and is_active
      and (starts_at is null or now() >= starts_at) and (ends_at is null or now() <= ends_at)
      and (usage_limit is null or used_count < usage_limit) and v_sub >= min_order limit 1;
    v_vcode := coalesce(v_vcode, '');
  end if;
  if v_vcode <> '' then
    select * into v_vrow from voucher_discount(v_vcode, v_sub);
    if v_vrow.err is not null then raise exception '%', v_vrow.err; end if;
    v_disc := coalesce(v_vrow.discount, 0);
    if v_disc > 0 then update vouchers set used_count = used_count + 1 where code = v_vrow.code; end if;
  end if;

  v_ship := case when v_sub >= v_free then 0 else v_fee end;
  update orders set subtotal = v_sub, discount = v_disc, voucher_code = nullif(v_vcode,''), shipping = v_ship,
                    total = v_sub - v_disc + v_ship where id = v_oid;
  update customers set order_count = order_count + 1, total_spent = total_spent + (v_sub - v_disc + v_ship) where id = v_cid;
  return get_order(v_code, v_phone);
end $$;
grant execute on function place_order(json) to anon, authenticated;

create or replace function get_order(p_code text, p_phone text) returns json language sql stable security definer as $$
  select json_build_object('code', o.code, 'createdAt', o.created_at, 'status', o.status, 'payment', o.payment,
    'customer', json_build_object('name', o.name, 'phone', o.phone, 'address', o.address, 'note', o.note),
    'items', (select coalesce(json_agg(json_build_object('id', product_id, 'name', name, 'image', image, 'variant', variant, 'price', price, 'qty', qty)), '[]') from order_items where order_id = o.id),
    'subtotal', o.subtotal, 'discount', o.discount, 'voucher', o.voucher_code, 'shipping', o.shipping, 'total', o.total)
  from orders o where upper(o.code) = upper(p_code) and o.phone = regexp_replace(p_phone, '\s', '', 'g') limit 1;
$$;
grant execute on function get_order(text, text) to anon, authenticated;

-- =====================================================================
--  Tồn kho: cảnh báo cho admin
-- =====================================================================
create or replace view v_stock_alert as
  select id, name, stock, sold, shopee_status, shopee_synced_at,
         case when stock = 0 then 'het' when stock <= 5 then 'sap_het' else 'du' end as tinh_trang
  from products where is_active and stock is not null and stock <= 5
  order by stock, sold desc;
grant select on v_stock_alert to authenticated;

create or replace view v_dashboard as
  select (select count(*) from orders) as total_orders,
         (select count(*) from orders where status = 'new') as new_orders,
         (select coalesce(sum(total),0) from orders where status <> 'cancelled') as revenue,
         (select count(*) from customers) as customers,
         (select count(*) from products where is_active) as active_products,
         (select count(*) from reviews where not is_approved) as pending_reviews,
         (select count(*) from products where is_active and stock is not null and stock = 0) as out_of_stock,
         (select count(*) from products where is_active and stock is not null and stock between 1 and 5) as low_stock,
         (select coalesce(sum(discount),0) from orders where status <> 'cancelled') as total_discount;
grant select on v_dashboard to authenticated;

-- RLS cho bảng voucher: chỉ admin sửa, khách đọc qua RPC
alter table vouchers enable row level security;
drop policy if exists admin_all on vouchers;
create policy admin_all on vouchers for all to authenticated using (true) with check (true);
