/* =====================================================================
 *  M&Q Toys – Script đồng bộ sản phẩm từ Shopee về website
 *  Chạy TRONG trang shopee.vn (bookmarklet hoặc userscript) khi đã đăng nhập.
 *  Cách dùng:  MQSync.run('<KHOA_DONG_BO>')
 * ===================================================================== */
(function () {
  const CFG = {
    supabaseUrl: 'https://zfbvlbcwwtseyilawlpr.supabase.co',
    supabaseKey: 'sb_publishable_5bs3F1RBCKdEkuQt1czLNA_33C6w5-F',
    shopId: 67689883,
    pageSize: 30,
    delay: 1800,      // nghỉ giữa các lần gọi Shopee (ms) – tránh bị chặn
    maxPages: 12,
    reviewLimit: 20,  // số sản phẩm lấy review mỗi lần chạy
    reviewPerItem: 30,// số đánh giá mới nhất lấy cho mỗi sản phẩm
    videoLimit: 25    // số sản phẩm dò video mỗi lần chạy
  };
  const sleep = ms => new Promise(r => setTimeout(r, ms));
  const H = { 'x-api-source': 'pc', 'x-requested-with': 'XMLHttpRequest' };

  /* ---------- Bảng tiến trình nổi trên trang Shopee ---------- */
  function ui() {
    let el = document.getElementById('mq-sync-ui');
    if (el) return el;
    el = document.createElement('div');
    el.id = 'mq-sync-ui';
    el.style.cssText = 'position:fixed;right:18px;bottom:18px;z-index:2147483647;width:330px;background:#fff;border-radius:14px;box-shadow:0 10px 40px rgba(0,0,0,.25);font:14px/1.45 system-ui,Arial,sans-serif;color:#1C1420;overflow:hidden';
    el.innerHTML = '<div style="background:linear-gradient(135deg,#ED1C8E,#8E1DB0);color:#fff;padding:11px 14px;font-weight:700;display:flex;align-items:center;gap:8px">' +
      '<span>🔄 Đồng bộ M&amp;Q Toys</span><button id="mq-sync-x" style="margin-left:auto;background:rgba(255,255,255,.25);border:0;color:#fff;width:24px;height:24px;border-radius:50%;cursor:pointer">✕</button></div>' +
      '<div id="mq-sync-body" style="padding:13px 14px;max-height:340px;overflow:auto"></div>';
    document.body.appendChild(el);
    el.querySelector('#mq-sync-x').onclick = () => el.remove();
    return el;
  }
  const log = (msg, color) => {
    const b = ui().querySelector('#mq-sync-body');
    const p = document.createElement('div');
    p.style.cssText = 'margin:3px 0' + (color ? ';color:' + color : '');
    p.innerHTML = msg;
    b.appendChild(p); b.scrollTop = b.scrollHeight;
    console.log('[MQSync]', msg.replace(/<[^>]+>/g, ''));
  };

  async function rpc(fn, args) {
    const r = await fetch(CFG.supabaseUrl + '/rest/v1/rpc/' + fn, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json', apikey: CFG.supabaseKey, Authorization: 'Bearer ' + CFG.supabaseKey },
      body: JSON.stringify(args || {})
    });
    const j = await r.json().catch(() => ({}));
    if (!r.ok) throw new Error(j.message || j.error || ('Supabase lỗi ' + r.status));
    return j;
  }

  /* ---------- Đọc danh sách sản phẩm đang bán trên Shopee ---------- */
  async function fetchShopItems() {
    const out = {};
    for (let off = 0; off < CFG.pageSize * CFG.maxPages; off += CFG.pageSize) {
      const url = `/api/v4/shop/rcmd_items?bundle=shop_page_category_tab_main&limit=${CFG.pageSize}&offset=${off}&shop_id=${CFG.shopId}&sort_type=1&tab_name=popular&upstream=pdp`;
      const j = await fetch(url, { headers: H }).then(r => r.json()).catch(() => null);
      if (!j || j.error) throw new Error('Shopee chặn yêu cầu (mã ' + (j && j.error) + '). Hãy mở lại shopee.vn, đăng nhập rồi thử lại.');
      const items = (j.data && j.data.items) || [];
      for (const it of items) {
        out[String(it.itemid)] = {
          item_id: String(it.itemid),
          name: it.name,
          price: Math.round(it.price_min / 100000),
          price_before: it.price_min_before_discount ? Math.round(it.price_min_before_discount / 100000) : null,
          discount: it.raw_discount || null,
          stock: typeof it.stock === 'number' ? it.stock : null,
          sold: it.historical_sold || 0,
          rating: it.item_rating && it.item_rating.rating_star ? Math.round(it.item_rating.rating_star * 100) / 100 : null,
          rating_count: it.cmt_count || 0,
          images: (it.images || []).slice(0, 6).map(x => 'https://down-vn.img.susercontent.com/file/' + x)
        };
      }
      log(`Đã đọc ${Object.keys(out).length} sản phẩm từ Shopee…`);
      if (!items.length || (j.data && j.data.no_more)) break;
      await sleep(CFG.delay);
    }
    return out;
  }

  /* ---------- Kiểm tra từng sản phẩm nghi đã bị xoá ---------- */
  async function verifyMissing(ids) {
    const gone = [];
    for (const id of ids) {
      const j = await fetch(`/api/v4/pdp/get_pc?item_id=${id}&shop_id=${CFG.shopId}`, { headers: H }).then(r => r.json()).catch(() => null);
      const item = j && j.data && j.data.item;
      const alive = item && item.status === 1 && !item.is_deleted;
      if (!alive) { gone.push(id); log(`⚠️ Không còn trên Shopee: <b>${id}</b>`, '#c0392b'); }
      await sleep(CFG.delay);
    }
    return gone;
  }

  /* ---------- Lấy đánh giá mới của khách trên Shopee ---------- */
  async function fetchReviews(list) {
    const out = [];
    for (const t of list) {
      const url = `/api/v2/item/get_ratings?itemid=${t.item_id}&shopid=${CFG.shopId}&limit=${CFG.reviewPerItem}&offset=0&type=0&filter=0&flag=1&filter_size=0`;
      const j = await fetch(url, { headers: H }).then(r => r.json()).catch(() => null);
      const rs = (j && j.data && j.data.ratings) || [];
      for (const r of rs) {
        if (!r.comment && !(r.images || []).length) continue;   // bỏ đánh giá trống
        out.push({
          item_id: t.item_id,
          cmt_id: String(r.cmtid),
          user: r.author_username || '',
          star: r.rating_star,
          comment: r.comment || '',
          variant: (r.product_items || []).map(p => p.model_name).filter(Boolean).join(', '),
          images: (r.images || []).map(x => 'https://down-vn.img.susercontent.com/file/' + x),
          reply: (r.ItemRatingReply && r.ItemRatingReply.comment) || '',
          time: r.ctime
        });
      }
      log(`💬 ${t.name}… <b>${rs.length}</b> đánh giá`);
      await sleep(CFG.delay);
    }
    return out;
  }

  /* ---------- Lấy video sản phẩm trên Shopee ---------- */
  async function fetchVideos(list) {
    const out = [];
    for (const t of list) {
      const j = await fetch(`/api/v4/pdp/get_pc?item_id=${t.item_id}&shop_id=${CFG.shopId}`, { headers: H }).then(r => r.json()).catch(() => null);
      const v = j && j.data && j.data.product_images && j.data.product_images.video;
      if (v && v.vid) {
        out.push({
          item_id: t.item_id,
          url: 'https://cvf.shopee.vn/file/' + v.vid,
          thumb: v.thumb_url ? 'https://down-vn.img.susercontent.com/file/' + v.thumb_url : '',
          duration: v.duration || null
        });
        log(`🎬 ${t.name}… <b>có video</b>`, '#12a150');
      } else {
        out.push({ item_id: t.item_id, url: null });   // đánh dấu đã kiểm tra
      }
      await sleep(CFG.delay);
    }
    return out;
  }

  async function run(secret, opts) {
    opts = opts || {};
    ui().querySelector('#mq-sync-body').innerHTML = '';
    if (!secret) { log('❌ Thiếu khóa đồng bộ. Lấy trong Admin → Đồng bộ Shopee.', '#c0392b'); return; }
    if (!/(^|\.)shopee\.vn$/.test(location.hostname)) { log('❌ Hãy mở <b>shopee.vn</b> rồi chạy lại script này.', '#c0392b'); return; }
    try {
      log('Đang lấy danh sách sản phẩm của website…');
      const targets = await rpc('sync_targets');
      log(`Website có <b>${targets.length}</b> sản phẩm đang bán.`);

      const shop = await fetchShopItems();
      const found = Object.keys(shop).length;
      if (!found) throw new Error('Không đọc được sản phẩm nào từ Shopee.');

      const notFound = targets.filter(t => !shop[t.item_id] && t.status !== 'manual').map(t => t.item_id);
      let missing = [];
      if (notFound.length) {
        if (notFound.length > targets.length * 0.5) {
          log(`⚠️ Có ${notFound.length}/${targets.length} sản phẩm không thấy trong danh sách – có thể Shopee trả thiếu dữ liệu. Bỏ qua bước đánh dấu để an toàn.`, '#b8860b');
        } else {
          log(`Đang kiểm tra ${notFound.length} sản phẩm nghi đã bị xoá…`);
          missing = await verifyMissing(notFound);
        }
      }

      log('Đang cập nhật vào website…');
      const res = await rpc('sync_from_shopee', { p_secret: secret, p_items: Object.values(shop), p_missing: missing });
      log(`✅ Sản phẩm: đọc <b>${res.found}</b> · cập nhật <b>${res.updated}</b> · mất link <b>${res.missing}</b>`, '#12a150');
      (res.changes || []).slice(0, 12).forEach(c => {
        const bits = [];
        if (c.gia_moi) bits.push(`giá ${(c.gia_cu || 0).toLocaleString('vi-VN')}₫ → <b>${c.gia_moi.toLocaleString('vi-VN')}₫</b>`);
        if (c.ton_moi !== undefined) bits.push(`tồn ${c.ton_cu === null ? '∞' : c.ton_cu} → ${c.ton_moi}`);
        if (c.doi_ten) bits.push('đổi tên');
        if (c.doi_anh) bits.push('đổi ảnh');
        log(`• ${c.ten}…<br><span style="color:#6F6577">${bits.join(' · ')}</span>`);
      });
      if (res.missing) log('👉 Vào Admin → Đồng bộ Shopee để gán lại link cho sản phẩm mất.', '#b8860b');

      /* ----- Đồng bộ đánh giá: chỉ lấy sản phẩm có đánh giá mới ----- */
      if (opts.skipReviews !== true) {
        const need = targets
          .filter(t => shop[t.item_id] && (shop[t.item_id].rating_count || 0) > (t.reviews || 0))
          .sort((a, b) => ((shop[b.item_id].rating_count || 0) - (b.reviews || 0)) - ((shop[a.item_id].rating_count || 0) - (a.reviews || 0)))
          .slice(0, CFG.reviewLimit);
        if (!need.length) { log('💬 Không có đánh giá mới.'); }
        else {
          log(`💬 Đang lấy đánh giá mới của <b>${need.length}</b> sản phẩm…`);
          const reviews = await fetchReviews(need);
          if (reviews.length) {
            const rv = await rpc('sync_reviews', { p_secret: secret, p_reviews: reviews });
            log(`✅ Đánh giá: thêm mới <b>${rv.new}</b> · cập nhật <b>${rv.updated}</b>`, '#12a150');
            res.reviews = rv;
          } else log('💬 Không có đánh giá nào có nội dung.');
        }
      }
      /* ----- Đồng bộ video: ưu tiên sản phẩm chưa kiểm tra bao giờ ----- */
      if (opts.skipVideos !== true) {
        const needV = targets
          .filter(t => shop[t.item_id])
          .sort((a, b) => (a.video_checked ? 1 : 0) - (b.video_checked ? 1 : 0))
          .slice(0, CFG.videoLimit);
        if (!needV.length) log('🎬 Không có sản phẩm nào cần dò video.');
        else {
          log(`🎬 Đang dò video của <b>${needV.length}</b> sản phẩm…`);
          const vids = await fetchVideos(needV);
          const vr = await rpc('sync_videos', { p_secret: secret, p_videos: vids });
          log(`✅ Video: có <b>${vr.with_video}</b> · không có <b>${vr.without}</b>`, '#12a150');
          res.videos = vr;
        }
      }

      log('🎉 Hoàn tất đồng bộ!', '#12a150');
      return res;
    } catch (e) {
      log('❌ ' + e.message, '#c0392b');
      throw e;
    }
  }

  window.MQSync = { run, CFG, version: 2 };
  console.log('%c[MQSync] Sẵn sàng – chạy: MQSync.run("KHOA_DONG_BO")', 'color:#ED1C8E;font-weight:bold');
})();
