-- =====================================================================
--  M&Q Toys – Video sản phẩm lấy từ Shopee
--  Chạy SAU 05_review_sync.sql (chạy lại nhiều lần vẫn an toàn)
-- =====================================================================

alter table products add column if not exists video_url      text;
alter table products add column if not exists video_thumb    text;
alter table products add column if not exists video_duration int;
alter table products add column if not exists video_checked_at timestamptz;

-- Sản phẩm cần đồng bộ: thêm cờ đã kiểm tra video hay chưa
create or replace function sync_targets() returns json language sql stable security definer as $$
  select coalesce(json_agg(json_build_object(
      'id', p.id, 'item_id', coalesce(p.shopee_item_id, p.id), 'name', left(p.name, 70),
      'status', p.shopee_status,
      'reviews', (select count(*) from reviews r where r.product_id = p.id and r.source = 'shopee'),
      'has_video', (p.video_url is not null),
      'video_checked', (p.video_checked_at is not null))), '[]')
  from products p where p.is_active;
$$;
grant execute on function sync_targets() to anon, authenticated;

-- =====================================================================
--  RPC: nhận video sản phẩm từ script đồng bộ
--  p_videos: [{ "item_id":"123", "url":"https://cvf.shopee.vn/file/vn-...",
--               "thumb":"https://down-vn.img.susercontent.com/file/..._cover", "duration":60 }]
--  Sản phẩm không có video vẫn gửi lên với url = null để đánh dấu đã kiểm tra.
-- =====================================================================
create or replace function sync_videos(p_secret text, p_videos json)
returns json language plpgsql security definer as $$
declare v json; n_set int := 0; n_none int := 0; v_pid text;
begin
  if p_secret is null or p_secret <> (select value #>> '{}' from settings where key = 'sync_secret') then
    raise exception 'Khóa đồng bộ không hợp lệ';
  end if;

  for v in select * from json_array_elements(coalesce(p_videos, '[]'::json)) loop
    select id into v_pid from products where shopee_item_id = v->>'item_id' or id = v->>'item_id' limit 1;
    if v_pid is null then continue; end if;
    if nullif(v->>'url','') is not null then
      update products set video_url = v->>'url', video_thumb = nullif(v->>'thumb',''),
             video_duration = nullif(v->>'duration','')::int, video_checked_at = now()
        where id = v_pid;
      n_set := n_set + 1;
    else
      update products set video_url = null, video_thumb = null, video_duration = null, video_checked_at = now()
        where id = v_pid;
      n_none := n_none + 1;
    end if;
  end loop;

  insert into sync_log(source, found, updated, missing, detail, message)
    values ('videos', n_set + n_none, n_set, 0, '[]', 'Đồng bộ video: ' || n_set || ' có video, ' || n_none || ' không có');
  return json_build_object('ok', true, 'with_video', n_set, 'without', n_none);
end $$;
revoke all on function sync_videos(text, json) from public;
grant execute on function sync_videos(text, json) to anon, authenticated;

-- Admin có thể dán link video thủ công (YouTube/mp4 bất kỳ)
create or replace function set_product_video(p_product_id text, p_url text, p_thumb text default null)
returns json language plpgsql security definer as $$
begin
  update products set video_url = nullif(trim(p_url), ''), video_thumb = nullif(trim(coalesce(p_thumb,'')), ''),
         video_checked_at = now() where id = p_product_id;
  return json_build_object('ok', true);
end $$;
grant execute on function set_product_video(text, text, text) to authenticated;

-- =====================================================================
--  Catalog: thêm video vào dữ liệu website
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
        'video', case when p.video_url is null then null else json_build_object('url', p.video_url, 'thumb', p.video_thumb, 'duration', p.video_duration) end,
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

create or replace view v_video_status as
  select count(*) filter (where video_url is not null)   as with_video,
         count(*) filter (where video_checked_at is not null and video_url is null) as no_video,
         count(*) filter (where video_checked_at is null) as not_checked
  from products where is_active;
grant select on v_video_status to authenticated;
