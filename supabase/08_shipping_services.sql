-- =====================================================================
--  M&Q Toys – Phí ship theo khu vực + dịch vụ thêm (gói quà, ưu tiên)
--  · Bỏ miễn phí vận chuyển theo giá trị đơn
--  · Phí ship tính theo tỉnh/thành khách chọn (34 đơn vị hành chính 2025)
--  · Dịch vụ gói quà 50.000₫ và ưu tiên xử lý 20.000₫
--  Chạy SAU 07_no_stock_check.sql (chạy lại nhiều lần vẫn an toàn)
-- =====================================================================

-- ---------- Liên hệ: Zalo + 2 số hotline ----------
update settings set value = (value - 'hotline') || jsonb_build_object(
    'zalo', '0332572909',
    'hotlines', jsonb_build_array(
      jsonb_build_object('phone', '0937949469', 'name', ''),
      jsonb_build_object('phone', '0941482311', 'name', 'Thuý An')))
  where key = 'shop';

-- ---------- Khu vực giao hàng ----------
create table if not exists shipping_zones (
  id         serial primary key,
  name       text   not null,
  fee        bigint not null,
  provinces  text[] not null default '{}',
  sort_order int    not null default 0,
  is_active  boolean not null default true
);
alter table shipping_zones enable row level security;
drop policy if exists admin_all on shipping_zones;
create policy admin_all on shipping_zones for all to authenticated using (true) with check (true);

insert into shipping_zones(id, name, fee, sort_order, provinces) values
  (1, 'Nội thành TP. Hồ Chí Minh', 20000, 1, array['Thành phố Hồ Chí Minh']),
  (2, 'Đông Nam Bộ', 25000, 2, array['Đồng Nai','Tây Ninh']),
  (3, 'Miền Tây (ĐBSCL)', 30000, 3, array['Cần Thơ','Vĩnh Long','Đồng Tháp','An Giang','Cà Mau']),
  (4, 'Nam Trung Bộ & Tây Nguyên', 35000, 4, array['Lâm Đồng','Đắk Lắk','Khánh Hòa','Gia Lai','Quảng Ngãi','Đà Nẵng']),
  (5, 'Bắc Trung Bộ', 40000, 5, array['Huế','Quảng Trị','Hà Tĩnh','Nghệ An','Thanh Hóa','Ninh Bình']),
  (6, 'Miền Bắc', 45000, 6, array['Hà Nội','Hải Phòng','Quảng Ninh','Bắc Ninh','Hưng Yên','Phú Thọ','Thái Nguyên','Lào Cai','Tuyên Quang','Lạng Sơn','Cao Bằng','Sơn La','Điện Biên','Lai Châu'])
on conflict (id) do nothing;
select setval(pg_get_serial_sequence('shipping_zones','id'), greatest((select max(id) from shipping_zones), 1));

-- Phí mặc định khi không xác định được tỉnh/thành
insert into settings(key, value) values ('shipping_default_fee', '35000') on conflict (key) do nothing;
delete from settings where key = 'freeship_from';

create or replace function zone_fee(p_province text) returns bigint language sql stable as $$
  select coalesce(
    (select z.fee from shipping_zones z
      where z.is_active and trim(coalesce(p_province,'')) = any(z.provinces)
      order by z.sort_order limit 1),
    (select (value)::bigint from settings where key = 'shipping_default_fee'));
$$;

-- ---------- Dịch vụ thêm ----------
create table if not exists services (
  code        text primary key,
  name        text   not null,
  description text   default '',
  icon        text   default '',
  fee         bigint not null,
  sort_order  int    not null default 0,
  is_active   boolean not null default true
);
alter table services enable row level security;
drop policy if exists admin_all on services;
create policy admin_all on services for all to authenticated using (true) with check (true);

insert into services(code, name, description, icon, fee, sort_order) values
  ('giftwrap', 'Gói quà tặng', 'Hộp quà, giấy gói và nơ ruy băng xinh xắn – tặng kèm thiệp viết tay theo lời nhắn của bạn.', '🎁', 50000, 1),
  ('priority', 'Ưu tiên xử lý đơn', 'Đơn của bạn được đóng gói và bàn giao cho đơn vị vận chuyển sớm nhất trong ngày.', '⚡', 20000, 2)
