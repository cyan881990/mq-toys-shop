-- =====================================================================
--  M&Q Toys – Đồng bộ đánh giá (review) từ Shopee + thông tin liên hệ
--  Chạy SAU 04_vouchers_stock.sql (chạy lại nhiều lần vẫn an toàn)
-- =====================================================================

-- ---------- Chống trùng đánh giá khi đồng bộ nhiều lần ----------
alter table reviews add column if not exists shopee_cmt_id text;
alter table reviews add column if not exists rated_at      timestamptz;
create unique index if not exists reviews_cmt_uniq on reviews(shopee_cmt_id) where shopee_cmt_id is not null;

-- ---------- Số điện thoại Zalo / hotline ----------
update settings
set value = value || jsonb_build_object('zalo', '0332572909', 'hotline', '0332572909')
where key = 'shop';

-- =====================================================================
--  Sản phẩm cần đồng bộ, kèm số đánh giá hiện có (để biết SP nào có review mới)
-- =====================================================================
create or replace function sync_targets() returns json language sql stable security definer as $$
  select coalesce(json_agg(json_build_object(
      'id', p.id, 'item_id', coalesce(p.shopee_item_id, p.id), 'name', left(p.name, 70),
      'status', p.shopee_status,
      'reviews', (select count(*) from reviews r where r.product_id = p.id and r.source = 'shopee'))), '[]')
  from products p where p.is_active;
$$;
grant execute on function sync_targets() to anon, authenticated;

-- =====================================================================
--  RPC: nhận đánh giá Shopee từ script
--  p_reviews: [{ "item_id":"123", "cmt_id":"999", "user":"a*****z", "star":5,
--                "comment":"...", "variant":"Xanh", "images":[url...],
--                "reply":"Cảm ơn bạn", "time":1787304610 }]
-- =====================================================================
create or replace function sync_reviews(p_secret text, p_reviews json)
returns json language plpgsql security definer as $$
declare
  r json; v_pid text; n_new int := 0; n_upd int := 0; n_seen int := 0; v_ids text[] := '{}'; v_ins boolean;
begin
  if p_secret is null or p_secret <> (select value #>> '{}' from settings where key = 'sync_secret') then
    raise exception 'Khóa đồng bộ không hợp lệ';
  end if;

  for r in select * from json_array_elements(coalesce(p_reviews, '[]'::json)) loop
    n_seen := n_seen + 1;
    select id into v_pid from products where shopee_item_id = r->>'item_id' or id = r->>'item_id' limit 1;
    if v_pid is null then continue; end if;
    v_ids := v_ids || v_pid;

    insert into reviews(product_id, user_name, star, comment, variant, images, shop_reply,
                        source, is_approved, shopee_cmt_id, rated_at, created_at)
    values (v_pid,
            coalesce(nullif(r->>'user',''), 'Khách Shopee'),
            greatest(1, least(5, coalesce((r->>'star')::int, 5))),
            coalesce(r->>'comment',''),
            coalesce(r->>'variant',''),
            array(select json_array_elements_text(coalesce(r->'images','[]'::json))),
            coalesce(r->>'reply',''),
            'shopee', true, r->>'cmt_id',
            to_timestamp(coalesce(nullif(r->>'time','')::bigint, 0)),
            to_timestamp(coalesce(nullif(r->>'time','')::bigint, extract(epoch from now())::bigint)))
    on conflict (shopee_cmt_id) where shopee_cmt_id is not null do update
      set comment = excluded.comment, star = excluded.star, images = excluded.images,
          shop_reply = excluded.shop_reply, variant = excluded.variant
    returning (xmax = 0) into v_ins;
    if v_ins then n_new := n_new + 1; else n_upd := n_upd + 1; end if;
  end loop;

  -- cập nhật lại điểm trung bình & số lượt cho các sản phẩm vừa nhận review
  update products p set
    rating = coalesce((select round(avg(star)::numeric, 2) from reviews r where r.product_id = p.id and r.is_approved), p.rating),
    rating_count = greatest(p.rating_count, (select count(*) from reviews r where r.product_id = p.id and r.is_approved)),
    rating_dist = coalesce((select array[
        count(*) filter (where star = 1), count(*) filter (where star = 2), count(*) filter (where star = 3),
        count(*) filter (where star = 4), count(*) filter (where star = 5)]::int[]
      from reviews r where r.product_id = p.id and r.is_approved), p.rating_dist)
  where p.id = any(v_ids);

  insert into sync_log(source, found, updated, missing, detail, message)
    values ('reviews', n_seen, n_new, 0, '[]', 'Đồng bộ đánh giá: ' || n_new || ' mới, ' || n_upd || ' cập nhật');
  return json_build_object('ok', true, 'seen', n_seen, 'new', n_new, 'updated', n_upd);
end $$;
revoke all on function sync_reviews(text, json) from public;
grant execute on function sync_reviews(text, json) to anon, authenticated;

-- Thống kê đánh giá cho admin
create or replace view v_review_status as
  select count(*) filter (where source = 'shopee')            as shopee,
         count(*) filter (where source = 'web')               as website,
         count(*) filter (where not is_approved)              as pending,
         count(*) filter (where array_length(images,1) > 0)   as with_images,
         max(created_at)                                      as newest
  from reviews;
grant select on v_review_status to authenticated;
