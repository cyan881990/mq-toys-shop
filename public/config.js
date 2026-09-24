// ================= CẤU HÌNH WEBSITE =================
// Chọn 1 trong 3 cách lưu đơn hàng (ưu tiên theo thứ tự):
//  1) Supabase (khuyên dùng – database thật, quản lý sản phẩm/đơn/khách trong admin.html)
//  2) Google Apps Script (đơn hàng vào Google Sheets)
//  3) Để trống cả hai → dùng server.js (Node) hoặc chế độ tĩnh (đơn lưu tạm trên trình duyệt)
window.MQ_CONFIG = {
  supabaseUrl: "",      // ví dụ: "https://abcdxyz.supabase.co"
  supabaseAnonKey: "",  // Settings → API → anon public key
  orderEndpoint: ""     // (Cách 2) URL Web App Google Apps Script
};
