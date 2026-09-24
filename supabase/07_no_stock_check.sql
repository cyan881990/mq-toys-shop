-- =====================================================================
--  M&Q Toys – Bỏ kiểm tra tồn kho khi khách đặt hàng
--  Cửa hàng bán theo đơn: luôn nhận đơn, không khoá theo số tồn.
--  Tồn kho từ Shopee vẫn được đồng bộ để admin tham khảo trong trang
--  Sản phẩm, nhưng KHÔNG chặn khách mua và KHÔNG bị trừ khi có đơn.
--  Chạy SAU 06_product_video.sql (chạy lại nhiều lần vẫn an toàn)
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
      end if;
    end if;
    -- Không kiểm tra và không trừ tồn kho
    update products set sold = sold + v_qty where id = p.id;
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

-- Website không dùng tồn kho nữa: trả về null (không giới hạn) cho mọi sản phẩm
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
