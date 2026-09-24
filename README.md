# M&Q Toys – Website cửa hàng đồ chơi (giỏ hàng + COD)

Dữ liệu 121 sản phẩm, 13 danh mục và 157 đánh giá được lấy từ gian hàng Shopee **mqhometech** (24/09/2026).

## Host miễn phí + database
Xem `HUONG-DAN-HOST.md` (Netlify + Supabase PostgreSQL, trang admin đầy đủ).

## Chạy thử
```bash
node server.js     # http://localhost:3000  (không cần cài thư viện, chỉ cần Node.js 18+)
```
- Cửa hàng: `http://localhost:3000`
- Quản lý đơn COD: `http://localhost:3000/admin.html` (mã mặc định `mq-admin-2026`, đổi bằng `ADMIN_KEY=... npm start`)
- Đơn hàng lưu tại `data/orders.json`

## Cấu trúc
```
server.js            Express: trang tĩnh + API sản phẩm + nhận đơn COD + quản trị
data/products.json   Dữ liệu sản phẩm (sửa file này để thêm/bớt sản phẩm, đổi giá)
data/orders.json     Đơn hàng
public/index.html    Giao diện cửa hàng (SPA)
public/app.js        Logic: danh mục, tìm kiếm, chi tiết, giỏ hàng, thanh toán COD, tra cứu đơn
public/styles.css    Giao diện
public/admin.html    Trang quản lý đơn hàng
scripts/download-images.js  Tải ảnh về máy chủ (thay vì dùng CDN Shopee)
```

## Ảnh sản phẩm
Mặc định ảnh tải trực tiếp từ CDN Shopee (`down-vn.img.susercontent.com`). Để website không phụ thuộc Shopee, chạy:
```bash
npm run download-images
```
Ảnh sẽ được lưu vào `public/img/` và `products.json` được cập nhật.

## Chạy tĩnh (không cần Node)
Có thể mở thư mục `public/` bằng bất kỳ hosting tĩnh nào (Netlify, Vercel, GitHub Pages…): website vẫn hoạt động, đọc `public/data/products.json`; đơn hàng khi đó chỉ lưu tạm trên trình duyệt khách (chế độ offline) – để nhận đơn thật cần chạy `server.js`.

## Tuỳ chỉnh
- Phí ship / mức freeship: `SHIP`, `FREESHIP` trong `public/app.js` và `server.js`.
- Thêm sản phẩm: thêm object vào `data/products.json` (id, name, slug, price, images[], categories[], description…).
- Danh mục trống (Đất Sét, Giáo Dục, Động Vật) tự ẩn cho đến khi có sản phẩm.
