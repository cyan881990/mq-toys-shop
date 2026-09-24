// M&Q Toys – máy chủ Node thuần (không cần cài thư viện): trang tĩnh + API sản phẩm + nhận đơn COD + quản trị
// Chạy: node server.js   (hoặc ADMIN_KEY=matkhau PORT=8080 node server.js)
const http = require('http');
const fs = require('fs');
const path = require('path');
const { URL } = require('url');

const PORT = process.env.PORT || 3000;
const ADMIN_KEY = process.env.ADMIN_KEY || 'mq-admin-2026'; // đổi khi triển khai thật
const ROOT = __dirname;
const PUBLIC = path.join(ROOT, 'public');
const PRODUCTS_FILE = path.join(ROOT, 'data', 'products.json');
const ORDERS_FILE = path.join(ROOT, 'data', 'orders.json');

const MIME = { '.html': 'text/html; charset=utf-8', '.js': 'text/javascript; charset=utf-8', '.css': 'text/css; charset=utf-8', '.json': 'application/json; charset=utf-8', '.png': 'image/png', '.jpg': 'image/jpeg', '.jpeg': 'image/jpeg', '.webp': 'image/webp', '.svg': 'image/svg+xml', '.ico': 'image/x-icon', '.woff2': 'font/woff2' };

const readJson = (f, fb) => { try { return JSON.parse(fs.readFileSync(f, 'utf8')); } catch { return fb; } };
const writeJson = (f, d) => fs.writeFileSync(f, JSON.stringify(d, null, 1), 'utf8');
const send = (res, code, body, type = 'application/json; charset=utf-8') => { res.writeHead(code, { 'Content-Type': type, 'Cache-Control': 'no-store' }); res.end(typeof body === 'string' || Buffer.isBuffer(body) ? body : JSON.stringify(body)); };
const json = (res, code, obj) => send(res, code, obj);
const readBody = req => new Promise((resolve, reject) => { let d = ''; req.on('data', c => { d += c; if (d.length > 1e6) { reject(new Error('Body quá lớn')); req.destroy(); } }); req.on('end', () => { try { resolve(d ? JSON.parse(d) : {}); } catch { reject(new Error('JSON không hợp lệ')); } }); });

const PHONE_RE = /^(0|\+84)\d{9}$/;
const FREESHIP = 300000, SHIP = 25000;

function createOrder(b) {
  const customer = b.customer || {}; const items = Array.isArray(b.items) ? b.items : [];
  if (!customer.name || String(customer.name).trim().length < 2) throw Object.assign(new Error('Vui lòng nhập họ tên'), { code: 400 });
  const phone = String(customer.phone || '').replace(/\s/g, '');
  if (!PHONE_RE.test(phone)) throw Object.assign(new Error('Số điện thoại không hợp lệ'), { code: 400 });
  if (!customer.address || String(customer.address).trim().length < 8) throw Object.assign(new Error('Vui lòng nhập địa chỉ đầy đủ'), { code: 400 });
  if (!items.length) throw Object.assign(new Error('Giỏ hàng trống'), { code: 400 });

  // Tính lại giá từ dữ liệu máy chủ (không tin giá phía client)
  const db = readJson(PRODUCTS_FILE, { products: [] });
  const byId = Object.fromEntries(db.products.map(p => [p.id, p]));
  let subtotal = 0; const lines = [];
  for (const it of items) {
    const p = byId[String(it.id)];
    if (!p) throw Object.assign(new Error('Sản phẩm không tồn tại: ' + it.id), { code: 400 });
    const qty = Math.max(1, Math.min(99, parseInt(it.qty, 10) || 1));
    let price = p.price, variant = '';
    if (it.model && p.models && p.models.length) { const m = p.models.find(m => m.name === it.model); if (m) { price = m.price || p.price; variant = m.name; } }
    subtotal += price * qty;
    lines.push({ id: p.id, name: p.name, image: p.images[0], variant, price, qty });
  }
  const shipping = subtotal >= FREESHIP ? 0 : SHIP;
  const orders = readJson(ORDERS_FILE, []);
  const code = 'MQ' + Date.now().toString(36).toUpperCase().slice(-6) + String(orders.length + 1).padStart(3, '0');
  const order = { code, createdAt: new Date().toISOString(), status: 'new', payment: 'COD',
    customer: { name: String(customer.name).trim(), phone, address: String(customer.address).trim(), note: String(customer.note || '').trim().slice(0, 500) },
    items: lines, subtotal, shipping, total: subtotal + shipping };
  orders.push(order); writeJson(ORDERS_FILE, orders);
  console.log(`[ĐƠN MỚI] ${code} – ${order.customer.name} – ${phone} – ${order.total.toLocaleString('vi-VN')}₫`);
  return order;
}