on conflict (code) do update set name = excluded.name, description = excluded.description,
  icon = excluded.icon, sort_order = excluded.sort_order;

-- ---------- Đơn hàng: lưu tỉnh/thành và dịch vụ ----------
alter table orders add column if not exists province     text    default '';
alter table orders add column if not exists services     jsonb   default '[]'::jsonb;
alter table orders add column if not exists services_fee bigint  default 0;

-- =====================================================================
--  Catalog: trả khu vực giao hàng + dịch vụ cho website
-- =====================================================================
create or replace function get_catalog() returns json language sql stable security definer as $$
  select json_build_object(
    'shop', (select value from settings where key = 'shop'),
    'shipping', json_build_object(
      'defaultFee', (select (value)::bigint from settings where key='shipping_default_fee'),
      'zones', (select coalesce(json_agg(json_build_object('id', id, 'name', name, 'fee', fee, 'provinces', provinces) order by sort_order), '[]')
                from shipping_zones where is_active)),
    'services', (select coalesce(json_agg(json_build_object('code', code, 'name', name, 'description', description,
                  'icon', icon, 'fee', fee) order by sort_order), '[]') from services where is_active),
    'vouchers', public_vouchers(),
    'categories', (
      select coalesce(json_agg(json_build_object('id', c.id, 'name', c.name, 'slug', c.slug,
        'items', (select coalesce(json_agg(pc.product_id), '[]') from product_categories pc join products p on p.id = pc.product_id and p.is_active where pc.category_id = c.id))
        order by c.sort_order, c.name), '[]')
      from categories c where c.is_active),
    'products', (
      select coalesce(json_agg(json_build_object(
        'id', p.id, 'name', p.name, 'slug', p.slug, 'price', p.price, 'priceMax', p.price_max, 'priceBefore', p.price_before, 'discount', p.discount,
        'stock', null, 'sold', p.sold, 'rating', p.rating, 'ratingCount', p.rating_count, 'ratingDist', p.rating_dist,
        'brand', p.brand, 'description', p.description, 'attrs', p.attrs, 'catpath', p.catpath, 'shopeeUrl', p.shopee_url,
        'video', case when p.video_url is null then null else json_build_object('url', p.video_url, 'thumb', p.video_thumb, 'duration', p.video_duration) end,
        'images', (select coalesce(json_agg(url order by sort_order), '[]') from product_images where product_id = p.id),
        'variants', (select coalesce(json_agg(json_build_object('name', name, 'options', options, 'images', images)), '[]') from product_variants where product_id = p.id),
        'models', (select coalesce(json_agg(json_build_object('name', name, 'price', price, 'stock', null, 'image', image) order by id), '[]') from product_models where product_id = p.id),
        'categories', (select coalesce(json_agg(category_id), '[]') from product_categories where product_id = p.id),
        'reviews', (select coalesce(json_agg(json_build_object('user', user_name, 'star', star, 'comment', comment, 'variant', variant, 'images', images, 'reply', shop_reply, 'time', extract(epoch from created_at)::bigint) order by created_at desc), '[]') from reviews where product_id = p.id and is_approved)
      ) order by p.sold desc), '[]')
      from products p where p.is_active)
  );
$$;
grant execute on function get_catalog() to anon, authenticated;

-- =====================================================================
--  Đặt hàng: phí ship theo tỉnh/thành + dịch vụ thêm
-- =====================================================================
create or replace function place_order(payload json) returns json language plpgsql security definer as $$
declare
  c json := payload->'customer';
  v_name text := trim(coalesce(c->>'name',''));
  v_phone text := regexp_replace(coalesce(c->>'phone',''), '\s', '', 'g');
  v_addr text := trim(coalesce(c->>'address',''));
  v_prov text := trim(coalesce(c->>'province',''));
  v_note text := left(trim(coalesce(c->>'note','')), 500);
  it json; p products%rowtype; m product_models%rowtype;
  v_qty int; v_price bigint; v_variant text; v_sub bigint := 0;
  v_ship bigint; v_code text; v_oid bigint; v_cid bigint;
  v_vcode text := upper(trim(coalesce(payload->>'voucher','')));
  v_disc bigint := 0; v_vrow record;
  v_svc jsonb := '[]'::jsonb; v_svc_fee bigint := 0; s record;
