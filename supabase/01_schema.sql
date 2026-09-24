-- =====================================================================
--  M&Q Toys – Cơ sở dữ liệu PostgreSQL (Supabase)
--  Chạy file này trong Supabase → SQL Editor → New query → Run
-- =====================================================================

create extension if not exists pgcrypto;

-- ---------- Danh mục ----------
create table if not exists categories (
  id          text primary key,                 -- id danh mục Shopee hoặc slug tự đặt
  name        text not null,
  slug        text not null unique,
  sort_order  int  not null default 0,
  is_active   boolean not null default true,
  created_at  timestamptz not null default now()
);

-- ---------- Sản phẩm ----------
create table if not exists products (
  id            text primary key,               -- itemid Shopee
  name          text not null,
  slug          text not null unique,
  price         bigint not null,                -- VND
  price_max     bigint,
  price_before  bigint,                         -- giá gốc (gạch ngang)
  discount      int not null default 0,         -- %
  stock         int,                            -- null = không giới hạn
  sold          int not null default 0,
  rating        numeric(3,2) default 0,
  rating_count  int not null default 0,
  rating_dist   int[] default '{0,0,0,0,0}',    -- số lượt 1★..5★
  brand         text default '',
  description   text default '',
  attrs         jsonb default '[]',             -- [{n:'Tuổi', v:'6+'}]
  catpath       text[] default '{}',            -- ngành hàng Shopee
  shopee_url    text,
  is_active     boolean not null default true,
  created_at    timestamptz not null default now(),
  updated_at    timestamptz not null default now()
);

create table if not exists product_images (
  id          bigserial primary key,
  product_id  text not null references products(id) on delete cascade,
  url         text not null,
  sort_order  int not null default 0
);
create index if not exists product_images_pid on product_images(product_id);

-- Nhóm phân loại (VD: "Màu sắc") và các lựa chọn
create table if not exists product_variants (
  id          bigserial primary key,
  product_id  text not null references products(id) on delete cascade,
  name        text not null,                    -- "Màu sắc"
  options     text[] not null,                  -- {"Xanh","Đỏ"}
  images      text[] default '{}'               -- ảnh tương ứng từng option
);
-- Từng SKU cụ thể: giá, tồn kho theo lựa chọn
create table if not exists product_models (
  id          bigserial primary key,
  product_id  text not null references products(id) on delete cascade,
  name        text not null,                    -- "Xanh"
  price       bigint not null,
  stock       int,
  image       text default ''
);
create index if not exists product_models_pid on product_models(product_id);

create table if not exists product_categories (
  product_id   text references products(id) on delete cascade,
  category_id  text references categories(id) on delete cascade,
  primary key (product_id, category_id)
);

-- ---------- Đánh giá ----------
create table if not exists reviews (
  id          bigserial primary key,
  product_id  text not null references products(id) on delete cascade,
  user_name   text not null,
  star        int not null check (star between 1 and 5),
  comment     text default '',
  variant     text default '',
  images      text[] default '{}',
  shop_reply  text default '',
  source      text default 'shopee',            -- shopee | web
  is_approved boolean not null default true,
  created_at  timestamptz not null default now()
);
create index if not exists reviews_pid on reviews(product_id);

-- ---------- Khách hàng & Đơn hàng ----------
create table if not exists customers (
  id          bigserial primary key,
  phone       text not null unique,
  name        text not null,
  address     text,
  note        text,
  order_count int not null default 0,
  total_spent bigint not null default 0,
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now()
);

create table if not exists orders (
  id           bigserial primary key,
  code         text not null unique,
  customer_id  bigint references customers(id),
  name         text not null,
  phone        text not null,
  address      text not null,
  note         text default '',
  status       text not null default 'new' check (status in ('new','confirmed','shipping','done','cancelled')),
  payment      text not null default 'COD',
  subtotal     bigint not null,
  shipping     bigint not null,
  total        bigint not null,
  admin_note   text default '',
  created_at   timestamptz not null default now(),
  updated_at   timestamptz not null default now()
);
create index if not exists orders_phone on orders(phone);
create index if not exists orders_status on orders(status);

