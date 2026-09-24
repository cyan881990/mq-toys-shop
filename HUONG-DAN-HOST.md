# Hướng dẫn host website MIỄN PHÍ với database thật (Supabase)

Mô hình khuyên dùng:
- **Giao diện**: Netlify (miễn phí, HTTPS, kéo thả thư mục `public`)
- **Database**: Supabase – PostgreSQL miễn phí (500 MB, đủ cho hàng chục nghìn đơn), có sẵn API và giao diện xem/sửa bảng
- **Quản trị**: trang `/admin.html` của website (đơn hàng, sản phẩm, tồn kho, khách hàng, duyệt đánh giá, cài đặt phí ship)

Không cần server riêng, không mất phí duy trì.

---

## Bước 0 – Tải ảnh về máy (khuyến nghị, làm 1 lần)
```bash
node scripts/download-images.js
```
Ảnh nằm trong `public/img/`. Sau đó chạy lại `python3`/hoặc nhờ tôi tạo lại `supabase/02_seed.sql` với đường dẫn ảnh mới (hoặc cứ dùng ảnh CDN Shopee như hiện tại).

## Bước 1 – Tạo database Supabase (5 phút)
1. Vào https://supabase.com → **Start your project** → đăng nhập bằng GitHub/Google (miễn phí).
2. **New project**: đặt tên `mqtoys`, chọn mật khẩu database (lưu lại), Region: **Southeast Asia (Singapore)** → Create.
3. Chờ ~1 phút. Vào **SQL Editor** (menu trái) → **New query**:
   - Mở file `supabase/01_schema.sql`, copy toàn bộ, dán vào, bấm **Run** → thấy "Success".
   - Tạo query mới, dán toàn bộ `supabase/02_seed.sql` → **Run** (nạp 121 sản phẩm, 13 danh mục, 157 đánh giá).
4. Vào **Table Editor** kiểm tra: bảng `products` có 121 dòng.
5. Tạo tài khoản quản trị: **Authentication → Users → Add user → Create new user**: nhập email + mật khẩu của bạn, tick *Auto Confirm User*.
6. Lấy khóa kết nối: **Project Settings → API**: copy **Project URL** và **anon public** key.

## Bước 2 – Cấu hình website
Mở `public/config.js`:
```js
window.MQ_CONFIG = {
  supabaseUrl: "https://xxxxxxxx.supabase.co",
  supabaseAnonKey: "eyJhbGciOi...",   // anon public key
  orderEndpoint: ""
};
```
> Khóa `anon` được phép công khai: nhờ Row Level Security, người lạ chỉ gọi được các hàm đặt hàng / xem catalog, không đọc/sửa được đơn hàng hay khách hàng.

## Bước 3 – Đưa lên Netlify (3 phút)
1. Vào https://app.netlify.com/drop, đăng nhập miễn phí.
2. **Kéo thả thư mục `public`** vào trang.
3. Nhận link `https://ten-ngau-nhien.netlify.app` → đổi tên tại **Site configuration → Change site name** (ví dụ `mqtoys.netlify.app`).
4. Mở `https://mqtoys.netlify.app/admin.html`, đăng nhập bằng email/mật khẩu đã tạo ở Bước 1.5.

## Vận hành hằng ngày
- **Đơn hàng**: admin → Đơn hàng: lọc theo trạng thái, bấm gọi SĐT, đổi trạng thái, ghi chú nội bộ, xuất CSV.
- **Sản phẩm**: sửa giá, giá gốc (tự tính % giảm), tồn kho (để trống = không giới hạn; khi đặt hàng tồn kho tự trừ), ẩn/hiện sản phẩm.
- **Khách hàng**: tự tạo theo SĐT, thống kê số đơn và tổng chi.
- **Đánh giá**: khách viết trên web sẽ chờ duyệt; đánh giá Shopee đã duyệt sẵn.
- **Cài đặt**: phí ship, mức freeship, tên/mô tả shop.
- Thêm sản phẩm mới / sửa mô tả, ảnh: dùng **Table Editor** trong Supabase (bảng `products`, `product_images`, `product_categories`) – hoặc nhờ tôi bổ sung form thêm sản phẩm vào admin.
- Sao lưu: Supabase → Database → Backups (tự động hằng ngày ở gói Free giữ 7 ngày), hoặc xuất CSV từng bảng trong Table Editor.

## Cấu trúc database
| Bảng | Nội dung |
|---|---|
| `categories` | danh mục, thứ tự hiển thị |
| `products` | sản phẩm: giá, giá gốc, tồn kho, đã bán, mô tả, thông số, trạng thái hiển thị |
| `product_images` / `product_variants` / `product_models` | ảnh, nhóm phân loại, từng SKU (giá & tồn theo phân loại) |
| `product_categories` | sản phẩm thuộc nhiều danh mục |
| `reviews` | đánh giá (Shopee + web), ảnh, phản hồi shop, trạng thái duyệt |
| `customers` | khách theo SĐT: số đơn, tổng chi |
| `orders` / `order_items` | đơn COD và chi tiết từng dòng |
| `settings` | phí ship, freeship, thông tin shop |

Hàm API cho website: `get_catalog()`, `place_order(payload)` (tính lại giá phía DB, trừ tồn kho, cập nhật khách), `get_order(code, phone)`, `submit_review(...)`. View `v_dashboard` cho trang tổng quan.

