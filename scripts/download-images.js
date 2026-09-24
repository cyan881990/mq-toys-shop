// Tải toàn bộ ảnh sản phẩm + ảnh đánh giá từ CDN Shopee về public/img và cập nhật products.json
// Chạy: npm run download-images
const fs = require('fs'); const path = require('path'); const https = require('https');
const FILE = path.join(__dirname, '..', 'data', 'products.json');
const OUT = path.join(__dirname, '..', 'public', 'img');
fs.mkdirSync(OUT, { recursive: true });
const db = JSON.parse(fs.readFileSync(FILE, 'utf8'));
const urls = new Set();
for (const p of db.products) { p.images.forEach(u => urls.add(u)); p.variants.forEach(v => v.images.forEach(u => urls.add(u))); p.models.forEach(m => m.image && urls.add(m.image)); p.reviews.forEach(r => r.images.forEach(u => urls.add(u))); }
const local = u => '/img/' + u.split('/').pop() + '.jpg';
function dl(u) { return new Promise(res => { const f = path.join(OUT, u.split('/').pop() + '.jpg'); if (fs.existsSync(f)) return res(true);
  https.get(u, r => { if (r.statusCode !== 200) { r.resume(); return res(false); } const w = fs.createWriteStream(f); r.pipe(w); w.on('finish', () => res(true)); }).on('error', () => res(false)); }); }
(async () => {
  let ok = 0; const list = [...urls];
  for (let i = 0; i < list.length; i += 8) { const r = await Promise.all(list.slice(i, i + 8).map(dl)); ok += r.filter(Boolean).length; process.stdout.write(`\r${Math.min(i + 8, list.length)}/${list.length}`); }
  console.log(`\nĐã tải ${ok}/${list.length} ảnh.`);
  const rewrite = u => (u && fs.existsSync(path.join(OUT, u.split('/').pop() + '.jpg'))) ? local(u) : u;
  for (const p of db.products) { p.images = p.images.map(rewrite); p.variants.forEach(v => v.images = v.images.map(rewrite)); p.models.forEach(m => m.image = rewrite(m.image)); p.reviews.forEach(r => r.images = r.images.map(rewrite)); }
  fs.writeFileSync(FILE, JSON.stringify(db, null, 1)); fs.copyFileSync(FILE, path.join(__dirname, '..', 'public', 'data', 'products.json'));
  console.log('Đã cập nhật đường dẫn ảnh trong products.json');
})();
