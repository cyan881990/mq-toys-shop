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
    maxPages: 12
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
      log(`✅ Xong: đọc <b>${res.found}</b> · cập nhật <b>${res.updated}</b> · mất link <b>${res.missing}</b>`, '#12a150');
      (res.changes || []).slice(0, 12).forEach(c => {
        const bits = [];
        if (c.gia_moi) bits.push(`giá ${(c.gia_cu || 0).toLocaleString('vi-VN')}₫ → <b>${c.gia_moi.toLocaleString('vi-VN')}₫</b>`);
        if (c.ton_moi !== undefined) bits.push(`tồn ${c.ton_cu === null ? '∞' : c.ton_cu} → ${c.ton_moi}`);
        if (c.doi_ten) bits.push('đổi tên');
        if (c.doi_anh) bits.push('đổi ảnh');
        log(`• ${c.ten}…<br><span style="color:#6F6577">${bits.join(' · ')}</span>`);
      });
      if (res.missing) log('👉 Vào Admin → Đồng bộ Shopee để gán lại link cho sản phẩm mất.', '#b8860b');
      return res;
    } catch (e) {
      log('❌ ' + e.message, '#c0392b');
      throw e;
    }
  }

  window.MQSync = { run, CFG, version: 1 };
  console.log('%c[MQSync] Sẵn sàng – chạy: MQSync.run("KHOA_DONG_BO")', 'color:#ED1C8E;font-weight:bold');
})();