begin
  if length(v_name) < 2 then raise exception 'Vui lòng nhập họ tên'; end if;
  if v_phone !~ '^(0|\+84)\d{9}$' then raise exception 'Số điện thoại không hợp lệ'; end if;
  if length(v_addr) < 8 then raise exception 'Vui lòng nhập địa chỉ đầy đủ'; end if;
  if v_prov = '' then raise exception 'Vui lòng chọn Tỉnh/Thành phố để tính phí vận chuyển'; end if;
  if json_array_length(coalesce(payload->'items','[]'::json)) = 0 then raise exception 'Giỏ hàng trống'; end if;

  insert into customers(phone, name, address, note) values (v_phone, v_name, v_addr, v_note)
    on conflict (phone) do update set name = excluded.name, address = excluded.address, updated_at = now()
    returning id into v_cid;

  v_code := 'MQ' || to_char(now() at time zone 'Asia/Ho_Chi_Minh', 'YYMMDD') || lpad((select count(*)+1 from orders where created_at::date = current_date)::text, 3, '0');
  insert into orders(code, customer_id, name, phone, address, province, note, subtotal, shipping, total)
    values (v_code, v_cid, v_name, v_phone, v_addr, v_prov, v_note, 0, 0, 0) returning id into v_oid;

  for it in select * from json_array_elements(payload->'items') loop
    select * into p from products where id = it->>'id' and is_active;
    if not found then raise exception 'Sản phẩm không tồn tại hoặc đã ngừng bán'; end if;
    v_qty := greatest(1, least(99, coalesce((it->>'qty')::int, 1)));
    v_price := p.price; v_variant := '';
    if coalesce(it->>'model','') <> '' then
      select * into m from product_models where product_id = p.id and name = it->>'model' limit 1;
      if found then v_price := coalesce(nullif(m.price,0), p.price); v_variant := m.name; end if;
    end if;
    update products set sold = sold + v_qty where id = p.id;
    v_sub := v_sub + v_price * v_qty;
    insert into order_items(order_id, product_id, name, image, variant, price, qty)
      values (v_oid, p.id, p.name, (select url from product_images where product_id = p.id order by sort_order limit 1), v_variant, v_price, v_qty);
  end loop;

  -- Dịch vụ thêm: giá lấy từ bảng services, không tin giá do khách gửi lên
  for s in select * from services where is_active
             and code in (select json_array_elements_text(coalesce(payload->'services','[]'::json)))
             order by sort_order loop
    v_svc := v_svc || jsonb_build_object('code', s.code, 'name', s.name, 'icon', s.icon, 'fee', s.fee);
    v_svc_fee := v_svc_fee + s.fee;
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

  v_ship := zone_fee(v_prov);
  update orders set subtotal = v_sub, discount = v_disc, voucher_code = nullif(v_vcode,''),
                    shipping = v_ship, services = v_svc, services_fee = v_svc_fee,
                    total = v_sub - v_disc + v_ship + v_svc_fee where id = v_oid;
  update customers set order_count = order_count + 1,
         total_spent = total_spent + (v_sub - v_disc + v_ship + v_svc_fee) where id = v_cid;
  return get_order(v_code, v_phone);
end $$;
grant execute on function place_order(json) to anon, authenticated;

create or replace function get_order(p_code text, p_phone text) returns json language sql stable security definer as $$
  select json_build_object('code', o.code, 'createdAt', o.created_at, 'status', o.status, 'payment', o.payment,
    'customer', json_build_object('name', o.name, 'phone', o.phone, 'address', o.address, 'province', o.province, 'note', o.note),
    'items', (select coalesce(json_agg(json_build_object('id', product_id, 'name', name, 'image', image, 'variant', variant, 'price', price, 'qty', qty)), '[]') from order_items where order_id = o.id),
    'subtotal', o.subtotal, 'discount', o.discount, 'voucher', o.voucher_code,
    'services', o.services, 'servicesFee', o.services_fee,
    'shipping', o.shipping, 'total', o.total)
  from orders o where upper(o.code) = upper(p_code) and o.phone = regexp_replace(p_phone, '\s', '', 'g') limit 1;
$$;
grant execute on function get_order(text, text) to anon, authenticated;