async function api(req, res, url) {
  const p = url.pathname; const m = req.method;
  if (m === 'GET' && p === '/api/products') return json(res, 200, readJson(PRODUCTS_FILE, { shop: {}, categories: [], products: [] }));
  if (m === 'POST' && p === '/api/orders') { try { return json(res, 201, { ok: true, order: createOrder(await readBody(req)) }); } catch (e) { return json(res, e.code || 500, { error: e.message }); } }
  let mm = p.match(/^\/api\/orders\/([A-Za-z0-9]+)$/);
  if (m === 'GET' && mm) {
    const o = readJson(ORDERS_FILE, []).find(o => o.code === mm[1].toUpperCase());
    if (!o || o.customer.phone !== String(url.searchParams.get('phone') || '').replace(/\s/g, '')) return json(res, 404, { error: 'Không tìm thấy đơn hàng' });
    return json(res, 200, o);
  }
  if (p.startsWith('/api/admin/')) {
    if (req.headers['x-admin-key'] !== ADMIN_KEY) return json(res, 401, { error: 'Sai mã quản trị' });
    if (m === 'GET' && p === '/api/admin/orders') return json(res, 200, readJson(ORDERS_FILE, []).slice().reverse());
    mm = p.match(/^\/api\/admin\/orders\/([A-Za-z0-9]+)$/);
    if (m === 'PATCH' && mm) {
      const orders = readJson(ORDERS_FILE, []); const o = orders.find(o => o.code === mm[1]);
      if (!o) return json(res, 404, { error: 'Không tìm thấy' });
      const body = await readBody(req).catch(() => ({}));
      if (['new', 'confirmed', 'shipping', 'done', 'cancelled'].includes(body.status)) o.status = body.status;
      writeJson(ORDERS_FILE, orders); return json(res, 200, o);
    }
  }
  return json(res, 404, { error: 'Not found' });
}

function serveStatic(req, res, url) {
  let file = path.normalize(path.join(PUBLIC, decodeURIComponent(url.pathname)));
  if (!file.startsWith(PUBLIC)) return send(res, 403, 'Forbidden', 'text/plain');
  if (fs.existsSync(file) && fs.statSync(file).isDirectory()) file = path.join(file, 'index.html');
  if (!fs.existsSync(file) && fs.existsSync(file + '.html')) file += '.html';
  if (!fs.existsSync(file)) file = path.join(PUBLIC, 'index.html'); // SPA fallback
  const ext = path.extname(file).toLowerCase();
  res.writeHead(200, { 'Content-Type': MIME[ext] || 'application/octet-stream', 'Cache-Control': ext === '.html' ? 'no-cache' : 'public, max-age=3600' });
  fs.createReadStream(file).pipe(res);
}

http.createServer((req, res) => {
  const url = new URL(req.url, `http://${req.headers.host}`);
  if (url.pathname.startsWith('/api/')) return api(req, res, url).catch(e => json(res, 500, { error: e.message }));
  serveStatic(req, res, url);
}).listen(PORT, () => {
  if (!fs.existsSync(ORDERS_FILE)) writeJson(ORDERS_FILE, []);
  console.log(`M&Q Toys đang chạy tại http://localhost:${PORT}`);
  console.log(`Quản lý đơn: http://localhost:${PORT}/admin.html  (mã quản trị: ${ADMIN_KEY})`);
});