---

## Phương án thay thế


### A. Google Sheets thay cho database (đơn giản hơn, ít tính năng)
Mô hình: **giao diện tĩnh** trên Netlify (miễn phí, có HTTPS, tên miền `xxx.netlify.app`) + **đơn hàng lưu vào Google Sheets** qua Google Apps Script (miễn phí, có email báo đơn mới). Không cần server, không mất phí duy trì.

> Có thể thay Netlify bằng Cloudflare Pages hoặc GitHub Pages – cách làm tương tự (chỉ upload thư mục `public`).

---

## Bước 0 – Tải ảnh về máy (khuyến nghị, làm 1 lần)
Ảnh hiện đang lấy từ CDN Shopee; khi web công khai nên tự host ảnh cho ổn định:
```bash
node scripts/download-images.js
```
Ảnh sẽ nằm trong `public/img/` (~600 ảnh) và `products.json` được cập nhật tự động.

## Bước 1 – Tạo Google Sheet nhận đơn (5 phút)
1. Vào https://sheets.new → tạo bảng tính mới, đặt tên ví dụ **"MQ Toys – Đơn hàng"**.
2. Menu **Tiện ích mở rộng → Apps Script**.
3. Xoá nội dung có sẵn, dán toàn bộ file `google-apps-script/Code.gs` vào.
4. Sửa 2 dòng đầu:
   - `SITE_URL` = địa chỉ web sau khi host (Bước 2). Tạm thời có thể để nguyên, sửa sau.
   - `NOTIFY_EMAIL` = email của bạn để nhận thông báo đơn mới (hoặc để trống).
5. Bấm **Triển khai → Tùy chọn triển khai mới** (Deploy → New deployment):
   - Loại: **Ứng dụng web (Web app)**
   - Thực thi với tư cách: **Tôi (Me)**
   - Ai có quyền truy cập: **Bất kỳ ai (Anyone)**
   - Bấm Triển khai → cấp quyền (chọn tài khoản Google → Advanced → Go to … (unsafe) → Allow).
6. Copy **URL Web app** dạng `https://script.google.com/macros/s/AKfycb.../exec`.

## Bước 2 – Cấu hình website
Mở `public/config.js`, dán URL vừa copy:
```js
window.MQ_CONFIG = {
  orderEndpoint: "https://script.google.com/macros/s/AKfycb.../exec"
};
```

## Bước 3 – Đưa lên Netlify (3 phút, không cần tài khoản GitHub)
1. Vào https://app.netlify.com/drop (đăng nhập/đăng ký miễn phí bằng email hoặc Google).
2. **Kéo thả thư mục `public`** vào ô "Drag and drop your site folder here".
3. Vài giây sau bạn có link dạng `https://ten-ngau-nhien.netlify.app`.
4. Đổi tên cho đẹp: **Site configuration → Site details → Change site name** (ví dụ `mqtoys` → `https://mqtoys.netlify.app`).

## Bước 4 – Nối lại 2 bên
1. Quay lại Apps Script, sửa `SITE_URL = 'https://mqtoys.netlify.app'` (đúng địa chỉ web của bạn).
2. **Triển khai → Quản lý triển khai → ✏️ Chỉnh sửa → Phiên bản: Mới → Triển khai** (bắt buộc mỗi lần sửa code).
3. Mở website, đặt thử 1 đơn → kiểm tra Google Sheet có dòng mới + email thông báo.

## Xử lý đơn hàng hằng ngày
- Mở Google Sheet: mỗi đơn là 1 dòng (mã đơn, khách, SĐT, địa chỉ, sản phẩm, tổng COD).
- Đổi cột **Trạng thái** thành `Đã xác nhận` / `Đang giao` / `Hoàn thành` / `Đã hủy` – khách tra cứu trên web sẽ thấy đúng trạng thái.
- Có thể cài **Google Sheets app** trên điện thoại để nhận thông báo.

## Cập nhật sản phẩm / giá
Sửa `data/products.json` (hoặc `public/data/products.json` – 2 file giống nhau, hãy giữ đồng bộ), rồi kéo thả lại thư mục `public` lên Netlify (Deploys → Drag and drop). Nếu chỉ chạy tĩnh thì chỉ cần `public/data/products.json`.

## Tên miền riêng (tuỳ chọn)
Netlify cho phép gắn tên miền riêng miễn phí: **Domain management → Add a domain** rồi trỏ DNS theo hướng dẫn (mua tên miền `.vn`/`.com` ~200–300k/năm ở Matbao, PA, Tenten…).

---

### B. Host cả server Node (nếu muốn dùng trang /admin.html)
Dùng **Render.com** (gói Free):
1. Đưa mã nguồn lên GitHub (repo private cũng được).
2. Render → New → Web Service → chọn repo → Build command để trống, Start command: `node server.js`, thêm biến môi trường `ADMIN_KEY`.
3. Lưu ý: gói Free **ngủ sau 15 phút không truy cập** (mở lại mất ~30 giây) và **ổ đĩa không lưu lâu dài** – `data/orders.json` sẽ mất khi máy chủ khởi động lại. Vì vậy phương án Google Sheets ở trên an toàn hơn cho đơn hàng.
