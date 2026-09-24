/* M&Q Toys – ứng dụng một trang (hash router), giỏ hàng lưu localStorage, đặt hàng COD qua /api/orders */
(() => {
  const $ = (s, el = document) => el.querySelector(s);
  const app = $('#app');
  const state = { db: null, cart: loadCart(), voucher: null };
  const fmt = n => (n || 0).toLocaleString('vi-VN') + '₫';
  // ----- Điều hướng URL sạch (không còn #/) -----
  const go = (url, replace) => {
    if (replace) history.replaceState({}, '', url); else history.pushState({}, '', url);
    route(); window.scrollTo(0, 0);
  };
  const esc = s => String(s ?? '').replace(/[&<>"']/g, c => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c]));
  let FREESHIP = 300000, SHIP = 25000;
  const CFG = window.MQ_CONFIG || {};
  const SB = CFG.supabaseUrl ? { url: CFG.supabaseUrl.replace(/\/$/, ''), key: CFG.supabaseAnonKey } : null;
  async function rpc(fn, args) {
    const r = await fetch(`${SB.url}/rest/v1/rpc/${fn}`, { method: 'POST', headers: { 'Content-Type': 'application/json', apikey: SB.key, Authorization: 'Bearer ' + SB.key }, body: JSON.stringify(args || {}) });
    const j = await r.json().catch(() => ({}));
    if (!r.ok) throw new Error(j.message || j.error || 'Lỗi máy chủ'); // Postgres RAISE → message
    return j;
  }

  // ---------- Giỏ hàng ----------
  function loadCart() { try { return JSON.parse(localStorage.getItem('mq_cart') || '[]'); } catch { return []; } }
  function saveCart() { localStorage.setItem('mq_cart', JSON.stringify(state.cart)); renderCartCount(); }
  function renderCartCount() { $('#cartCount').textContent = state.cart.reduce((a, i) => a + i.qty, 0); }
  function addToCart(id, qty = 1, model = '') {
    const p = byId(id); if (!p) return;
    const key = id + '|' + model;
    const found = state.cart.find(i => i.key === key);
    if (found) found.qty = Math.min(99, found.qty + qty);
    else state.cart.push({ key, id, model, qty });
    saveCart();
    toast(`Đã thêm vào giỏ: ${p.name.slice(0, 50)}…`);
  }
  function cartLines() {
    return state.cart.map(i => {
      const p = byId(i.id); if (!p) return null;
      const m = p.models.find(m => m.name === i.model);
      return { ...i, p, price: (m && m.price) || p.price, image: (m && m.image) || variantImage(p, i.model) || p.images[0] };
    }).filter(Boolean);
  }
  function totals(lines) {
    const subtotal = lines.reduce((a, l) => a + l.price * l.qty, 0);
    const shipping = subtotal === 0 ? 0 : subtotal >= FREESHIP ? 0 : SHIP;
    const v = state.voucher;
    let discount = 0;
    if (v && subtotal >= (v.min_order || 0)) {
      discount = v.kind === 'percent' ? Math.floor(subtotal * v.value / 100) : Math.min(v.value, subtotal);
      if (v.kind === 'percent' && v.max_discount) discount = Math.min(discount, v.max_discount);
    }
    return { subtotal, discount, shipping, total: subtotal - discount + shipping };
  }
  const defaultVoucher = () => (state.db.vouchers || []).find(v => v.is_default) || null;
  const voucherLabel = v => v.kind === 'percent' ? `giảm ${v.value}%${v.max_discount ? ' tối đa ' + fmt(v.max_discount) : ''}` : `giảm ${fmt(v.value)}`;
  function variantImage(p, model) {
    if (!model || !p.variants.length) return '';
    const v = p.variants[0]; const idx = v.options.indexOf(model.split(',')[0]);
    return idx >= 0 ? (v.images[idx] || '') : '';
  }

  // ---------- Dữ liệu ----------
  const byId = id => state.db.products.find(p => p.id === String(id));
  const catById = id => state.db.categories.find(c => c.id === String(id) || c.slug === id);
  const productsOf = c => c.items.map(byId).filter(Boolean);

  async function loadData() {
    if (SB) {
      state.db = await rpc('get_catalog');
      if (state.db.shipping) { SHIP = +state.db.shipping.fee || SHIP; FREESHIP = +state.db.shipping.freeFrom || FREESHIP; }
    } else {
      const r = await fetch('/api/products', { headers: { Accept: 'application/json' } }).catch(() => null);
      const ok = r && r.ok && (r.headers.get('content-type') || '').includes('json');
      state.db = ok ? await r.json() : await (await fetch('/data/products.json')).json();
    }
    // Danh mục hiển thị: bỏ danh mục trống
    state.cats = state.db.categories.filter(c => c.items.length);
    $('#catbar').innerHTML = `<a href="/">Trang chủ</a>` + state.cats.map(c => `<a href="/danh-muc/${c.slug}" data-cat="${c.slug}">${esc(c.name)}</a>`).join('');
    $('#footerDesc').textContent = state.db.shop.description;
    $('#footerLoc').textContent = state.db.shop.location;
    $('#shopeeLink').href = state.db.shop.shopee;
    const sl2 = $('#shopeeLink2'); if (sl2) sl2.href = state.db.shop.shopee;
    const zalo = state.db.shop.zalo; 
    if (zalo) { const zb = $('#zaloBtn'); if (zb) { zb.href = 'https://zalo.me/' + zalo.replace(/\D/g, ''); } }
    $('#year').textContent = new Date().getFullYear();
    state.db.vouchers = state.db.vouchers || [];
    if (!state.voucher) state.voucher = defaultVoucher();
    renderCartCount();
  }

  // ---------- Thành phần ----------
  const stars = r => { const n = Math.round(r || 0); return `<span class="stars" title="${r}">${'★'.repeat(n)}${'☆'.repeat(5 - n)}</span>`; };
  const soldOut = p => p.stock !== null && p.stock !== undefined && p.stock <= 0;
  const lowStock = p => p.stock !== null && p.stock !== undefined && p.stock > 0 && p.stock <= 5;
  function card(p) {
    return `<article class="card${soldOut(p) ? ' card--out' : ''}">
      ${soldOut(p) ? '<span class="soldout">HẾT HÀNG</span>' : ''}
      ${p.video ? '<span class="has-video" title="Có video sản phẩm">▶ Video</span>' : ''}
      ${p.discount ? `<span class="discount">-${p.discount}%</span>` : ''}
      <a href="/san-pham/${p.slug}"><img class="card__img" src="${p.images[0]}" alt="${esc(p.name)}" loading="lazy"></a>
      <div class="card__body">
        <a class="card__name" href="/san-pham/${p.slug}">${esc(p.name)}</a>
        <div class="card__price"><span class="price">${fmt(p.price)}</span>${p.priceBefore ? `<span class="price--old">${fmt(p.priceBefore)}</span>` : ''}</div>
        <div class="card__meta"><span>${p.rating ? stars(p.rating) + ' ' + Number(p.rating).toFixed(1) : ''}</span><span>Đã bán ${p.sold}</span></div>
        <button class="card__add" data-add="${p.id}" ${soldOut(p) ? 'disabled' : ''}>${soldOut(p) ? 'Hết hàng' : (p.models.length ? 'Chọn phân loại' : '+ Thêm vào giỏ')}</button>
      </div></article>`;
  }
  function voucherBanner() {
    const vs = (state.db.vouchers || []).slice(0, 3);
    if (!vs.length) return '';
    return `<div class="vbanner">${vs.map(v => `<div class="vbanner__item"><div class="vbanner__tag">${v.kind === 'percent' ? '-' + v.value + '%' : 'SALE'}</div>
      <div><b>${esc(v.title)}</b><div class="vbanner__sub">Mã <code>${esc(v.code)}</code>${v.min_order ? ' · đơn từ ' + fmt(v.min_order) : ''}${v.is_default ? ' · tự động áp dụng khi thanh toán' : ''}</div></div>
      <button class="vbanner__copy" data-vcode="${esc(v.code)}">Sao chép</button></div>`).join('')}</div>`;
  }
  const crumb = parts => `<nav class="crumb">${['<a href="/">Trang chủ</a>', ...parts].join(' › ')}</nav>`;

  // ---------- Trang ----------
  function pageHome() {
    const db = state.db, all = db.products;
    const best = [...all].sort((a, b) => b.sold - a.sold).slice(0, 10);
    const newest = productsOf(catById('271399347') || { items: [] }).slice(0, 10);
    const sale = productsOf(catById('271083241') || { items: [] });
    const catImg = c => (productsOf(c)[0] || {}).images?.[0] || '';
    app.innerHTML = `<div class="shop-layout">${sidebar('', '', 0, 0)}<section>
      <section class="hero">
        <div class="hero__main">
          <h1>Đồ chơi lắp ráp, mô hình &amp; thẻ bài<br>cho bé thỏa sức sáng tạo 🎉</h1>
          <p>${esc(db.shop.name)} – hơn ${all.length} sản phẩm chọn lọc từ gian hàng Shopee 4.9★. Giao hàng toàn quốc, <b>thanh toán khi nhận hàng (COD)</b>, kiểm tra hàng trước khi thanh toán.</p>
          <div><a class="btn btn--lg" href="/danh-muc/${state.cats[0]?.slug || ''}">Mua sắm ngay</a></div>
        </div>
        <div class="hero__side">
          <div class="hero__stat"><span class="ic">⭐</span><div><b>${db.shop.rating}/5</b><span>Đánh giá trên Shopee</span></div></div>
          <div class="hero__stat"><span class="ic">👥</span><div><b>${db.shop.followers.toLocaleString('vi-VN')}</b><span>Người theo dõi</span></div></div>
          <div class="hero__stat"><span class="ic">💵</span><div><b>COD</b><span>Thanh toán khi nhận hàng</span></div></div>
        </div>
      </section>
      ${voucherBanner()}
      <section class="section"><div class="section__head"><h2>Danh mục sản phẩm</h2></div>
        <div class="cat-grid">${state.cats.map(c => `<a class="cat-card" href="/danh-muc/${c.slug}"><img class="cat-card__img" src="${catImg(c)}" alt="" loading="lazy"><div class="cat-card__name">${esc(c.name)}</div><div class="cat-card__count">${c.items.length} sản phẩm</div></a>`).join('')}</div></section>
      ${sale.length ? `<section class="section"><div class="section__head"><h2>🔥 Thanh lý siêu giảm giá</h2><a href="/danh-muc/${catById('271083241').slug}">Xem tất cả ›</a></div><div class="grid">${sale.map(card).join('')}</div></section>` : ''}
      <section class="section"><div class="section__head"><h2>🏆 Bán chạy nhất</h2></div><div class="grid">${best.map(card).join('')}</div></section>
      ${newest.length ? `<section class="section"><div class="section__head"><h2>✨ Hàng mới nhập</h2><a href="/danh-muc/${catById('271399347').slug}">Xem tất cả ›</a></div><div class="grid">${newest.map(card).join('')}</div></section>` : ''}
      </section></div>`;
    bindSidebar();
  }

  function sidebar(activeSlug, q, priceMin, priceMax) {
    const total = state.db.products.length;
    return `<aside class="side-cats">
      <div class="side-cats__head">☰ TẤT CẢ DANH MỤC</div>
      <ul class="side-cats__list">
        <li><a href="/tat-ca" class="${!activeSlug ? 'active' : ''}">Tất cả sản phẩm <b>${total}</b></a></li>
        ${state.cats.map(c => `<li><a href="/danh-muc/${c.slug}" class="${c.slug === activeSlug ? 'active' : ''}">${esc(c.name)} <b>${c.items.length}</b></a></li>`).join('')}
      </ul>
      <div class="side-cats__head">⚙ KHOẢNG GIÁ</div>
      <form class="side-filter" id="priceForm">
        <div class="side-filter__row"><input type="number" name="min" placeholder="₫ TỪ" value="${priceMin || ''}"><span>—</span><input type="number" name="max" placeholder="₫ ĐẾN" value="${priceMax || ''}"></div>
        <button class="btn btn--block" style="padding:8px">Áp dụng</button>
      </form>
      <div class="side-cats__head">★ ĐÁNH GIÁ</div>
      <ul class="side-stars">${[5, 4, 3].map(n => `<li><a href="#" data-star="${n}">${'★'.repeat(n)}${'☆'.repeat(5 - n)} ${n < 5 ? 'trở lên' : ''}</a></li>`).join('')}</ul>
      <a class="side-reset" href="/tat-ca">↺ Xoá tất cả bộ lọc</a>
    </aside>`;
  }

  function bindSidebar() {
    const base = () => /^\/(danh-muc|tim-kiem|tat-ca)/.test(location.pathname) ? location.pathname : '/tat-ca';
    app.querySelectorAll('.side-stars a').forEach(a => a.onclick = e => {
      e.preventDefault(); const p = new URLSearchParams(location.search); p.set('star', a.dataset.star); go(base() + '?' + p);
    });
    const pf = $('#priceForm');
    if (pf) pf.onsubmit = e => {
      e.preventDefault(); const f = new FormData(e.target); const p = new URLSearchParams(location.search);
      f.get('min') ? p.set('min', f.get('min')) : p.delete('min');
      f.get('max') ? p.set('max', f.get('max')) : p.delete('max');
      go(base() + (p.toString() ? '?' + p : ''));
    };
  }

  function pageCategory(slug, q) {
    const c = slug ? catById(slug) : null;
    const qs = new URLSearchParams(location.search);
    const pmin = +qs.get('min') || 0, pmax = +qs.get('max') || 0, minStar = +qs.get('star') || 0;
    let list = c ? productsOf(c) : state.db.products;
    const title = c ? c.name : (q ? `Kết quả cho “${q}”` : 'Tất cả sản phẩm');
    if (q) { const k = q.toLowerCase(); list = list.filter(p => p.name.toLowerCase().includes(k)); }
    if (pmin) list = list.filter(p => p.price >= pmin);
    if (pmax) list = list.filter(p => p.price <= pmax);
    if (minStar) list = list.filter(p => (p.rating || 0) >= minStar);
    const sortKey = qs.get('sort') || 'pop';
    const sorters = { pop: (a, b) => b.sold - a.sold, new: (a, b) => b.id.localeCompare(a.id), asc: (a, b) => a.price - b.price, desc: (a, b) => b.price - a.price, rating: (a, b) => b.rating - a.rating };
    list = [...list].sort(sorters[sortKey] || sorters.pop);
    const sortBtn = (k, label) => `<button class="sortbtn ${sortKey === k ? 'active' : ''}" data-sort="${k}">${label}</button>`;
    app.innerHTML = crumb(c ? [esc(c.name)] : [q ? 'Tìm kiếm' : 'Tất cả sản phẩm']) + `
      <div class="shop-layout">
        ${sidebar(slug, q, pmin, pmax)}
        <section>
          <div class="toolbar"><h1>${esc(title)} <span class="muted" style="font-size:14px;font-weight:400">(${list.length} sản phẩm)</span></h1></div>
          <div class="sortbar"><span class="muted">Sắp xếp theo</span>${sortBtn('pop', 'Phổ biến')}${sortBtn('new', 'Mới nhất')}${sortBtn('rating', 'Đánh giá')}${sortBtn('asc', 'Giá thấp → cao')}${sortBtn('desc', 'Giá cao → thấp')}</div>
          ${list.length ? `<div class="grid">${list.map(card).join('')}</div>` : `<div class="empty"><div class="big">🔎</div>Không tìm thấy sản phẩm phù hợp.<br><a class="btn" style="margin-top:14px" href="/tat-ca">Xoá bộ lọc</a></div>`}
        </section>
      </div>`;
    const setQs = (k, v) => { const p = new URLSearchParams(location.search); v ? p.set(k, v) : p.delete(k); go(location.pathname + (p.toString() ? '?' + p : '')); };
    app.querySelectorAll('.sortbtn').forEach(b => b.onclick = () => setQs('sort', b.dataset.sort));
    bindSidebar();
    document.querySelectorAll('#catbar a').forEach(a => a.classList.toggle('active', a.dataset.cat === slug));
  }

  function pageProduct(slug) {
    const p = state.db.products.find(p => p.slug === slug || p.id === slug);
    if (!p) return notFound();
    const cat = mainCat(p);
    let selected = (p.variants.length === 1 && p.variants[0].options.length === 1) ? p.variants[0].options[0] : ''; let qty = 1; let imgIdx = 0;
    const priceRange = p.priceMax ? `${fmt(p.price)} – ${fmt(p.priceMax)}` : fmt(p.price);
    const dist = p.ratingDist || [0, 0, 0, 0, 0]; const total = dist.reduce((a, b) => a + b, 0) || p.reviews.length;
    app.innerHTML = crumb([cat ? `<a href="/danh-muc/${cat.slug}">${esc(cat.name)}</a>` : '', esc(p.name.slice(0, 60)) + '…'].filter(Boolean)) + `
      <div class="pd">
        <div class="gallery">
          <div class="gallery__main" id="galMain">
            <img src="${p.images[0]}" alt="${esc(p.name)}">
            ${p.video ? `<div class="vplayer" id="vPlayer" hidden>
              <video id="vTag" playsinline controls preload="none" poster="${esc(p.video.thumb || p.images[0])}"></video>
              <div class="vplayer__load" id="vLoad" hidden><span class="spin"></span> Đang tải video…</div>
            </div>` : ''}
          </div>
          <div class="gallery__thumbs" id="galThumbs">
            ${p.video ? `<button class="thumb-video" data-video="1" title="Xem video sản phẩm"><img src="${esc(p.video.thumb || p.images[0])}" alt="Video"><span class="thumb-video__play">▶</span>${p.video.duration ? `<span class="thumb-video__dur">${Math.floor(p.video.duration / 60)}:${String(p.video.duration % 60).padStart(2, '0')}</span>` : ''}</button>` : ''}
            ${p.images.map((s, i) => `<img src="${s}" class="${i === 0 && !p.video ? 'active' : ''}" data-i="${i}" alt="">`).join('')}
          </div>
        </div>
        <div>
          <h1>${esc(p.name)}</h1>
          <div class="pd__meta">
            ${p.rating ? `<span><b>${Number(p.rating).toFixed(1)}</b> ${stars(p.rating)}</span>` : ''}
            <a href="#danh-gia" class="meta-link" id="goReviews"><b>${p.ratingCount || p.reviews.length}</b> đánh giá</a>
            <span><b>${p.sold}</b> đã bán</span>
            ${p.stock === null || p.stock === undefined ? '' : (p.stock > 0 ? `<span class="${p.stock <= 5 ? 'stock-low' : ''}">Còn <b>${p.stock}</b> sản phẩm</span>` : '<span class="stock-out">Tạm hết hàng</span>')}
          </div>
          ${voucherBanner()}
          <div class="pd__price"><span class="price" id="pdPrice">${priceRange}</span>${p.priceBefore ? `<span class="price--old">${fmt(p.priceBefore)}</span>` : ''}${p.discount ? `<span class="off">GIẢM ${p.discount}%</span>` : ''}</div>
          ${p.variants.map(v => `<div class="opt"><div class="opt__label">${esc(v.name)}</div><div class="chips" data-variant>${v.options.map((o, i) => `<button class="chip" data-opt="${esc(o)}">${v.images[i] ? `<img src="${v.images[i]}" alt="">` : ''}${esc(o)}</button>`).join('')}</div></div>`).join('')}
          <div class="opt"><div class="opt__label">Số lượng</div><div class="qty"><button id="qMinus">−</button><input id="qInput" value="1" inputmode="numeric"><button id="qPlus">+</button></div></div>
          <div class="pd__actions">${soldOut(p) ? '<div class="stock-out-box">Sản phẩm tạm hết hàng — vui lòng quay lại sau hoặc nhắn shop để đặt trước.</div>' : `<button class="btn btn--ghost btn--lg" id="btnAdd">🛒 Thêm vào giỏ</button><button class="btn btn--lg" id="btnBuy">Mua ngay – COD</button>`}</div>
          <div class="pd__trust"><div>💵 Thanh toán khi nhận hàng</div><div>🔄 Đổi trả trong 7 ngày nếu lỗi</div><div>🚚 Freeship đơn từ 300.000₫</div><div>✅ Hàng chính hãng, nguyên seal</div></div>
        </div>
      </div>
      <div class="tabs"><div class="tabs__nav"><button class="active" data-tab="desc">Mô tả sản phẩm</button><button data-tab="spec">Thông số</button></div>
        <div class="panel" id="tab-desc"><div class="desc">${esc(p.description || 'Đang cập nhật mô tả.')}</div></div>
        <div class="panel hidden" id="tab-spec"><div class="attrs">${p.attrs.map(a => `<div><span>${esc(a.n)}</span><span>${esc(a.v)}</span></div>`).join('') || '<span class="muted">Chưa có thông số.</span>'}${p.catpath.length ? `<div><span>Ngành hàng</span><span>${esc(p.catpath.join(' › '))}</span></div>` : ''}</div></div>
        </div>
      <section class="section" id="danh-gia">
        <div class="section__head"><h2>⭐ Đánh giá sản phẩm ${p.reviews.length ? `(${p.reviews.length})` : ''}</h2></div>
        <div class="panel">
          <div class="rv-sum"><div class="rv-sum__big"><b>${Number(p.rating || 0).toFixed(1)}</b>${stars(p.rating)}<div class="muted" style="font-size:12px">${total} lượt đánh giá</div></div>
            <div class="rv-bars">${[5, 4, 3, 2, 1].map(s => `<div class="rv-bar"><span>${s} ★</span><i style="--w:${total ? (dist[s - 1] / total * 100) : 0}%"></i><span class="muted">${dist[s - 1] || 0}</span></div>`).join('')}</div></div>
          ${p.reviews.length
            ? [...p.reviews].sort((a, b) => ((b.comment ? 2 : 0) + (b.images.length ? 1 : 0)) - ((a.comment ? 2 : 0) + (a.images.length ? 1 : 0))).map(review).join('')
            : `<div class="rv-empty"><div style="font-size:42px">💬</div><p>Sản phẩm này chưa có đánh giá.<br><span class="muted">Hãy là người đầu tiên chia sẻ cảm nhận với những khách hàng khác!</span></p></div>`}
          ${SB ? `<form id="rvForm" class="form" style="margin-top:20px;box-shadow:none;border:1px solid var(--line)"><h2 style="font-size:16px">Viết đánh giá của bạn</h2>
            <div class="field"><label>Tên hiển thị</label><input name="name" required maxlength="60" placeholder="Ví dụ: Mẹ Bin"></div>
            <div class="field"><label>Số sao</label><select name="star"><option value="5">5 ★ Tuyệt vời</option><option value="4">4 ★ Hài lòng</option><option value="3">3 ★ Bình thường</option><option value="2">2 ★ Không hài lòng</option><option value="1">1 ★ Tệ</option></select></div>
            <div class="field"><label>Nhận xét</label><textarea name="comment" rows="3" required maxlength="1000"></textarea></div>
            <button class="btn">Gửi đánh giá</button> <span class="muted" style="font-size:12.5px">Đánh giá sẽ hiển thị sau khi shop duyệt.</span></form>` : ''}
        </div></section>
      ${related(p).length ? `<section class="section"><div class="section__head"><h2>Sản phẩm liên quan</h2></div><div class="grid">${related(p).map(card).join('')}</div></section>` : ''}`;

    // gallery
    const main = $('#galMain img');
    const showImage = t => {
      imgIdx = +t.dataset.i; main.src = p.images[imgIdx]; main.hidden = false;
      const vp = $('#vPlayer'); if (vp) { vp.hidden = true; const vt = $('#vTag'); if (vt) vt.pause(); }
      document.querySelectorAll('#galThumbs img,#galThumbs .thumb-video').forEach(x => x.classList.remove('active'));
      t.classList.add('active');
    };
    $('#galThumbs').onclick = e => {
      const vb = e.target.closest('[data-video]');
      if (vb) { openVideo(vb); return; }
      const t = e.target.closest('img'); if (!t || t.closest('[data-video]')) return; showImage(t);
    };
    $('#galMain').onclick = e => { if (e.target.closest('.vplayer')) return; lightbox(main.src); };

    function openVideo(btn) {
      const vp = $('#vPlayer'), v = $('#vTag'), ld = $('#vLoad');
      document.querySelectorAll('#galThumbs img,#galThumbs .thumb-video').forEach(x => x.classList.remove('active'));
      btn.classList.add('active');
      main.hidden = true; vp.hidden = false;
      if (v.dataset.ready) { v.play().catch(() => {}); return; }
      v.src = p.video.url; v.load();
      // Nếu CDN Shopee chặn phát trực tiếp thì tải về rồi phát
      let fixed = false;
      const fallback = async () => {
        if (fixed || v.readyState >= 1) return; fixed = true;
        ld.hidden = false;
        try {
          const blob = await fetch(p.video.url).then(r => r.blob());
          v.src = URL.createObjectURL(blob); v.load(); await v.play().catch(() => {});
        } catch (e) { ld.innerHTML = 'Không tải được video. <a href="' + esc(p.shopeeUrl || '#') + '" target="_blank" rel="noopener">Xem trên Shopee</a>'; return; }
        ld.hidden = true;
      };
      v.onloadeddata = () => { v.dataset.ready = '1'; ld.hidden = true; };
      v.onerror = fallback;
      setTimeout(fallback, 2500);
      v.play().catch(() => {});
    }
    // variants
    const chips = document.querySelectorAll('[data-variant] .chip');
    chips.forEach(ch => { if (ch.dataset.opt === selected) ch.classList.add('active'); ch.onclick = () => {
      chips.forEach(c => c.classList.remove('active')); ch.classList.add('active'); selected = ch.dataset.opt;
      const m = p.models.find(m => m.name === selected); if (m) $('#pdPrice').textContent = fmt(m.price || p.price);
      const vi = variantImage(p, selected); if (vi) main.src = vi;
    }; });
    // qty
    const qIn = $('#qInput'); const setQ = n => { qty = Math.max(1, Math.min(99, n || 1)); qIn.value = qty; };
    $('#qMinus').onclick = () => setQ(qty - 1); $('#qPlus').onclick = () => setQ(qty + 1); qIn.onchange = () => setQ(parseInt(qIn.value, 10));
    const ensureVariant = () => { if (p.variants.length && !selected) { toast('Vui lòng chọn phân loại sản phẩm'); $('[data-variant]').scrollIntoView({ block: 'center' }); return false; } return true; };
    if ($('#btnAdd')) $('#btnAdd').onclick = () => ensureVariant() && addToCart(p.id, qty, selected);
    if ($('#btnBuy')) $('#btnBuy').onclick = () => { if (!ensureVariant()) return; addToCart(p.id, qty, selected); go('/thanh-toan'); };
    // tabs
    document.querySelectorAll('.tabs__nav button').forEach(b => b.onclick = () => {
      document.querySelectorAll('.tabs__nav button').forEach(x => x.classList.toggle('active', x === b));
      ['desc', 'spec'].forEach(t => $('#tab-' + t).classList.toggle('hidden', t !== b.dataset.tab));
    });
    document.querySelectorAll('.rv__imgs img').forEach(im => im.onclick = () => lightbox(im.src));
    const gr = $('#goReviews'); if (gr) gr.onclick = e => { e.preventDefault(); $('#danh-gia').scrollIntoView({ behavior: 'smooth', block: 'start' }); };
    const rvf = $('#rvForm'); if (rvf) rvf.onsubmit = async e => { e.preventDefault(); const f = Object.fromEntries(new FormData(rvf).entries());
      try { await rpc('submit_review', { p_product_id: p.id, p_name: f.name, p_star: +f.star, p_comment: f.comment }); rvf.innerHTML = '<p style="color:var(--ok)">✅ Cảm ơn bạn! Đánh giá sẽ hiển thị sau khi được duyệt.</p>'; } catch (err) { toast('❌ ' + err.message); } };
    window.scrollTo(0, 0);
  }
  const mainCat = p => catById(p.categories.find(c => c !== '271399347') || p.categories[0]);
  function related(p) { const c = mainCat(p); return c ? productsOf(c).filter(x => x.id !== p.id).slice(0, 5) : []; }
  const COLORS = ['#ff6a1a', '#2f80ed', '#27ae60', '#9b51e0', '#eb5757', '#f2994a', '#219653', '#56ccf2'];
  function review(r) {
    const initial = (r.user || '?').replace(/\*/g, '').charAt(0) || '?';
    const color = COLORS[(r.user || '').charCodeAt(0) % COLORS.length];
    const date = r.time ? new Date(r.time * 1000).toLocaleDateString('vi-VN') : '';
    return `<div class="rv"><div class="avatar" style="background:${color}">${esc(initial)}</div><div class="rv__body">
      <div class="rv__user">${esc(r.user)}</div><div class="rv__meta">${stars(r.star)} · ${date}${r.variant ? ' · Phân loại: ' + esc(r.variant) : ''}</div>
      ${r.comment ? `<div class="rv__text">${esc(r.comment)}</div>` : '<div class="rv__text rv__text--empty">Khách đã đánh giá nhưng không viết nhận xét.</div>'}
      ${r.images.length ? `<div class="rv__imgs">${r.images.map(s => `<img src="${s}" alt="Ảnh đánh giá" loading="lazy">`).join('')}</div>` : ''}
      ${r.reply ? `<div class="rv__reply"><b>Phản hồi của Shop:</b> ${esc(r.reply)}</div>` : ''}</div></div>`;
  }

  function pageCart() {
    const lines = cartLines(); const t = totals(lines);
    if (!lines.length) { app.innerHTML = crumb(['Giỏ hàng']) + `<div class="empty"><div class="big">🛒</div><p>Giỏ hàng của bạn đang trống.</p><a class="btn" href="/">Tiếp tục mua sắm</a></div>`; return; }
    app.innerHTML = crumb(['Giỏ hàng']) + `<div class="cart"><div class="cart__list">${lines.map(l => `<div class="cart__item" data-key="${esc(l.key)}">
        <img src="${l.image}" alt=""><div><a class="cart__name" href="/san-pham/${l.p.slug}">${esc(l.p.name)}</a>${l.model ? `<div class="cart__variant">Phân loại: ${esc(l.model)}</div>` : ''}<div class="price" style="font-size:14px">${fmt(l.price)}</div></div>
        <div class="cart__right"><div class="qty"><button data-q="-1">−</button><input value="${l.qty}" data-qin inputmode="numeric"><button data-q="1">+</button></div><b>${fmt(l.price * l.qty)}</b><button class="link-danger" data-rm>Xóa</button></div></div>`).join('')}</div>
      <aside class="summary"><h3>Tóm tắt đơn hàng</h3><div class="row"><span>Tạm tính</span><span>${fmt(t.subtotal)}</span></div>
        ${t.discount ? `<div class="row row--disc"><span>Giảm giá (${esc(state.voucher.code)})</span><span>−${fmt(t.discount)}</span></div>` : ''}
        <div class="row"><span>Phí vận chuyển</span><span>${t.shipping ? fmt(t.shipping) : 'Miễn phí'}</span></div>
        ${t.shipping ? `<div class="note-free">Mua thêm ${fmt(FREESHIP - t.subtotal)} để được miễn phí vận chuyển</div>` : '<div class="note-free">🎉 Đơn hàng được miễn phí vận chuyển</div>'}
        <div class="row total"><span>Tổng cộng</span><span>${fmt(t.total)}</span></div>
        <a class="btn btn--lg btn--block" href="/thanh-toan" style="margin-top:12px">Đặt hàng – Thanh toán khi nhận</a><a class="btn btn--ghost btn--block" href="/" style="margin-top:8px">Tiếp tục mua sắm</a></aside></div>`;
    app.querySelectorAll('.cart__item').forEach(el => {
      const key = el.dataset.key; const item = state.cart.find(i => i.key === key);
      el.querySelectorAll('[data-q]').forEach(b => b.onclick = () => { item.qty = Math.max(1, Math.min(99, item.qty + (+b.dataset.q))); saveCart(); pageCart(); });
      el.querySelector('[data-qin]').onchange = e => { item.qty = Math.max(1, Math.min(99, parseInt(e.target.value, 10) || 1)); saveCart(); pageCart(); };
      el.querySelector('[data-rm]').onclick = () => { state.cart = state.cart.filter(i => i.key !== key); saveCart(); pageCart(); };
    });
  }

  function pageCheckout() {
    const lines = cartLines(); const t = totals(lines);
    if (!lines.length) return go('/gio-hang', true);
    const saved = JSON.parse(localStorage.getItem('mq_customer') || '{}');
    app.innerHTML = crumb(['<a href="/gio-hang">Giỏ hàng</a>', 'Thanh toán']) + `<div class="checkout">
      <form class="form" id="coForm" novalidate><h2>Thông tin giao hàng</h2>
        <div class="field"><label>Họ và tên *</label><input name="name" value="${esc(saved.name || '')}" placeholder="Nguyễn Văn A" required><div class="err">Vui lòng nhập họ tên</div></div>
        <div class="field"><label>Số điện thoại *</label><input name="phone" value="${esc(saved.phone || '')}" placeholder="09xx xxx xxx" inputmode="tel" required><div class="err">Số điện thoại không hợp lệ (10 số, bắt đầu bằng 0)</div></div>
        <div class="field"><label>Địa chỉ nhận hàng *</label><textarea name="address" rows="3" placeholder="Số nhà, đường, phường/xã, quận/huyện, tỉnh/thành" required>${esc(saved.address || '')}</textarea><div class="err">Vui lòng nhập địa chỉ đầy đủ (số nhà, đường, phường/xã, quận/huyện, tỉnh/thành)</div></div>
        <div class="field"><label>Ghi chú (không bắt buộc)</label><textarea name="note" rows="2" placeholder="Ví dụ: giao giờ hành chính, gọi trước khi giao…"></textarea></div>
        <h2>Mã giảm giá</h2>
        <div class="vbox">
          <div class="vbox__row"><input id="vInput" placeholder="Nhập mã giảm giá" value="${esc(state.voucher ? state.voucher.code : '')}" autocomplete="off"><button type="button" class="btn btn--sm" id="vApply">Áp dụng</button></div>
          <div id="vMsg" class="vbox__msg">${state.voucher ? `✅ Đang áp dụng <b>${esc(state.voucher.code)}</b> – ${esc(state.voucher.title)}` : ''}</div>
          ${(state.db.vouchers || []).length ? `<div class="vbox__list">${state.db.vouchers.map(v => `<button type="button" class="vchip" data-pick="${esc(v.code)}">${esc(v.code)} · ${voucherLabel(v)}</button>`).join('')}</div>` : ''}
        </div>
        <h2>Phương thức thanh toán</h2>
        <div class="pay"><span class="ic">💵</span><div><b>Thanh toán khi nhận hàng (COD)</b><small>Bạn kiểm tra hàng rồi mới thanh toán tiền mặt cho shipper.</small></div></div>
        <p class="muted" style="font-size:13px">Bằng việc đặt hàng, bạn đồng ý với <a href="/chinh-sach" style="color:var(--brand-dark)">chính sách giao hàng &amp; đổi trả</a>.</p>
        <button class="btn btn--lg btn--block" type="submit" id="coSubmit">Xác nhận đặt hàng – ${fmt(t.total)}</button>
      </form>
      <aside class="summary"><h3>Đơn hàng (${lines.reduce((a, l) => a + l.qty, 0)} sản phẩm)</h3><div class="mini-list">${lines.map(l => `<div class="mini"><img src="${l.image}" alt=""><span>${esc(l.p.name)}${l.model ? ` <i class="muted">(${esc(l.model)})</i>` : ''}</span><b>×${l.qty}</b></div>`).join('')}</div>
        <div class="row"><span>Tạm tính</span><span>${fmt(t.subtotal)}</span></div>
        ${t.discount ? `<div class="row row--disc"><span>Giảm giá (${esc(state.voucher.code)})</span><span>−${fmt(t.discount)}</span></div>` : ''}
        <div class="row"><span>Phí vận chuyển</span><span>${t.shipping ? fmt(t.shipping) : 'Miễn phí'}</span></div>
        <div class="row total"><span>Tổng thanh toán</span><span>${fmt(t.total)}</span></div>
        ${t.discount ? `<div class="note-free">🎉 Bạn tiết kiệm được ${fmt(t.discount)} khi đặt trên website</div>` : ''}</aside></div>`;
    const applyVoucher = async code => {
      code = (code || '').trim().toUpperCase();
      const msg = $('#vMsg');
      if (!code) { state.voucher = null; pageCheckout(); return; }
      msg.innerHTML = 'Đang kiểm tra…';
      const known = (state.db.vouchers || []).find(v => v.code === code);
      try {
        if (SB) {
          const r = await rpc('check_voucher', { p_code: code, p_subtotal: t.subtotal });
          if (!r.ok) { state.voucher = null; msg.innerHTML = `<span style="color:var(--danger)">❌ ${esc(r.error)}</span>`; return; }
          state.voucher = known || { code: r.code, title: r.title, kind: 'amount', value: r.discount, min_order: 0 };
        } else {
          if (!known) { msg.innerHTML = '<span style="color:var(--danger)">❌ Mã giảm giá không tồn tại</span>'; return; }
          state.voucher = known;
        }
        pageCheckout();
      } catch (err) { msg.innerHTML = `<span style="color:var(--danger)">❌ ${esc(err.message)}</span>`; }
    };
    $('#vApply').onclick = () => applyVoucher($('#vInput').value);
    $('#vInput').onkeydown = e => { if (e.key === 'Enter') { e.preventDefault(); applyVoucher($('#vInput').value); } };
    app.querySelectorAll('[data-pick]').forEach(b => b.onclick = () => applyVoucher(b.dataset.pick));
    const form = $('#coForm');
    form.onsubmit = async e => {
      e.preventDefault();
      const f = Object.fromEntries(new FormData(form).entries());
      const set = (n, ok) => form.querySelector(`[name=${n}]`).closest('.field').classList.toggle('invalid', !ok);
      const okName = f.name.trim().length >= 2, okPhone = /^(0|\+84)\d{9}$/.test(f.phone.replace(/\s/g, '')), okAddr = f.address.trim().length >= 8;
      set('name', okName); set('phone', okPhone); set('address', okAddr);
      if (!(okName && okPhone && okAddr)) { form.querySelector('.invalid input,.invalid textarea')?.focus(); return; }
      const btn = $('#coSubmit'); btn.disabled = true; btn.textContent = 'Đang gửi đơn hàng…';
      localStorage.setItem('mq_customer', JSON.stringify({ name: f.name, phone: f.phone, address: f.address }));
      const payload = { customer: f, voucher: state.voucher ? state.voucher.code : '', items: state.cart.map(i => ({ id: i.id, qty: i.qty, model: i.model })) };
      try {
        let j;
        if (SB) { j = { order: await rpc('place_order', { payload }) }; }
        else {
          const ep = CFG.orderEndpoint || '';
          // Apps Script: gửi text/plain để tránh preflight CORS
          const r = ep ? await fetch(ep, { method: 'POST', body: JSON.stringify(payload) })
                       : await fetch('/api/orders', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(payload) });
          j = await r.json();
          if (!r.ok || j.error) throw new Error(j.error || 'Lỗi đặt hàng');
        }
        state.cart = []; saveCart(); state.voucher = defaultVoucher();
        sessionStorage.setItem('mq_last_order', JSON.stringify(j.order));
        go('/dat-hang-thanh-cong/' + j.order.code);
      } catch (err) {
        // Không có máy chủ (chạy tĩnh): vẫn tạo đơn tạm để khách thấy xác nhận
        if (!SB && (err instanceof TypeError || /JSON/.test(err.message))) {
          const order = { code: 'MQ' + Date.now().toString(36).toUpperCase().slice(-6), createdAt: new Date().toISOString(), status: 'new', payment: 'COD', customer: f, items: lines.map(l => ({ name: l.p.name, variant: l.model, price: l.price, qty: l.qty, image: l.image })), ...t, offline: true };
          const list = JSON.parse(localStorage.getItem('mq_orders_offline') || '[]'); list.push(order); localStorage.setItem('mq_orders_offline', JSON.stringify(list));
          state.cart = []; saveCart(); sessionStorage.setItem('mq_last_order', JSON.stringify(order)); go('/dat-hang-thanh-cong/' + order.code); return;
        }
        toast('❌ ' + err.message); btn.disabled = false; btn.textContent = `Xác nhận đặt hàng – ${fmt(t.total)}`;
      }
    };
    window.scrollTo(0, 0);
  }

  const STATUS = { new: 'Mới đặt', confirmed: 'Đã xác nhận', shipping: 'Đang giao', done: 'Hoàn thành', cancelled: 'Đã hủy' };
  function orderBox(o) {
    return `<div class="order-box"><div class="row"><span>Mã đơn</span><b>${esc(o.code)}</b></div><div class="row"><span>Trạng thái</span><span class="status ${o.status}">${STATUS[o.status] || o.status}</span></div>
      <div class="row"><span>Người nhận</span><span>${esc(o.customer.name)} – ${esc(o.customer.phone)}</span></div><div class="row"><span>Địa chỉ</span><span style="text-align:right;max-width:60%">${esc(o.customer.address)}</span></div>
      <hr style="border:0;border-top:1px dashed var(--line)">${o.items.map(i => `<div class="row"><span>${esc(i.name.slice(0, 55))}${i.name.length > 55 ? '…' : ''}${i.variant ? ` <i class="muted">(${esc(i.variant)})</i>` : ''} ×${i.qty}</span><span>${fmt(i.price * i.qty)}</span></div>`).join('')}
      ${o.discount ? `<div class="row" style="color:var(--ok)"><span>Giảm giá${o.voucher ? ' (' + esc(o.voucher) + ')' : ''}</span><span>−${fmt(o.discount)}</span></div>` : ''}
      <div class="row"><span>Phí vận chuyển</span><span>${o.shipping ? fmt(o.shipping) : 'Miễn phí'}</span></div><div class="row" style="font-weight:700;font-size:16px"><span>Tổng thanh toán khi nhận</span><span style="color:var(--brand-dark)">${fmt(o.total)}</span></div></div>`;
  }
  function pageSuccess(code) {
    const o = JSON.parse(sessionStorage.getItem('mq_last_order') || 'null');
    app.innerHTML = `<div class="success"><div class="big">🎉</div><h1>Đặt hàng thành công!</h1><p>Cảm ơn bạn đã mua sắm tại M&amp;Q Toys. Shop sẽ gọi xác nhận trong thời gian sớm nhất. Bạn thanh toán khi nhận hàng.</p><div class="code">${esc(code)}</div>
      ${o && o.code === code ? orderBox(o) : ''}${o && o.offline ? '<p class="muted" style="font-size:13px">⚠️ Website đang chạy ở chế độ tĩnh (không có máy chủ), đơn hàng được lưu tạm trên trình duyệt này.</p>' : ''}
      <a class="btn btn--lg" href="/">Tiếp tục mua sắm</a></div>`;
    window.scrollTo(0, 0);
  }
  function pageTrack() {
    app.innerHTML = crumb(['Tra cứu đơn hàng']) + `<div class="form" style="max-width:520px;margin:20px auto"><h2>Tra cứu đơn hàng</h2><form id="trackForm"><div class="field"><label>Mã đơn hàng</label><input name="code" placeholder="MQxxxxxx" required></div><div class="field"><label>Số điện thoại đặt hàng</label><input name="phone" required inputmode="tel"></div><button class="btn btn--block">Tra cứu</button></form><div id="trackResult" style="margin-top:16px"></div></div>`;
    $('#trackForm').onsubmit = async e => {
      e.preventDefault(); const f = Object.fromEntries(new FormData(e.target).entries());
      const out = $('#trackResult'); out.innerHTML = '<p class="muted">Đang tìm…</p>';
      try {
        const code = f.code.trim().toUpperCase(), phone = f.phone.replace(/\s/g, '');
        let j;
        if (SB) { j = await rpc('get_order', { p_code: code, p_phone: phone }); if (!j) throw new Error('Không tìm thấy đơn hàng'); }
        else {
          const ep = CFG.orderEndpoint || '';
          const r = await fetch(ep ? `${ep}?code=${encodeURIComponent(code)}&phone=${encodeURIComponent(phone)}` : `/api/orders/${encodeURIComponent(code)}?phone=${encodeURIComponent(phone)}`);
          j = await r.json(); if (!r.ok || j.error) throw new Error(j.error);
        }
        out.innerHTML = orderBox(j);
      }
      catch (err) { out.innerHTML = `<p style="color:var(--danger)">${esc(err.message || 'Không tìm thấy đơn hàng')}</p>`; }
    };
  }
  function pagePolicy() {
    app.innerHTML = `<div class="policy"><h1>Chính sách giao hàng &amp; đổi trả</h1>
      <h3>🚚 Giao hàng</h3><p>Giao hàng toàn quốc qua các đơn vị vận chuyển uy tín. Thời gian giao 1–3 ngày nội thành TP.HCM, 3–6 ngày các tỉnh. Phí vận chuyển 25.000₫, <b>miễn phí cho đơn từ 300.000₫</b>.</p>
      <h3>💵 Thanh toán khi nhận hàng (COD)</h3><p>Bạn được kiểm tra ngoại quan sản phẩm trước khi thanh toán tiền mặt cho nhân viên giao hàng. Shop sẽ gọi điện xác nhận đơn trước khi giao.</p>
      <h3>🔄 Đổi trả</h3><p>Đổi trả trong vòng 7 ngày kể từ khi nhận hàng nếu sản phẩm lỗi do nhà sản xuất, giao sai mẫu hoặc thiếu chi tiết. Sản phẩm còn nguyên tem, hộp, chưa qua sử dụng. Shop chịu phí vận chuyển đổi trả trong các trường hợp này.</p>
      <h3>📞 Liên hệ</h3><p>Nhắn tin qua gian hàng Shopee <a href="${state.db.shop.shopee}" target="_blank" rel="noopener" style="color:var(--brand-dark)">mqhometech</a> để được hỗ trợ nhanh nhất.</p></div>`;
  }
  function notFound() { app.innerHTML = `<div class="empty"><div class="big">🙈</div><p>Không tìm thấy trang.</p><a class="btn" href="/">Về trang chủ</a></div>`; }

  // ---------- Router ----------
  function route() {
    if (!state.db) return;
    const path = location.pathname;
    const q = new URLSearchParams(location.search);
    const seg = path.split('/').filter(Boolean);
    document.querySelectorAll('#catbar a').forEach(a => a.classList.remove('active'));
    if (!seg.length) return pageHome();
    switch (seg[0]) {
      case 'danh-muc': return pageCategory(decodeURIComponent(seg[1] || ''), q.get('q') || '');
      case 'tat-ca': return pageCategory('', '');
      case 'tim-kiem': return pageCategory('', q.get('q') || '');
      case 'san-pham': return pageProduct(decodeURIComponent(seg[1] || ''));
      case 'gio-hang': return pageCart();
      case 'thanh-toan': return pageCheckout();
      case 'dat-hang-thanh-cong': return pageSuccess(seg[1] || '');
      case 'tra-cuu': return pageTrack();
      case 'chinh-sach': return pagePolicy();
      default: return notFound();
    }
  }
  window.addEventListener('popstate', route);
  document.addEventListener('click', e => {
    const a = e.target.closest('a');
    if (!a) return;
    const href = a.getAttribute('href');
    if (!href || a.target === '_blank' || a.hasAttribute('download')) return;
    if (/^(https?:|mailto:|tel:)/i.test(href)) return;
    if (href.charAt(0) === '#') return;
    if (e.metaKey || e.ctrlKey || e.shiftKey || e.button !== 0) return;
    e.preventDefault(); go(href);
  });
  document.addEventListener('click', e => {
    const v = e.target.closest('[data-vcode]');
    if (v) { navigator.clipboard.writeText(v.dataset.vcode).then(() => toast('Đã sao chép mã ' + v.dataset.vcode)).catch(() => toast('Mã: ' + v.dataset.vcode)); return; }
    const b = e.target.closest('[data-add]'); if (!b) return;
    const p = byId(b.dataset.add);
    if (p.models.length) go('/san-pham/' + p.slug); else addToCart(p.id, 1);
  });
  $('#searchForm').onsubmit = e => { e.preventDefault(); const q = $('#searchInput').value.trim(); if (q) go('/tim-kiem?q=' + encodeURIComponent(q)); };

  // ---------- Tiện ích ----------
  let toastT; function toast(msg) { const t = $('#toast'); t.textContent = msg; t.classList.add('show'); clearTimeout(toastT); toastT = setTimeout(() => t.classList.remove('show'), 2200); }
  function lightbox(src) { const lb = $('#lightbox'); lb.querySelector('img').src = src; lb.hidden = false; }
  $('#lightbox').onclick = () => { $('#lightbox').hidden = true; };

  if (location.hash.indexOf('#/') === 0) history.replaceState({}, '', location.hash.slice(1));
  app.innerHTML = '<div class="skeleton" style="margin:20px 0"></div><div class="grid">' + '<div class="skeleton"></div>'.repeat(5) + '</div>';
  loadData().then(route).catch(err => { app.innerHTML = `<div class="empty">Không tải được dữ liệu sản phẩm.<br><small>${esc(err.message)}</small></div>`; });
})();