create table if not exists order_items (
  id          bigserial primary key,
  order_id    bigint not null references orders(id) on delete cascade,
  product_id  text references products(id),
  name        text not null,
  image       text,
  variant     text default '',
  price       bigint not null,
  qty         int not null check (qty > 0)
);

-- Cài đặt chung (phí ship, freeship, hotline…)
create table if not exists settings (
  key   text primary key,
  value jsonb not null
);
insert into settings(key, value) values
  ('shipping_fee', '25000'), ('freeship_from', '300000'),
  ('shop', '{"name":"M&Q HOME TECH","shopee":"https://shopee.vn/mqhometech","rating":4.9,"followers":12490,"location":"Quận Tân Phú, TP. Hồ Chí Minh","description":"Chuyên đồ chơi lắp ráp, mô hình, thẻ bài Pokémon Mezastar và đồ chơi giáo dục cho bé."}')
on conflict (key) do nothing;

-- updated_at tự động
create or replace function set_updated_at() returns trigger language plpgsql as $$
begin new.updated_at = now(); return new; end $$;
drop trigger if exists trg_products_updated on products;
create trigger trg_products_updated before update on products for each row execute function set_updated_at();
drop trigger if exists trg_orders_updated on orders;
create trigger trg_orders_updated before update on orders for each row execute function set_updated_at();

-- =====================================================================
--  API cho website (RPC) – trả về đúng cấu trúc JSON mà app.js đang dùng
-- =====================================================================

