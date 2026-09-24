/**
 * M&Q Toys – Nhận đơn hàng COD vào Google Sheets (miễn phí)
 * Cách dùng: xem HUONG-DAN-HOST.md
 */
const SITE_URL = 'https://TEN-WEB-CUA-BAN.netlify.app'; // ← URL website sau khi host (để lấy giá thật từ products.json)
const NOTIFY_EMAIL = '';                                  // ← email nhận thông báo đơn mới (để trống nếu không cần)
const SHEET_NAME = 'Đơn hàng';
const FREESHIP = 300000, SHIP = 25000;

function getSheet() {
  const ss = SpreadsheetApp.getActiveSpreadsheet();
  let sh = ss.getSheetByName(SHEET_NAME);
  if (!sh) {
    sh = ss.insertSheet(SHEET_NAME);
    sh.appendRow(['Mã đơn', 'Thời gian', 'Trạng thái', 'Họ tên', 'SĐT', 'Địa chỉ', 'Ghi chú', 'Sản phẩm', 'Tạm tính', 'Phí ship', 'Tổng COD', 'JSON']);
    sh.setFrozenRows(1);
    sh.getRange('A1:L1').setFontWeight('bold').setBackground('#ffe8d6');
  }
  return sh;
}

function loadProducts() {
  const cache = CacheService.getScriptCache();
  let txt = cache.get('products');
  if (!txt) {
    txt = UrlFetchApp.fetch(SITE_URL.replace(/\/$/, '') + '/data/products.json', { muteHttpExceptions: true }).getContentText();
    try { cache.put('products', txt, 600); } catch (e) { /* quá 100KB thì bỏ qua cache */ }
  }
  return JSON.parse(txt).products;
}

function out(obj, code) {
  return ContentService.createTextOutput(JSON.stringify(obj)).setMimeType(ContentService.MimeType.JSON);
}

// Nhận đơn hàng
function doPost(e) {
  const lock = LockService.getScriptLock(); lock.waitLock(10000);
  try {
    const b = JSON.parse(e.postData.contents || '{}');
    const c = b.customer || {}, items = b.items || [];
    if (!c.name || String(c.name).trim().length < 2) return out({ error: 'Vui lòng nhập họ tên' });
    const phone = String(c.phone || '').replace(/\s/g, '');
    if (!/^(0|\+84)\d{9}$/.test(phone)) return out({ error: 'Số điện thoại không hợp lệ' });
    if (!c.address || String(c.address).trim().length < 8) return out({ error: 'Vui lòng nhập địa chỉ đầy đủ' });
    if (!items.length) return out({ error: 'Giỏ hàng trống' });

    const products = loadProducts();
    const byId = {}; products.forEach(p => byId[p.id] = p);
    let subtotal = 0; const lines = [];
    for (const it of items) {
      const p = byId[String(it.id)]; if (!p) return out({ error: 'Sản phẩm không tồn tại: ' + it.id });
      const qty = Math.max(1, Math.min(99, parseInt(it.qty, 10) || 1));
      let price = p.price, variant = '';
      if (it.model && p.models && p.models.length) { const m = p.models.filter(m => m.name === it.model)[0]; if (m) { price = m.price || p.price; variant = m.name; } }
      subtotal += price * qty;
      lines.push({ id: p.id, name: p.name, image: p.images[0], variant: variant, price: price, qty: qty });
    }
    const shipping = subtotal >= FREESHIP ? 0 : SHIP;
    const sh = getSheet();
    const code = 'MQ' + Utilities.formatDate(new Date(), 'Asia/Ho_Chi_Minh', 'yyMMddHHmm') + String(sh.getLastRow()).padStart(3, '0');
    const order = { code: code, createdAt: new Date().toISOString(), status: 'new', payment: 'COD',
      customer: { name: String(c.name).trim(), phone: phone, address: String(c.address).trim(), note: String(c.note || '').trim().slice(0, 500) },
      items: lines, subtotal: subtotal, shipping: shipping, total: subtotal + shipping };
    const itemsText = lines.map(l => '• ' + l.name + (l.variant ? ' (' + l.variant + ')' : '') + ' ×' + l.qty + ' = ' + (l.price * l.qty).toLocaleString('vi-VN') + '₫').join('\n');
    sh.appendRow([code, Utilities.formatDate(new Date(), 'Asia/Ho_Chi_Minh', 'dd/MM/yyyy HH:mm'), 'Mới đặt', order.customer.name, "'" + phone, order.customer.address, order.customer.note, itemsText, subtotal, shipping, order.total, JSON.stringify(order)]);

    if (NOTIFY_EMAIL) {
      MailApp.sendEmail({ to: NOTIFY_EMAIL, subject: '[M&Q Toys] Đơn mới ' + code + ' – ' + order.total.toLocaleString('vi-VN') + '₫',
        body: 'Khách: ' + order.customer.name + '\nSĐT: ' + phone + '\nĐịa chỉ: ' + order.customer.address + '\nGhi chú: ' + order.customer.note + '\n\n' + itemsText + '\n\nPhí ship: ' + shipping + '\nTổng COD: ' + order.total + '\n\nMở Google Sheet để xử lý đơn.' });
    }
    return out({ ok: true, order: order });
  } catch (err) {
    return out({ error: 'Lỗi hệ thống: ' + err.message });
  } finally { lock.releaseLock(); }
}

// Tra cứu đơn: GET ?code=MQ...&phone=09...
function doGet(e) {
  const code = String((e.parameter.code || '')).toUpperCase(), phone = String(e.parameter.phone || '').replace(/\s/g, '');
  if (!code) return out({ ok: true, service: 'M&Q Toys order API' });
  const sh = getSheet(); const rows = sh.getDataRange().getValues();
  const STATUS = { 'Mới đặt': 'new', 'Đã xác nhận': 'confirmed', 'Đang giao': 'shipping', 'Hoàn thành': 'done', 'Đã hủy': 'cancelled' };
  for (let i = 1; i < rows.length; i++) {
    if (String(rows[i][0]) === code && String(rows[i][4]).replace(/'/g, '') === phone) {
      const o = JSON.parse(rows[i][11]); o.status = STATUS[rows[i][2]] || 'new'; return out(o);
    }
  }
  return out({ error: 'Không tìm thấy đơn hàng' });
}