-- Toàn bộ catalog (danh mục + sản phẩm đang bán + đánh giá)
create or replace function get_catalog() returns json language sql stable security definer as $$
  select json_build_object(
    'shop', (select value from settings where key = 'shop'),
    'shipping', json_build_object('fee', (select value from settings where key='shipping_fee'), 'freeFrom', (select value from settings where key='freeship_from')),
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

-- Đặt hàng COD: tính lại giá ở phía DB, tạo/cập nhật khách hàng
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
  v_ship bigint; v_code text; v_oid bigint; v_cid bigint; lines json[] := '{}';
begin
  if length(v_name) < 2 then raise exception 'Vui lòng nhập họ tên'; end if;
  if v_phone !~ '^(0|\+84)\d{9}$' then raise exception 'Số điện thoại không hợp lệ'; end if;
  if length(v_addr) < 8 then raise exception 'Vui lòng nhập địa chỉ đầy đủ'; end if;
  if json_array_length(coalesce(payload->'items','[]'::json)) = 0 then raise exception 'Giỏ hàng trống'; end if;

  -- khách hàng
  insert into customers(phone, name, address, note) values (v_phone, v_name, v_addr, v_note)
    on conflict (phone) do update set name = excluded.name, address = excluded.address, updated_at = now()
    returning id into v_cid;

  v_code := 'MQ' || to_char(now() at time zone 'Asia/Ho_Chi_Minh', 'YYMMDD') || lpad((select count(*)+1 from orders where created_at::date = current_date)::text, 3, '0');
  insert into orders(code, customer_id, name, phone, address, note, subtotal, shipping, total)
    values (v_code, v_cid, v_name, v_phone, v_addr, v_note, 0, 0, 0) returning id into v_oid;

  for it in select * from json_array_elements(payload->'items') loop
    select * into p from products where id = it->>'id' and is_active;
    if not found then raise exception 'Sản phẩm không tồn tại: %', it->>'id'; end if;
    v_qty := greatest(1, least(99, coalesce((it->>'qty')::int, 1)));
    v_price := p.price; v_variant := '';
    if coalesce(it->>'model','') <> '' then
      select * into m from product_models where product_id = p.id and name = it->>'model' limit 1;
      if found then v_price := coalesce(nullif(m.price,0), p.price); v_variant := m.name;
        if m.stock is not null and m.stock < v_qty then raise exception 'Phân loại "%" của "%" không đủ hàng', m.name, p.name; end if;
        update product_models set stock = stock - v_qty where id = m.id and stock is not null;
      end if;
    end if;
    if p.stock is not null and p.stock < v_qty then raise exception 'Sản phẩm "%" không đủ hàng', p.name; end if;
    update products set stock = stock - v_qty, sold = sold + v_qty where id = p.id and stock is not null;
    update products set sold = sold + v_qty where id = p.id and stock is null;
    v_sub := v_sub + v_price * v_qty;
    insert into order_items(order_id, product_id, name, image, variant, price, qty)
      values (v_oid, p.id, p.name, (select url from product_images where product_id = p.id order by sort_order limit 1), v_variant, v_price, v_qty);
  end loop;

  v_ship := case when v_sub >= v_free then 0 else v_fee end;
  update orders set subtotal = v_sub, shipping = v_ship, total = v_sub + v_ship where id = v_oid;
  update customers set order_count = order_count + 1, total_spent = total_spent + v_sub + v_ship where id = v_cid;
  return get_order(v_code, v_phone);
end $$;

-- Tra cứu đơn theo mã + SĐT
create or replace function get_order(p_code text, p_phone text) returns json language sql stable security definer as $$
  select json_build_object('code', o.code, 'createdAt', o.created_at, 'status', o.status, 'payment', o.payment,
    'customer', json_build_object('name', o.name, 'phone', o.phone, 'address', o.address, 'note', o.note),
    'items', (select coalesce(json_agg(json_build_object('id', product_id, 'name', name, 'image', image, 'variant', variant, 'price', price, 'qty', qty)), '[]') from order_items where order_id = o.id),
    'subtotal', o.subtotal, 'shipping', o.shipping, 'total', o.total)
  from orders o where upper(o.code) = upper(p_code) and o.phone = regexp_replace(p_phone, '\s', '', 'g') limit 1;
$$;

-- Khách gửi đánh giá từ website (chờ duyệt)
create or replace function submit_review(p_product_id text, p_name text, p_star int, p_comment text) returns json language plpgsql security definer as $$
begin
  if p_star not between 1 and 5 then raise exception 'Số sao không hợp lệ'; end if;
  insert into reviews(product_id, user_name, star, comment, source, is_approved) values (p_product_id, left(trim(p_name), 60), p_star, left(trim(p_comment), 1000), 'web', false);
  return json_build_object('ok', true);
end $$;

-- =====================================================================
--  Bảo mật (Row Level Security)
--  - Người dùng ẩn danh (website): chỉ gọi được các hàm RPC ở trên
--  - Người dùng đã đăng nhập (admin – tạo trong Authentication > Users): toàn quyền
-- =====================================================================
alter table categories enable row level security;
alter table products enable row level security;
alter table product_images enable row level security;
alter table product_variants enable row level security;
alter table product_models enable row level security;
alter table product_categories enable row level security;
alter table reviews enable row level security;
alter table customers enable row level security;
alter table orders enable row level security;
alter table order_items enable row level security;
alter table settings enable row level security;

do $$ declare t text; begin
  foreach t in array array['categories','products','product_images','product_variants','product_models','product_categories','reviews','customers','orders','order_items','settings'] loop
    execute format('drop policy if exists admin_all on %I', t);
    execute format('create policy admin_all on %I for all to authenticated using (true) with check (true)', t);
  end loop;
end $$;

revoke all on all tables in schema public from anon;
grant execute on function get_catalog() to anon, authenticated;
grant execute on function place_order(json) to anon, authenticated;
grant execute on function get_order(text, text) to anon, authenticated;
grant execute on function submit_review(text, text, int, text) to anon, authenticated;

-- Thống kê nhanh cho trang admin
create or replace view v_dashboard as
  select (select count(*) from orders) as total_orders,
         (select count(*) from orders where status = 'new') as new_orders,
         (select coalesce(sum(total),0) from orders where status <> 'cancelled') as revenue,
         (select count(*) from customers) as customers,
         (select count(*) from products where is_active) as active_products,
         (select count(*) from reviews where not is_approved) as pending_reviews;
grant select on v_dashboard to authenticated;
