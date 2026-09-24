-- Tồn kho để trống (không giới hạn) – vào admin để đặt số lượng thật.
-- Dữ liệu nạp từ Shopee mqhometech (24/09/2026). Chạy SAU 01_schema.sql
begin;
insert into categories(id,name,slug,sort_order) values ('272906965','Phụ Kiện Trò Chơi Pokémon Mezastar','phu-kien-tro-choi-pokemon-mezastar',0) on conflict (id) do update set name=excluded.name, slug=excluded.slug, sort_order=excluded.sort_order;
insert into categories(id,name,slug,sort_order) values ('274115770','Kit Card Lắp Ghép In 3D','kit-card-lap-ghep-in-3d',1) on conflict (id) do update set name=excluded.name, slug=excluded.slug, sort_order=excluded.sort_order;
insert into categories(id,name,slug,sort_order) values ('271399347','Hàng Mới Nhập','hang-moi-nhap',2) on conflict (id) do update set name=excluded.name, slug=excluded.slug, sort_order=excluded.sort_order;
insert into categories(id,name,slug,sort_order) values ('271083241','Hàng Thanh Lý Siêu Giảm Giá','hang-thanh-ly-sieu-giam-gia',3) on conflict (id) do update set name=excluded.name, slug=excluded.slug, sort_order=excluded.sort_order;
insert into categories(id,name,slug,sort_order) values ('271741642','Đồ Chơi Lắp Ráp','do-choi-lap-rap',4) on conflict (id) do update set name=excluded.name, slug=excluded.slug, sort_order=excluded.sort_order;
insert into categories(id,name,slug,sort_order) values ('271741704','Đồ Chơi Búp Bê','do-choi-bup-be',5) on conflict (id) do update set name=excluded.name, slug=excluded.slug, sort_order=excluded.sort_order;
insert into categories(id,name,slug,sort_order) values ('271742074','Đồ Chơi Xe - Máy Bay','do-choi-xe-may-bay',6) on conflict (id) do update set name=excluded.name, slug=excluded.slug, sort_order=excluded.sort_order;
insert into categories(id,name,slug,sort_order) values ('271741912','Đồ Chơi Mô Phỏng - Nhập Vai','do-choi-mo-phong-nhap-vai',7) on conflict (id) do update set name=excluded.name, slug=excluded.slug, sort_order=excluded.sort_order;
insert into categories(id,name,slug,sort_order) values ('271742027','Đồ Chơi Thể Thao - Vận Động','do-choi-the-thao-van-dong',8) on conflict (id) do update set name=excluded.name, slug=excluded.slug, sort_order=excluded.sort_order;
insert into categories(id,name,slug,sort_order) values ('271742141','Đồ Chơi Đất Sét','do-choi-dat-set',9) on conflict (id) do update set name=excluded.name, slug=excluded.slug, sort_order=excluded.sort_order;
insert into categories(id,name,slug,sort_order) values ('271742212','Đồ Chơi Giáo Dục','do-choi-giao-duc',10) on conflict (id) do update set name=excluded.name, slug=excluded.slug, sort_order=excluded.sort_order;
insert into categories(id,name,slug,sort_order) values ('272425870','Đồ Chơi Động Vật','do-choi-dong-vat',11) on conflict (id) do update set name=excluded.name, slug=excluded.slug, sort_order=excluded.sort_order;
insert into categories(id,name,slug,sort_order) values ('khac','Sản Phẩm Khác','san-pham-khac',12) on conflict (id) do update set name=excluded.name, slug=excluded.slug, sort_order=excluded.sort_order;
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('52712127117','Thẻ QR 100% Dynamax Mezastar Hỗ Trợ Chiến Đấu 2 Mặt Quét Nhanh Tặng Kèm Bọc Thẻ Cao Cấp','the-qr-100-dynamax-mezastar-ho-tro-chien-dau-2-mat-quet-nhanh-tang-kem-boc-the-c-27117',104000,null,208000,50,null,93,5.00,14,'{0,0,0,0,14}','','🔥 THẺ QR 100% DYNAMAX MEZASTAR – HỖ TRỢ CHIẾN ĐẤU QUÉT NHANH 2 MẶT ⚔️
Trang bị thẻ QR 100% Dynamax Mezastar giúp người chơi dễ dàng kích hoạt tính năng hỗ trợ chiến đấu chỉ với thao tác quét mã nhanh trên máy Mezastar tương thích.
Thiết kế 2 mặt sắc nét, màu in chất lượng cao, phù hợp cả mục đích sử dụng trong game và sưu tầm lâu dài.
⭐ ĐIỂM NỔI BẬT
✔️ Thẻ QR 100% Dynamax, quét nhanh và ổn định
✔️ Hỗ trợ kích hoạt tính năng Dynamax trong trận đấu
✔️ Thiết kế 2 mặt đẹp mắt, dễ sưu tầm
✔️ In màu sắc nét, hình ảnh rõ ràng
✔️ Chất liệu bền, hạn chế cong vênh khi sử dụng
✔️ Kích thước nhỏ gọn, dễ mang theo
✔️ Tăng trải nghiệm chiến đấu trong Mezastar
🎮 CÔNG DỤNG SẢN PHẨM
🎯 Quét QR để kích hoạt hỗ trợ chiến đấu
🎯 Bổ sung tính năng Dynamax trong game
🎯 Mở rộng bộ sưu tập thẻ Mezastar
🎯 Phù hợp người chơi và người sưu tầm
🎯 Làm quà tặng cho fan game arcade
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Thẻ QR 100% Dynamax Mezastar
• Loại: Thẻ QR hỗ trợ chiến đấu
• Thiết kế: 2 mặt
• Công dụng: Kích hoạt Dynamax trên máy tương thích
• Tình trạng: Mới 100%
• Tặng kèm: Bọc bảo vệ thẻ
💥 VÌ SAO NÊN CHỌN SẢN PHẨM NÀY?
✔️ Quét nhanh, dễ sử dụng
✔️ Tăng trải nghiệm chiến đấu rõ rệt
✔️ Thiết kế đẹp, dễ sưu tầm
✔️ Giá hợp lý, dễ tiếp cận
✔️ Phù hợp cả người mới và người chơi lâu năm
💖 CAM KẾT TỪ SHOP
✔️ Sản phẩm đúng mô tả 100%
✔️ Đóng gói cẩn thận chống hư hỏng
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi gửi hàng
#DynamaxMezastar #TheQRDynamax #MezastarVN #TheQRMezastar #HotroChienDau #TheSuuTam #PhuKienMezastar #The2Mat #QRMezastar #GamingCard #TheQuetMa #GameArcade #BoTheMezastar #TheDynamax #DoChoiSuuTam','[{"n": "Recommended Age", "v": "6 - 14 years"}, {"n": "Manufacturer/trader address", "v": "Updating"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/52712127117') on conflict (id) do nothing;
delete from product_images where product_id='52712127117';
insert into product_images(product_id,url,sort_order) values ('52712127117','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpeeiw1ooydde6',0);
insert into product_images(product_id,url,sort_order) values ('52712127117','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpefaghprz7y79',1);
insert into product_images(product_id,url,sort_order) values ('52712127117','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpee6lgat05o55',2);
insert into product_images(product_id,url,sort_order) values ('52712127117','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpeebtaclslq8c',3);
insert into product_images(product_id,url,sort_order) values ('52712127117','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpee3qd6lukv5e',4);
delete from product_variants where product_id='52712127117'; delete from product_models where product_id='52712127117'; delete from product_categories where product_id='52712127117';
insert into product_categories values ('52712127117','272906965') on conflict do nothing;
insert into product_categories values ('52712127117','271399347') on conflict do nothing;
delete from reviews where product_id='52712127117' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','j*****8',5,'GIAO HÀNG NHANH
CHẤT LƯỢNG TỐT
GIÁ THÀNH HỢP LÝ
SẼ ỦNG HỘ NHIỀU LẦN NỮA
☺️☺️☺️☺️☺️','','{}'::text[],'Cảm ơn bạn đã tin tưởng ủng hộ shop, chúc bạn luôn vui vẻ và thành công nhé 💋',to_timestamp(1787304610));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','h*****9',5,'','','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop, chúc bạn cùng gia đình luôn vui vẻ ạ',to_timestamp(1785032852));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','toyboy86',5,'','','{}'::text[],'Cảm ơn bạn đã luôn ủng hộ shop , chúc bạn thật nhiều sức khỏe và thành công ạ♥️',to_timestamp(1782879166));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','vuongbubam22215698',5,'','','{}'::text[],'Cảm ơn bạn đã ủng hộ shop, chúc bạn ngày mới nhiều niềm vui hạnh phúc ạ♥️',to_timestamp(1783792375));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','16i0h9zzuh',5,'','','{}'::text[],'Cảm ơn bạn đã tin tưởng ủng hộ ạ, chúc bạn luôn gặp nhiều may mắn nhé',to_timestamp(1785815119));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','lngtunanh634',5,'','','{}'::text[],'Chân thành cảm ơn bạn đã ủng hộ shop , chúc bạn luôn may mắn nhé',to_timestamp(1784601342));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','taimk123456',5,'','','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop, chúc bạn luôn thành công và gặp nhiều may mắn',to_timestamp(1789205743));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','daniellocng',5,'','','{}'::text[],'Chân thành cảm ơn bạn đã tin tưởng ủng hộ shop, chúc bạn luôn mạnh khỏe và gặp nhiều may mắn',to_timestamp(1782990314));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','eshgm46qcq',5,'','','{}'::text[],'Cảm ơn bạn đã tin tưởng ủng hộ shop , chúc bạn cùng gia đình thật nhiều sức khỏe ạ',to_timestamp(1785924779));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','nguyenxuangiang468',5,'','','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop, chúc bạn luôn thành công và gặp nhiều may mắn ạ',to_timestamp(1783060605));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','ngocanh_8588',5,'','','{}'::text[],'Cảm ơn bạn đã ủng hộ shop, chúc bạn luôn vui vẻ và gặp nhiều may mắn',to_timestamp(1786359400));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','ngnguynchuy',5,'','','{}'::text[],'Chân thành cảm ơn bạn đã ủng hộ shop, chúc bạn luôn gặp nhiều may mắn',to_timestamp(1788785780));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','jamesdang877',5,'','','{}'::text[],'Cảm ơn bạn đã tin tưởng ủng hộ shop , chúc bạn luôn thành công ạ',to_timestamp(1788594797));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52712127117','raidencage',5,'','','{}'::text[],'Cảm ơn bạn đã tin tưởng ủng hộ shop,  chúc bạn thật nhiều sức khỏe',to_timestamp(1788316950));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('48712141792','Bộ 3 Thẻ Supports Mezastar 100% Dynamax 2 Mặt Hỗ Trợ Chiến Đấu Tặng Kèm Bọc Thẻ Cao Cấp','bo-3-the-supports-mezastar-100-dynamax-2-mat-ho-tro-chien-dau-tang-kem-boc-the-c-41792',214000,null,428000,50,null,63,5.00,14,'{0,0,0,0,14}','','🔥 BỘ 3 THẺ SUPPORTS MEZASTAR – 100% DYNAMAX 2 MẶT CAO CẤP ⚔️
Nâng cấp trải nghiệm chiến đấu với bộ thẻ Supports Mezastar 100% Dynamax, giúp người chơi mở rộng hệ thống nhân vật hỗ trợ và tăng sức mạnh đội hình trong các trận đấu.
Thiết kế 2 mặt tiện lợi, mỗi mặt là một Supports riêng biệt, mang đến nhiều lựa chọn chiến thuật hơn khi chơi Mezastar.
⭐ ĐIỂM NỔI BẬT
✔️ Bộ gồm 3 thẻ – tổng 6 mặt Supports sử dụng
✔️ Tất cả đều là phiên bản 100% Dynamax
✔️ Mỗi mặt là một Supports Mezastar riêng biệt
✔️ In sắc nét, màu đẹp, hiển thị rõ ràng
✔️ Thiết kế nhỏ gọn, dễ mang theo và sưu tầm
✔️ Chất liệu bền đẹp, sử dụng lâu dài
✔️ Tăng trải nghiệm chiến thuật trong game
🎯 CÔNG DỤNG SẢN PHẨM
🎮 Quét để kích hoạt Supports hỗ trợ chiến đấu
🎮 Mở rộng đội hình nhân vật hỗ trợ
🎮 Tăng khả năng chiến thuật trong Mezastar
🎮 Phù hợp cho người chơi và người sưu tầm
🎮 Làm quà tặng cho bé yêu thích game thẻ
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Bộ 3 thẻ Supports Mezastar
• Số lượng: 3 thẻ (6 mặt Supports)
• Phiên bản: 100% Dynamax
• Thiết kế: 2 mặt / thẻ
• Tình trạng: Mới 100%
• Tặng kèm: Bọc bảo vệ thẻ
💥 VÌ SAO NÊN CHỌN SẢN PHẨM NÀY?
✔️ Mở rộng nhanh bộ Supports trong Mezastar
✔️ Tăng trải nghiệm chiến đấu đa dạng hơn
✔️ Thiết kế đẹp, dễ sưu tầm
✔️ Giá hợp lý, hiệu quả cao
✔️ Phù hợp người chơi mới và lâu năm
💖 CAM KẾT TỪ SHOP
✔️ Sản phẩm đúng mô tả 100%
✔️ Đóng gói cẩn thận chống hư hỏng
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi gửi hàng
#SupportsMezastar #TheDynamax #MezastarVN #TheSupport #TheQRMezastar #TheSuuTam #BoTheMezastar #HoTroChienDau #The2Mat #GamingCard #PhuKienMezastar #DynamaxCard #BoSupport #TheQuetMezastar #SuuTamTheBai','[{"n": "Custom Product", "v": "No"}, {"n": "Material", "v": "Nhựa"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Khác']::text[],'https://shopee.vn/product/67689883/48712141792') on conflict (id) do nothing;
delete from product_images where product_id='48712141792';
insert into product_images(product_id,url,sort_order) values ('48712141792','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpeb7umi9s01bf',0);
insert into product_images(product_id,url,sort_order) values ('48712141792','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpeqcs4p45xqda',1);
insert into product_images(product_id,url,sort_order) values ('48712141792','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpeb8qmxn7rgdd',2);
insert into product_images(product_id,url,sort_order) values ('48712141792','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpeb9jp4pde6d5',3);
delete from product_variants where product_id='48712141792'; delete from product_models where product_id='48712141792'; delete from product_categories where product_id='48712141792';
insert into product_categories values ('48712141792','272906965') on conflict do nothing;
insert into product_categories values ('48712141792','271399347') on conflict do nothing;
delete from reviews where product_id='48712141792' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','starbucksshopping',5,'','','{}'::text[],'Cảm ơn khách iu đã luôn tin tưởng và ủng hộ, chúc bạn ngày mới nhiều thành công và Hạnh phúc♥️',to_timestamp(1782495120));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','phong84',5,'','','{}'::text[],'Cảm ơn bạn đã ủng hộ shop, chúc bạn ngày mới nhiều may mắn ạ',to_timestamp(1786930408));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','k3nyuki',5,'','','{}'::text[],'Chân thành cảm ơn khách iu đã tin tưởng ủng hộ shop , chúc bạn luôn vui vẽ và thành công ạ♥️',to_timestamp(1783844921));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','danghoanggiahuy2811',5,'','','{}'::text[],'Cảm ơn khách iu đã luôn ủng hộ shop, chúc bạn luôn thành công và gặp nhiều may mắn ạ♥️',to_timestamp(1782544092));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','yueaoi',5,'','','{}'::text[],'Cảm ơn bạn đã ủng hộ shop, chúc bạn và gia đình thật nhiều sức khỏe ạ',to_timestamp(1784521055));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','huytoku',5,'','','{}'::text[],'Shop chân thành cảm ơn khách iu đã luôn tin tưởng và ủng hộ shop, Chúc bạn cùng gia đình luôn vui vẽ hạnh phúc ạ♥️',to_timestamp(1782584955));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','walterhca',5,'','','{}'::text[],'Cảm ơn bạn đã tin tưởng ủng hộ shop, chúc bạn buổi tối thật ấm áp bên gia đình♥️',to_timestamp(1783419959));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','27wtwj4k7f',5,'','','{}'::text[],'Chân thành cảm ơn khách iu đã luôn tin tưởng và ủng hộ, chúc khách của shop ngày mới nhiều thành công và may mắn nhé♥️',to_timestamp(1782338358));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','jw4uu_yiwa',5,'','','{}'::text[],'Cảm ơn khách iu đã tin tưởng ủng hộ shop, chúc bạn ngày mới thành công và may mắn ♥️',to_timestamp(1783744683));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','8rg1pmu5w1',5,'','','{}'::text[],'Cảm ơn khách iu đã ủng hộ, chúc bạn luôn vui vẻ nhé♥️',to_timestamp(1784040487));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','antwu1990',5,'','','{}'::text[],'Cảm ơn bạn đã tặng 5⭐️ ạ, chúc bạn luôn thành công và gặp nhiều may mắn ♥️',to_timestamp(1782101093));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','vinh130303',5,'','','{}'::text[],'Cảm ơn bạn đã tặng 5⭐️, chúc bạn ngày mới nhiều may mắn và thành công ạ',to_timestamp(1781996816));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','can_nguyen1981',5,'','','{}'::text[],'Chân thành cảm ơn khách iu đã ủng hộ, chúc bạn luôn gặp nhiều may mắn',to_timestamp(1787121304));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48712141792','v*****8',5,'','','{}'::text[],'',to_timestamp(1783792375));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('55912140381','Support Mezastar Sticker QR Triệu Hồi Monster Hỗ Trợ Chiến Đấu Quét Máy Mezastar Cao Cấp','support-mezastar-sticker-qr-trieu-hoi-monster-ho-tro-chien-dau-quet-may-mezastar-40381',81000,null,135000,40,null,16,0.00,0,'{0,0,0,0,0}','','⚔️ SUPPORT MEZASTAR STICKER QR – TRIỆU HỒI MONSTER HỖ TRỢ CHIẾN ĐẤU CỰC NHANH 🔥
Nâng cấp trải nghiệm chơi game với Support Mezastar Sticker QR, phụ kiện hỗ trợ giúp người chơi dễ dàng quét mã trên máy Mezastar để triệu hồi Monster hỗ trợ chiến đấu, tạo lợi thế trong các trận đấu đầy kịch tính.
Đây là sản phẩm dành cho người chơi Mezastar muốn tối ưu đội hình, tăng chiến thuật và trải nghiệm gameplay thú vị hơn.
🌟 ĐIỂM NỔI BẬT
✔️ Quét trực tiếp trên máy Mezastar nhanh chóng
✔️ Hỗ trợ triệu hồi Monster chiến đấu trong game
✔️ QR code sắc nét, dễ nhận diện và quét ổn định
✔️ Sticker chất lượng cao, màu sắc rõ ràng
✔️ Thiết kế nhỏ gọn, dễ mang theo và sử dụng
✔️ Phù hợp sưu tầm và nâng cấp trải nghiệm game
✔️ Tiết kiệm chi phí so với việc săn thẻ hiếm
⚔️ CÔNG DỤNG SẢN PHẨM
🎮 Hỗ trợ người chơi Mezastar trong trận đấu
🎮 Quét QR để kích hoạt Monster hỗ trợ
🎮 Tăng thêm chiến thuật khi thi đấu
🎮 Phù hợp cả người mới và người chơi lâu năm
🎮 Sưu tầm Monster hỗ trợ độc đáo
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Support Mezastar Sticker QR
• Loại: Sticker QR hỗ trợ chiến đấu
• Công dụng: Quét trên máy Mezastar
• Tình trạng: Mới 100%
• Đóng gói: Cẩn thận trước khi giao
💥 VÌ SAO NÊN CHỌN SẢN PHẨM NÀY?
✔️ Quét nhanh, dễ sử dụng
✔️ Hỗ trợ chiến đấu trong Mezastar
✔️ Thiết kế đẹp, sắc nét
✔️ Giá hợp lý cho người chơi
✔️ Phù hợp sưu tầm lâu dài
💖 CAM KẾT TỪ SHOP
✔️ Hàng đúng mô tả 100%
✔️ Đóng gói cẩn thận chống hư hỏng
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi gửi hàng
#SupportMezastar #StickerQR #MezastarVN #MonsterSupport #QRMezastar #StickerGame #PhuKienMezastar #TrieuHoiMonster #HoTroChienDau #GameMezastar #StickerQRGame #DoChoiSuuTam #BoStickerQR #MezastarSticker #GamingSupport','[{"n": "Recommended Age", "v": "6 - 14 years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/55912140381') on conflict (id) do nothing;
delete from product_images where product_id='55912140381';
insert into product_images(product_id,url,sort_order) values ('55912140381','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpes2phljfv087',0);
insert into product_images(product_id,url,sort_order) values ('55912140381','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mperjrldxnup18',1);
insert into product_images(product_id,url,sort_order) values ('55912140381','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mperrlwun9xd88',2);
insert into product_images(product_id,url,sort_order) values ('55912140381','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpermorgx91d3b',3);
insert into product_images(product_id,url,sort_order) values ('55912140381','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpern5n034zl4b',4);
delete from product_variants where product_id='55912140381'; delete from product_models where product_id='55912140381'; delete from product_categories where product_id='55912140381';
insert into product_categories values ('55912140381','272906965') on conflict do nothing;
insert into product_categories values ('55912140381','271399347') on conflict do nothing;
delete from reviews where product_id='55912140381' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('44563583055','Bộ 3 Thẻ Supports Mezastar 100% Dynamax 2 Mặt Tặng Bọc Thẻ, Thẻ Hỗ Trợ Chiến Đấu','bo-3-the-supports-mezastar-100-dynamax-2-mat-tang-boc-the-the-ho-tro-chien-dau-83055',212000,null,400000,47,null,52,5.00,14,'{0,0,0,0,14}','','🔥 Bộ 3 Thẻ Supports Mezastar 100% Dynamax 2 Mặt – Thẻ Hỗ Trợ Chiến Đấu Tặng Kèm Bọc Thẻ Cao Cấp
Bộ 3 Thẻ Supports Mezastar 100% Dynamax là phụ kiện không thể thiếu dành cho người chơi và người yêu thích sưu tầm thẻ Mezastar. Mỗi thẻ được thiết kế 2 mặt với tổng cộng 6 Supports khác nhau, giúp mở rộng lựa chọn chiến thuật và hỗ trợ đội hình hiệu quả trong quá trình chơi. Sản phẩm được in sắc nét, chất liệu bền đẹp, đi kèm bọc bảo vệ thẻ giúp giữ thẻ luôn như mới và thuận tiện khi mang theo.
Ưu điểm nổi bật:
✅ Bộ gồm 3 thẻ Supports với tổng 6 mặt hỗ trợ khác nhau.
✅ Phiên bản Supports 100% Dynamax.
✅ Thiết kế 2 mặt tiện lợi, tối ưu không gian sử dụng.
✅ Hình ảnh sắc nét, màu sắc đẹp, dễ nhận biết.
✅ Chất liệu cứng cáp, bền bỉ, sử dụng lâu dài.
✅ Tặng kèm bọc bảo vệ thẻ cao cấp, hạn chế trầy xước.
✅ Phù hợp cho người chơi Mezastar và người sưu tầm thẻ game.
Thông tin sản phẩm:
Tên sản phẩm: Bộ 3 Thẻ Supports Mezastar
Số lượng: 3 thẻ (6 mặt Supports)
Phiên bản: 100% Dynamax
Thiết kế: 2 mặt/thẻ
Tình trạng: Mới 100%
Phụ kiện đi kèm: 03 bọc bảo vệ thẻ cao cấp
Công dụng:
Hỗ trợ chiến đấu và kích hoạt Supports khi chơi Mezastar.
Mở rộng đội hình và tăng tính đa dạng trong chiến thuật.
Bổ sung vào bộ sưu tập thẻ Mezastar.
Thích hợp làm quà tặng cho người yêu thích thẻ game Mezastar.
📌 Lưu ý: Sản phẩm là thẻ Supports dùng cho trò chơi Mezastar, không phải đồ chơi điện tử và không bao gồm máy chơi game.
💖 Cam kết từ shop:
✔️ Sản phẩm đúng hình ảnh và mô tả.
✔️ Kiểm tra kỹ trước khi đóng gói.
✔️ Đóng gói cẩn thận, hạn chế cong và trầy xước trong quá trình vận chuyển.
✔️ Hỗ trợ đổi trả theo chính sách của Shopee nếu sản phẩm gặp lỗi từ nhà bán.
#Mezastar #SupportsMezastar #TheSupports #TheMezastar #TheDynamax #Dynamax #The2Mat #TheGame #GamingCard #TheSuuTam #PhuKienMezastar #TheHoTro #MezastarVN #QuaTangChoBe #BoTheMezastar','[{"n": "Recommended Age", "v": "2 - 6 years"}, {"n": "Custom Product", "v": "No"}, {"n": "Material", "v": "Nhựa"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Khác']::text[],'https://shopee.vn/product/67689883/44563583055') on conflict (id) do nothing;
delete from product_images where product_id='44563583055';
insert into product_images(product_id,url,sort_order) values ('44563583055','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdd8u8j74zm69',0);
insert into product_images(product_id,url,sort_order) values ('44563583055','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdd8ugmjrim95',1);
insert into product_images(product_id,url,sort_order) values ('44563583055','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdd98cish6z2d',2);
insert into product_images(product_id,url,sort_order) values ('44563583055','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdd98clsmx8ad',3);
insert into product_images(product_id,url,sort_order) values ('44563583055','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdd98cj0wlpea',4);
delete from product_variants where product_id='44563583055'; delete from product_models where product_id='44563583055'; delete from product_categories where product_id='44563583055';
insert into product_categories values ('44563583055','khac') on conflict do nothing;
delete from reviews where product_id='44563583055' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','vuongbubam22215698',5,'','','{}'::text[],'Cảm ơn bạn đã tin tưởng ủng hộ, chúc bạn ngày mới nhiều may mắn nhé♥️',to_timestamp(1783792375));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','p*****4',5,'','','{}'::text[],'',to_timestamp(1786930408));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','c*****1',5,'','','{}'::text[],'',to_timestamp(1787121304));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','y*****i',5,'','','{}'::text[],'',to_timestamp(1784521055));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','k*****i',5,'','','{}'::text[],'',to_timestamp(1783844921));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','8*****1',5,'','','{}'::text[],'',to_timestamp(1784040487));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','j*****a',5,'','','{}'::text[],'',to_timestamp(1783744683));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','w*****a',5,'','','{}'::text[],'',to_timestamp(1783419959));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','s*****g',5,'','','{}'::text[],'',to_timestamp(1782495120));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','h*****u',5,'','','{}'::text[],'',to_timestamp(1782584955));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','d*****1',5,'','','{}'::text[],'',to_timestamp(1782544092));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','a*****0',5,'','','{}'::text[],'',to_timestamp(1782101093));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','2*****f',5,'','','{}'::text[],'',to_timestamp(1782338358));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44563583055','v*****3',5,'','','{}'::text[],'',to_timestamp(1781996816));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('49263636695','Thẻ QR 100% Dynamax Mezastar Hỗ Trợ Chiến Đấu 2 Mặt - Quét Nhanh Tặng Kèm Bọc Thẻ Cao Cấp','the-qr-100-dynamax-mezastar-ho-tro-chien-dau-2-mat-quet-nhanh-tang-kem-boc-the-c-36695',93600,null,180000,48,null,52,5.00,16,'{0,0,0,0,16}','','🔥 THẺ QR 100% DYNAMAX MEZASTAR – HỖ TRỢ CHIẾN ĐẤU QUÉT NHANH 2 MẶT ⚔️
Trang bị thẻ QR 100% Dynamax Mezastar giúp người chơi dễ dàng kích hoạt tính năng hỗ trợ chiến đấu chỉ với thao tác quét mã nhanh trên máy Mezastar tương thích.
Thiết kế 2 mặt sắc nét, màu in chất lượng cao, phù hợp cả mục đích sử dụng trong game và sưu tầm lâu dài.
⭐ ĐIỂM NỔI BẬT
✔️ Thẻ QR 100% Dynamax, quét nhanh và ổn định
✔️ Hỗ trợ kích hoạt tính năng Dynamax trong trận đấu
✔️ Thiết kế 2 mặt đẹp mắt, dễ sưu tầm
✔️ In màu sắc nét, hình ảnh rõ ràng
✔️ Chất liệu bền, hạn chế cong vênh khi sử dụng
✔️ Kích thước nhỏ gọn, dễ mang theo
✔️ Tăng trải nghiệm chiến đấu trong Mezastar
🎮 CÔNG DỤNG SẢN PHẨM
🎯 Quét QR để kích hoạt hỗ trợ chiến đấu
🎯 Bổ sung tính năng Dynamax trong game
🎯 Mở rộng bộ sưu tập thẻ Mezastar
🎯 Phù hợp người chơi và người sưu tầm
🎯 Làm quà tặng cho fan game arcade
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Thẻ QR 100% Dynamax Mezastar
• Loại: Thẻ QR hỗ trợ chiến đấu
• Thiết kế: 2 mặt
• Công dụng: Kích hoạt Dynamax trên máy tương thích
• Tình trạng: Mới 100%
• Tặng kèm: Bọc bảo vệ thẻ
💥 VÌ SAO NÊN CHỌN SẢN PHẨM NÀY?
✔️ Quét nhanh, dễ sử dụng
✔️ Tăng trải nghiệm chiến đấu rõ rệt
✔️ Thiết kế đẹp, dễ sưu tầm
✔️ Giá hợp lý, dễ tiếp cận
✔️ Phù hợp cả người mới và người chơi lâu năm
💖 CAM KẾT TỪ SHOP
✔️ Sản phẩm đúng mô tả 100%
✔️ Đóng gói cẩn thận chống hư hỏng
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi gửi hàng
#DynamaxMezastar #TheQRDynamax #MezastarVN #TheQRMezastar #HotroChienDau #TheSuuTam #PhuKienMezastar #The2Mat #QRMezastar #GamingCard #TheQuetMa #GameArcade #BoTheMezastar #TheDynamax #DoChoiSuuTam','[{"n": "Recommended Age", "v": "6 - 14 years"}, {"n": "Manufacturer/trader address", "v": "Updating"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/49263636695') on conflict (id) do nothing;
delete from product_images where product_id='49263636695';
insert into product_images(product_id,url,sort_order) values ('49263636695','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekqgb36ewyf7',0);
insert into product_images(product_id,url,sort_order) values ('49263636695','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekqgb6c6x7c4',1);
insert into product_images(product_id,url,sort_order) values ('49263636695','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekqgb51u6869',2);
insert into product_images(product_id,url,sort_order) values ('49263636695','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekqgb538qo6b',3);
insert into product_images(product_id,url,sort_order) values ('49263636695','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekqgb6ascr99',4);
delete from product_variants where product_id='49263636695'; delete from product_models where product_id='49263636695'; delete from product_categories where product_id='49263636695';
insert into product_categories values ('49263636695','khac') on conflict do nothing;
delete from reviews where product_id='49263636695' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','lampt0712',5,'','',array['https://down-vn.img.susercontent.com/file/vn-11134103-81ztc-mrkca5bsvoxx49']::text[],'Chân thành cảm ơn bạn đã ủng hộ shop, chúc bạn cùng gia đình buổi tối thật ấm áp',to_timestamp(1786029115));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','hien_bui_92',5,'','','{}'::text[],'Chân thành cảm ơn khách iu đã ủng hộ shop , chúc bạn luôn gặp nhiều may mắn',to_timestamp(1785765341));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','12c10.05.thnht',5,'','','{}'::text[],'Cảm ơn khách iu đã tin tưởng ủng hộ shop, chúc bạn luôn gặp nhiều may mắn và thành công',to_timestamp(1786944604));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','t*****6',5,'','','{}'::text[],'',to_timestamp(1789205743));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','n*****y',5,'','','{}'::text[],'',to_timestamp(1788785780));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','j*****7',5,'','','{}'::text[],'',to_timestamp(1788594797));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','r*****e',5,'','','{}'::text[],'',to_timestamp(1788316950));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','n*****8',5,'','','{}'::text[],'',to_timestamp(1786359400));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','e*****q',5,'','','{}'::text[],'',to_timestamp(1785924779));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','1*****h',5,'','','{}'::text[],'',to_timestamp(1785815119));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','h*****9',5,'','','{}'::text[],'',to_timestamp(1785032852));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','l*****4',5,'','','{}'::text[],'',to_timestamp(1784601342));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','v*****8',5,'','','{}'::text[],'',to_timestamp(1783792375));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','d*****g',5,'','','{}'::text[],'',to_timestamp(1782990314));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','n*****8',5,'','','{}'::text[],'',to_timestamp(1783060605));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49263636695','t*****6',5,'','','{}'::text[],'',to_timestamp(1782879166));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('44762146522','Support Mezastar Sticker QR Triệu Hồi Monster Hỗ Trợ Chiến Đấu Quét Máy Mezastar 2 Mặt','support-mezastar-sticker-qr-trieu-hoi-monster-ho-tro-chien-dau-quet-may-mezastar-46522',81000,null,135000,40,null,10,4.67,3,'{0,0,0,1,2}','','🔥 SUPPORT MEZASTAR STICKER QR – TRIỆU HỒI MONSTER HỖ TRỢ CHIẾN ĐẤU CỰC NHANH ⚔️
Nâng cấp sức mạnh đội hình với Support Mezastar Sticker QR, phụ kiện giúp người chơi dễ dàng quét mã trên máy Mezastar để triệu hồi Monster hỗ trợ chiến đấu, tạo lợi thế rõ rệt trong những trận đấu đầy kịch tính.
Sản phẩm phù hợp cho người chơi Mezastar muốn tăng chiến thuật, mở rộng lựa chọn và trải nghiệm game hấp dẫn hơn.
🌟 ĐIỂM NỔI BẬT
✔️ Quét trực tiếp trên máy Mezastar nhanh chóng, tiện lợi
✔️ Hỗ trợ triệu hồi Monster trong chiến đấu
✔️ QR code sắc nét, dễ nhận diện và quét ổn định
✔️ Sticker in chất lượng cao, màu sắc rõ ràng
✔️ Thiết kế nhỏ gọn, dễ mang theo sử dụng
✔️ Phù hợp sưu tầm và nâng cấp trải nghiệm game
✔️ Tiết kiệm chi phí hơn so với săn thẻ hiếm
⚔️ CÔNG DỤNG SẢN PHẨM
🎮 Hỗ trợ người chơi Mezastar trong trận đấu
🎮 Quét QR để kích hoạt Monster hỗ trợ
🎮 Tăng thêm lựa chọn chiến thuật khi thi đấu
🎮 Phù hợp cho cả người mới và người chơi lâu năm
🎮 Sưu tầm Monster hỗ trợ độc đáo
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Support Mezastar Sticker QR
• Loại sản phẩm: Sticker QR hỗ trợ chiến đấu
• Công dụng: Quét trên máy Mezastar
• Tình trạng: Mới 100%
• Đóng gói: Cẩn thận trước khi giao
💥 VÌ SAO NÊN CHỌN SẢN PHẨM NÀY?
✔️ Quét nhanh, dễ sử dụng
✔️ Hỗ trợ triệu hồi Monster chiến đấu
✔️ Thiết kế đẹp mắt, sắc nét
✔️ Giá hợp lý cho người chơi Mezastar
✔️ Phù hợp sưu tầm lâu dài
💖 CAM KẾT TỪ SHOP
✔️ Hàng đúng mô tả 100%
✔️ Đóng gói cẩn thận chống hư hỏng
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi gửi hàng
#SupportMezastar #StickerQR #MezastarVN #MonsterSupport #QRMezastar #StickerGame #PhuKienMezastar #TrieuHoiMonster #HoTroChienDau #GameMezastar #StickerQRGame #DoChoiSuuTam #BoStickerQR #MezastarSticker #GamingSupport','[{"n": "Recommended Age", "v": "2 - 6 years"}, {"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Custom Product", "v": "No"}, {"n": "Material", "v": "Giấy"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Khác']::text[],'https://shopee.vn/product/67689883/44762146522') on conflict (id) do nothing;
delete from product_images where product_id='44762146522';
insert into product_images(product_id,url,sort_order) values ('44762146522','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpeppfwq1cln8a',0);
insert into product_images(product_id,url,sort_order) values ('44762146522','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mper2819yqkhb8',1);
insert into product_images(product_id,url,sort_order) values ('44762146522','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpe7gn911on5cb',2);
insert into product_images(product_id,url,sort_order) values ('44762146522','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpe7iuwqgky4c9',3);
insert into product_images(product_id,url,sort_order) values ('44762146522','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpe82yuclxcb97',4);
delete from product_variants where product_id='44762146522'; delete from product_models where product_id='44762146522'; delete from product_categories where product_id='44762146522';
insert into product_categories values ('44762146522','272906965') on conflict do nothing;
insert into product_categories values ('44762146522','271399347') on conflict do nothing;
delete from reviews where product_id='44762146522' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44762146522','viet667711',4,'','','{}'::text[],'E cảm ơn a, c đã ủng hộ shop ạ, chúc a,c luôn may mắn và thành công ạ',to_timestamp(1782528915));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44762146522','trinhhoanghai91',5,'','','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop , chúc bạn luôn vui vẻ và thành công ạ♥️',to_timestamp(1783329166));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('44762146522','jamesdang877',5,'','','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop, chúc bạn luôn mạnh khoẻ và thành công',to_timestamp(1788594797));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('54163616257','Support Mezastar Sticker QR Triệu Hồi Monster - Hỗ Trợ Chiến Đấu Quét Máy Mezastar Cao Cấp','support-mezastar-sticker-qr-trieu-hoi-monster-ho-tro-chien-dau-quet-may-mezastar-16257',81000,null,135000,40,null,2,0.00,0,'{0,0,0,0,0}','','⚔️ SUPPORT MEZASTAR STICKER QR – TRIỆU HỒI MONSTER HỖ TRỢ CHIẾN ĐẤU CỰC NHANH 🔥
Nâng cấp trải nghiệm chơi game với Support Mezastar Sticker QR, phụ kiện hỗ trợ giúp người chơi dễ dàng quét mã trên máy Mezastar để triệu hồi Monster hỗ trợ chiến đấu, tạo lợi thế trong các trận đấu đầy kịch tính.
Đây là sản phẩm dành cho người chơi Mezastar muốn tối ưu đội hình, tăng chiến thuật và trải nghiệm gameplay thú vị hơn.
🌟 ĐIỂM NỔI BẬT
✔️ Quét trực tiếp trên máy Mezastar nhanh chóng
✔️ Hỗ trợ triệu hồi Monster chiến đấu trong game
✔️ QR code sắc nét, dễ nhận diện và quét ổn định
✔️ Sticker chất lượng cao, màu sắc rõ ràng
✔️ Thiết kế nhỏ gọn, dễ mang theo và sử dụng
✔️ Phù hợp sưu tầm và nâng cấp trải nghiệm game
✔️ Tiết kiệm chi phí so với việc săn thẻ hiếm
⚔️ CÔNG DỤNG SẢN PHẨM
🎮 Hỗ trợ người chơi Mezastar trong trận đấu
🎮 Quét QR để kích hoạt Monster hỗ trợ
🎮 Tăng thêm chiến thuật khi thi đấu
🎮 Phù hợp cả người mới và người chơi lâu năm
🎮 Sưu tầm Monster hỗ trợ độc đáo
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Support Mezastar Sticker QR
• Loại: Sticker QR hỗ trợ chiến đấu
• Công dụng: Quét trên máy Mezastar
• Tình trạng: Mới 100%
• Đóng gói: Cẩn thận trước khi giao
💥 VÌ SAO NÊN CHỌN SẢN PHẨM NÀY?
✔️ Quét nhanh, dễ sử dụng
✔️ Hỗ trợ chiến đấu trong Mezastar
✔️ Thiết kế đẹp, sắc nét
✔️ Giá hợp lý cho người chơi
✔️ Phù hợp sưu tầm lâu dài
💖 CAM KẾT TỪ SHOP
✔️ Hàng đúng mô tả 100%
✔️ Đóng gói cẩn thận chống hư hỏng
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi gửi hàng
#SupportMezastar #StickerQR #MezastarVN #MonsterSupport #QRMezastar #StickerGame #PhuKienMezastar #TrieuHoiMonster #HoTroChienDau #GameMezastar #StickerQRGame #DoChoiSuuTam #BoStickerQR #MezastarSticker #GamingSupport','[{"n": "Recommended Age", "v": "6 - 14 years"}, {"n": "Warranty Type", "v": "No Warranty"}, {"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/54163616257') on conflict (id) do nothing;
delete from product_images where product_id='54163616257';
insert into product_images(product_id,url,sort_order) values ('54163616257','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekapc9dgy5ac',0);
insert into product_images(product_id,url,sort_order) values ('54163616257','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekapc7f8jwa7',1);
insert into product_images(product_id,url,sort_order) values ('54163616257','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekapc7gn4c43',2);
insert into product_images(product_id,url,sort_order) values ('54163616257','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekapcfaz9d60',3);
insert into product_images(product_id,url,sort_order) values ('54163616257','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekapc66adqed',4);
delete from product_variants where product_id='54163616257'; delete from product_models where product_id='54163616257'; delete from product_categories where product_id='54163616257';
insert into product_categories values ('54163616257','khac') on conflict do nothing;
delete from reviews where product_id='54163616257' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('42732393457','Hộp Đựng 30 Thẻ Mezastar Cao Cấp - Hộp Bảo Quản Thẻ Chống Trầy Chống Va Đập Phụ Kiện Mezastar','hop-dung-30-the-mezastar-cao-cap-hop-bao-quan-the-chong-tray-chong-va-dap-phu-ki-93457',343000,null,490000,30,null,29,5.00,13,'{0,0,0,0,13}','','Hộp Đựng 30 Thẻ Mezastar Cao Cấp là phụ kiện lý tưởng dành cho người chơi và sưu tầm thẻ Mezastar, giúp bảo quản bộ sưu tập luôn gọn gàng, an toàn và bền đẹp theo thời gian. Với sức chứa lên đến 30 thẻ, hộp giúp bảo vệ thẻ khỏi trầy xước, bụi bẩn, cong mép và va đập trong quá trình cất giữ hoặc mang theo. Sản phẩm được làm từ nhựa cứng cao cấp, có độ bền cao, chịu lực tốt, kết hợp khóa cài chắc chắn giúp hạn chế bung nắp khi di chuyển. Thiết kế nhỏ gọn, đẹp mắt, thuận tiện mang theo khi đi học, đi chơi, giao lưu hoặc tham gia các buổi thi đấu. Đây là lựa chọn phù hợp cho cả người mới chơi và người sưu tầm thẻ Mezastar.
🌟 Ưu điểm nổi bật
Đựng tối đa 30 thẻ Mezastar.
Chất liệu nhựa cứng cao cấp, bền đẹp.
Khóa cài chắc chắn, hạn chế bung nắp.
Bảo vệ thẻ khỏi trầy xước, bụi bẩn và va đập.
Thiết kế nhỏ gọn, dễ dàng mang theo.
Phù hợp để bảo quản và sưu tầm thẻ lâu dài.
📦 Thông tin sản phẩm
Tên sản phẩm: Hộp Đựng 30 Thẻ Mezastar Cao Cấp
Sức chứa: 30 thẻ
Chất liệu: Nhựa cứng cao cấp
Màu sắc: Như hình
Công dụng: Bảo quản, sắp xếp và mang theo thẻ Mezastar an toàn.
📌 Lưu ý
Sản phẩm chỉ bao gồm hộp đựng.
Không bao gồm thẻ Mezastar và các phụ kiện khác.
Màu sắc thực tế có thể chênh lệch nhẹ do ánh sáng hoặc thiết bị hiển thị.
💝 Cam kết của shop
Hàng mới 100%.
Kiểm tra kỹ trước khi đóng gói.
Đóng gói cẩn thận, hạn chế va đập.
Hỗ trợ đổi trả theo chính sách Shopee.
Tư vấn nhiệt tình trước và sau khi mua.
#hopdungthemezastar #themezastar #hopdungthe #hopbaoquanthe #hopdungthegame #phukienmezastar #hopcaocap #chongtraythe #baovethe #dung30the #thegame #shopeevn','[{"n": "Recommended Age", "v": "6 - 14 years"}, {"n": "Warranty Type", "v": "No Warranty"}, {"n": "Manufacturer/trader address", "v": "Updating"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/42732393457') on conflict (id) do nothing;
delete from product_images where product_id='42732393457';
insert into product_images(product_id,url,sort_order) values ('42732393457','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekyfiq6m8fde',0);
insert into product_images(product_id,url,sort_order) values ('42732393457','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekyzkwhfcy96',1);
insert into product_images(product_id,url,sort_order) values ('42732393457','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekyfiq80svb7',2);
insert into product_images(product_id,url,sort_order) values ('42732393457','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekyfiumqz291',3);
insert into product_images(product_id,url,sort_order) values ('42732393457','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekyfig1ekgaa',4);
delete from product_variants where product_id='42732393457'; delete from product_models where product_id='42732393457'; delete from product_categories where product_id='42732393457';
insert into product_categories values ('42732393457','khac') on conflict do nothing;
delete from reviews where product_id='42732393457' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42732393457','mungnguyen120683.',5,'','','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop, chúc bạn luôn vui vẽ ạ',to_timestamp(1785823878));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42732393457','82luongyen',5,'','','{}'::text[],'Cảm ơn bạn đã ủng hộ shop , chúc bạn cùng gia đình thật nhiều sức khỏe ♥️',to_timestamp(1785383207));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42732393457','khiem532',5,'','','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop, chúc bạn luôn mạnh khỏe và thành công',to_timestamp(1788110338));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42732393457','ngohieuzin',5,'','','{}'::text[],'Cảm ơn khách iu đã tin tưởng ủng hộ shop, chúc bạn luôn vui vẻ và gặp nhiều may mắn',to_timestamp(1787888376));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42732393457','can_nguyen1981',5,'','','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop, chúc bạn luôn mạnh khoẻ và hạnh phúc',to_timestamp(1787121303));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42732393457','kqqcdsesur',5,'','','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop, chúc bạn ngày mới thành công và may mắn nhé',to_timestamp(1787505062));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42732393457','d*****c',5,'','','{}'::text[],'',to_timestamp(1783311603));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42732393457','d*****6',5,'','','{}'::text[],'',to_timestamp(1787035647));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42732393457','d*****0',5,'','','{}'::text[],'',to_timestamp(1786068693));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42732393457','h*****8',5,'','','{}'::text[],'',to_timestamp(1786036532));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42732393457','m*****7',5,'','','{}'::text[],'',to_timestamp(1785517635));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42732393457','n*****v',5,'','','{}'::text[],'',to_timestamp(1785293124));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42732393457','e*****m',5,'','','{}'::text[],'',to_timestamp(1784861178));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('54363121003','Hộp Đựng 30 Thẻ Mezastar Cao Cấp Hộp Bảo Quản Thẻ Chống Trầy Chống Va Đập Phụ Kiện Mezastar','hop-dung-30-the-mezastar-cao-cap-hop-bao-quan-the-chong-tray-chong-va-dap-phu-ki-21003',343000,null,490000,30,null,42,5.00,14,'{0,0,0,0,14}','','Hộp Đựng 30 Thẻ Mezastar Cao Cấp là phụ kiện lý tưởng dành cho người chơi và sưu tầm thẻ Mezastar, giúp bảo quản bộ sưu tập luôn gọn gàng, an toàn và bền đẹp theo thời gian. Với sức chứa lên đến 30 thẻ, hộp giúp bảo vệ thẻ khỏi trầy xước, bụi bẩn, cong mép và va đập trong quá trình cất giữ hoặc mang theo. Sản phẩm được làm từ nhựa cứng cao cấp, có độ bền cao, chịu lực tốt, kết hợp khóa cài chắc chắn giúp hạn chế bung nắp khi di chuyển. Thiết kế nhỏ gọn, đẹp mắt, thuận tiện mang theo khi đi học, đi chơi, giao lưu hoặc tham gia các buổi thi đấu. Đây là lựa chọn phù hợp cho cả người mới chơi và người sưu tầm thẻ Mezastar.
🌟 Ưu điểm nổi bật
Đựng tối đa 30 thẻ Mezastar.
Chất liệu nhựa cứng cao cấp, bền đẹp.
Khóa cài chắc chắn, hạn chế bung nắp.
Bảo vệ thẻ khỏi trầy xước, bụi bẩn và va đập.
Thiết kế nhỏ gọn, dễ dàng mang theo.
Phù hợp để bảo quản và sưu tầm thẻ lâu dài.
📦 Thông tin sản phẩm
Tên sản phẩm: Hộp Đựng 30 Thẻ Mezastar Cao Cấp
Sức chứa: 30 thẻ
Chất liệu: Nhựa cứng cao cấp
Màu sắc: Như hình
Công dụng: Bảo quản, sắp xếp và mang theo thẻ Mezastar an toàn.
📌 Lưu ý
Sản phẩm chỉ bao gồm hộp đựng.
Không bao gồm thẻ Mezastar và các phụ kiện khác.
Màu sắc thực tế có thể chênh lệch nhẹ do ánh sáng hoặc thiết bị hiển thị.
💝 Cam kết của shop
Hàng mới 100%.
Kiểm tra kỹ trước khi đóng gói.
Đóng gói cẩn thận, hạn chế va đập.
Hỗ trợ đổi trả theo chính sách Shopee.
Tư vấn nhiệt tình trước và sau khi mua.
#hopdungthemezastar #themezastar #hopdungthe #hopbaoquanthe #hopdungthegame #phukienmezastar #hopcaocap #chongtraythe #baovethe #dung30the #thegame #shopeevn','[{"n": "Recommended Age", "v": "6 - 14 years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/54363121003') on conflict (id) do nothing;
delete from product_images where product_id='54363121003';
insert into product_images(product_id,url,sort_order) values ('54363121003','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdfr3e5nuod2f',0);
insert into product_images(product_id,url,sort_order) values ('54363121003','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mq3fbm01a80074',1);
insert into product_images(product_id,url,sort_order) values ('54363121003','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mq36fpsmmcr22a',2);
insert into product_images(product_id,url,sort_order) values ('54363121003','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mq34rsq32qz180',3);
insert into product_images(product_id,url,sort_order) values ('54363121003','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mq36fpsa0nbja6',4);
delete from product_variants where product_id='54363121003'; delete from product_models where product_id='54363121003'; delete from product_categories where product_id='54363121003';
insert into product_categories values ('54363121003','272906965') on conflict do nothing;
insert into product_categories values ('54363121003','271399347') on conflict do nothing;
delete from reviews where product_id='54363121003' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','tostares',5,'Gửi hàng nhanh, hộp đúng chức năng mô tả tuy nhiên in 3D còn thô, vẫn bị lỗi 1 số chỗ và cạnh còn sắc. So với hàng in 3D khác thì hơi mắc nhưng so với các loại hộp để Mezatag khác thì rẻ và đẹp hơn. Điểm cộng là để vừa tag đã có bọc. Góc bo hẹp nên không nhồi đủ được 4 tag đã bọc, để tag trần thì thoải mái. Trừ 1 sao vì gia công chưa hoàn thiện. Còn lại thì OK.','',array['https://down-vn.img.susercontent.com/file/vn-11134103-81ztc-mqu02uap6bd707','https://down-vn.img.susercontent.com/file/vn-11134103-81ztc-mqu02ucx8op72f']::text[],'Chân thành cảm ơn bạn đã góp ý ạ, shop sẽ ghi nhận và hoàn thiện hơn ạ, chúc bạn luôn vui vẻ ♥️',to_timestamp(1784435214));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','dangnhapdellduoc',5,'','','{}'::text[],'Cảm ơn bạn đã ủng hộ shop, chúc bạn luôn mạnh khỏe và thành công ạ♥️',to_timestamp(1783311603));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','darkness.truong0410',5,'','','{}'::text[],'Cảm ơn bạn đã ủng hộ shop , chúc bạn luôn may mắn và thành công ạ',to_timestamp(1786068693));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','nhatminhvipv',5,'','','{}'::text[],'Chân thành cảm ơn khách iu đã ủng hộ shop, chúc bạn luôn vui vẻ',to_timestamp(1785293124));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','hunambi908',5,'','','{}'::text[],'Cảm ơn bạn đã tin tưởng ủng hộ shop, chúc bạn thật nhiều sức khỏe ạ',to_timestamp(1786036532));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','erinhyelim',5,'','','{}'::text[],'Cảm ơn bạn đã tin tưởng ủng hộ shop , chúc bạn luôn vui vẻ ạ',to_timestamp(1784861178));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','danghoai07121986',5,'','','{}'::text[],'Chân thành cảm ơn khách iu đã tin tưởng ủng hộ ạ, chúc bạn luôn mạnh khoẻ và hạnh phúc',to_timestamp(1787035647));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','m44zfdh_y7',5,'','','{}'::text[],'Chân thành cảm ơn bạn đã tin tưởng ủng hộ shop, chúc bạn cùng gia đình luôn mạnh khoẻ',to_timestamp(1785517635));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','k*****2',5,'','','{}'::text[],'',to_timestamp(1788110338));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','n*****n',5,'','','{}'::text[],'',to_timestamp(1787888376));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','k*****r',5,'','','{}'::text[],'',to_timestamp(1787505062));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','c*****1',5,'','','{}'::text[],'',to_timestamp(1787121303));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','m*****.',5,'','','{}'::text[],'',to_timestamp(1785823878));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54363121003','8*****n',5,'','','{}'::text[],'',to_timestamp(1785383207));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('56560002750','Bộ Xe Mô Hình Diecast 1:32 Cao Cấp Có Hộp Trưng Bày - Xe Thể Thao Siêu Xe Kim Loại Mở Cửa, Trang Trí & Sưu Tầm','bo-xe-mo-hinh-diecast-1-32-cao-cap-co-hop-trung-bay-xe-the-thao-sieu-xe-kim-loai-02750',262080,null,416000,37,null,0,0.00,0,'{0,0,0,0,0}','','🔥 Bộ mô hình siêu xe tỷ lệ 1:32 cao cấp dành cho bé yêu và người đam mê sưu tầm xe thể thao. Thiết kế sắc nét, màu sắc nổi bật cùng hộp mica trưng bày sang trọng giúp sản phẩm vừa là đồ chơi vừa là vật decor cực đẹp.

✨ ĐẶC ĐIỂM NỔI BẬT:

✔️ Thiết kế mô phỏng siêu xe thể thao cực ngầu

✔️ Chất liệu hợp kim Diecast cao cấp, bền đẹp

✔️ Tỷ lệ chuẩn 1:32 chân thực

✔️ Sơn tĩnh điện sắc nét, màu nổi bật sang trọng

✔️ Bánh xe quay mượt, chi tiết tinh xảo

✔️ Có hộp mica trong suốt chống bụi, trưng bày đẹp mắt

✔️ Phù hợp làm quà tặng cho bé trai, người yêu xe mô hình

📦 Thông tin sản phẩm:

Tên sản phẩm: Xe mô hình Diecast 1:32
Chất liệu: Hợp kim + nhựa ABS cao cấp
Tỷ lệ: 1:32
Màu sắc: Xanh lá / Xanh dương / Đen
Kích thước hộp : 9cm x 17cm x 9cm
Công dụng: Đồ chơi, trưng bày, sưu tầm, quà tặng

🎁 Phù hợp cho:

✅ Bé trai yêu thích ô tô

✅ Người sưu tầm mô hình xe

✅ Trang trí bàn học, bàn làm việc, kệ trưng bày

✅ Quà sinh nhật, quà lễ cực ý nghĩa

💯 Cam kết sản phẩm giống hình

📦 Đóng gói cẩn thận trước khi giao

🚚 Hỗ trợ đổi trả nếu lỗi từ nhà sản xuất

#xemohinh #sieuxe #diecast #xemohinh132 #otomohinh #dochoibetrai #mohinhoto #xehopkim #xedecor #quatangbe trai','[]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Khác']::text[],'https://shopee.vn/product/67689883/56560002750') on conflict (id) do nothing;
delete from product_images where product_id='56560002750';
insert into product_images(product_id,url,sort_order) values ('56560002750','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwprsfl7zepf4',0);
insert into product_images(product_id,url,sort_order) values ('56560002750','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwplrgufdhhe7',1);
insert into product_images(product_id,url,sort_order) values ('56560002750','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwpu0xf8d8ide',2);
insert into product_images(product_id,url,sort_order) values ('56560002750','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwp4tn2msjsa7',3);
insert into product_images(product_id,url,sort_order) values ('56560002750','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwp4tn7nzsx09',4);
delete from product_variants where product_id='56560002750'; delete from product_models where product_id='56560002750'; delete from product_categories where product_id='56560002750';
insert into product_variants(product_id,name,options,images) values ('56560002750','Màu Sắc',array['Xanh Dương','Xanh Lá','Đen']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwpm7szz9xgbc','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwp4tn7nzsx09','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwp4tn2msjsa7']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('56560002750','Xanh Dương',262080,null,'');
insert into product_models(product_id,name,price,stock,image) values ('56560002750','Xanh Lá',262080,null,'');
insert into product_models(product_id,name,price,stock,image) values ('56560002750','Đen',262080,null,'');
insert into product_categories values ('56560002750','271083241') on conflict do nothing;
insert into product_categories values ('56560002750','271742074') on conflict do nothing;
delete from reviews where product_id='56560002750' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('53960338220','Đồ Chơi Lắp Ráp Sprunki 11 Nhân Vật CB Toys 5187 Mô Hình Trưng Bày Sáng Tạo Quà Tặng Cho Bé','do-choi-lap-rap-sprunki-11-nhan-vat-cb-toys-5187-mo-hinh-trung-bay-sang-tao-qua--38220',344560,null,472000,27,null,34,5.00,7,'{0,0,0,0,7}','','🧩 ĐỒ CHƠI LẮP RÁP SPRUNKI CB TOYS 5187 – BỘ MÔ HÌNH NHÂN VẬT SÁNG TẠO CỰC HOT CHO BÉ
Nếu bé yêu thích đồ chơi lắp ráp, mô hình nhân vật Sprunki hoặc bạn đang tìm một món quà tặng cho bé vừa giải trí vừa phát triển tư duy, thì bộ đồ chơi lắp ráp Sprunki CB Toys 5187 là lựa chọn không thể bỏ qua. Với 11 nhân vật độc đáo cùng thiết kế đầy màu sắc, sản phẩm phù hợp để lắp ráp, trưng bày và sưu tầm.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Bộ gồm 11 nhân vật Sprunki nổi tiếng: Brud, Fox, Garnold, Durple, Raddy, Gray, Vineria, Pinki, Clkur, Tunner và Black.
✔️ Chất liệu nhựa ABS cao cấp, mảnh ghép chắc chắn, an toàn cho trẻ nhỏ và bền đẹp theo thời gian.
✔️ Thiết kế mô hình nhân vật sinh động, màu sắc nổi bật, chi tiết sắc nét, thích hợp làm đồ chơi trưng bày hoặc mô hình sưu tầm.
✔️ Các chi tiết có độ khớp cao, dễ lắp ráp, mang lại trải nghiệm thú vị cho bé và người yêu thích đồ chơi lắp ghép.
✔️ Có thể kết hợp với bộ Sprunki 5188 để tạo thành mô hình lớn, tăng tính sáng tạo và trưng bày.
✔️ Là đồ chơi giáo dục giúp bé rèn luyện tư duy logic, khả năng quan sát, tính kiên nhẫn và sự khéo léo.
🎯 LỢI ÍCH KHI CHƠI ĐỒ CHƠI LẮP RÁP SPRUNKI
Phát triển tư duy logic và khả năng giải quyết vấn đề.
Rèn luyện kỹ năng lắp ghép và phối hợp tay mắt.
Kích thích trí tưởng tượng và óc sáng tạo.
Giúp bé giảm thời gian sử dụng điện thoại, tivi.
Phù hợp cho cả trẻ em và người yêu thích mô hình lắp ráp, brick toys, đồ chơi sưu tầm.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Đồ chơi lắp ráp Sprunki CB Toys.
Mã sản phẩm: 5187.
Thương hiệu: CB Toys.
Số lượng nhân vật: 11 nhân vật.
Chất liệu: Nhựa ABS cao cấp.
Độ tuổi phù hợp: Từ 6 tuổi trở lên.
Kích thước hộp: 30 x 48 x 7 cm.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Sản phẩm thích hợp làm quà sinh nhật cho bé trai, bé gái, quà Noel, quà Quốc tế Thiếu nhi, quà thưởng học tập hoặc dành cho những ai yêu thích đồ chơi lắp ráp Sprunki, mô hình nhân vật, đồ chơi sáng tạo, đồ chơi giáo dục, mô hình trưng bày, đồ chơi lắp ghép, brick toys và đồ chơi sưu tầm.
💯 CAM KẾT TỪ SHOP
✅ Sản phẩm mới 100%, đúng hình ảnh và mô tả.
✅ Kiểm tra kỹ trước khi đóng gói.
✅ Đóng gói chống sốc cẩn thận, giao hàng nhanh.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
#sprunki #dochoilaprap #sprunki5187 #cbtoys #mohinhsprunki #mohinhlaprap #mohinhnhanvat #bricktoys #dochoisangtao #dochoigiaoduc #dochoithongminh #dochoichobe #dochoitreem #dochoilapghep #mohinhtrungbay #quatangchobe #quatangsinhnhat #dochoibetrai #dochoibegai #laprapchobe','[{"n": "Block Type", "v": "Bricks & Parts"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/53960338220') on conflict (id) do nothing;
delete from product_images where product_id='53960338220';
insert into product_images(product_id,url,sort_order) values ('53960338220','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mon0h1bywo3k1e',0);
insert into product_images(product_id,url,sort_order) values ('53960338220','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo502bv3jsw1c8',1);
insert into product_images(product_id,url,sort_order) values ('53960338220','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moft4a2zjtou05',2);
insert into product_images(product_id,url,sort_order) values ('53960338220','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo507lifs3k294',3);
insert into product_images(product_id,url,sort_order) values ('53960338220','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo508lojk7wo86',4);
delete from product_variants where product_id='53960338220'; delete from product_models where product_id='53960338220'; delete from product_categories where product_id='53960338220';
insert into product_variants(product_id,name,options,images) values ('53960338220','Loại',array['Đồ Chơi Lắp Ráp']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7aqneol2ipe0']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('53960338220','Đồ Chơi Lắp Ráp',344560,null,'');
insert into product_categories values ('53960338220','271399347') on conflict do nothing;
insert into product_categories values ('53960338220','271741642') on conflict do nothing;
delete from reviews where product_id='53960338220' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53960338220','thuytrangsonic',5,'Bao bì/Mẫu mã:Đẹp
Chất lượng sản phẩm:tốt

Bé rất thích, shop giao hàng nhanh','Đồ Chơi Lắp Ráp','{}'::text[],'Chân thành cảm ơn khách iu đã ủng hộ shop, chúc bạn luôn vui vẻ và gặp nhiều may mắn 💋',to_timestamp(1783920749));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53960338220','phanthynly',5,'Đồ chơi cứng cáp, màu đẹp, dễ lắp ráp đối với bé lớn một chút, bé nhà mình chưa chơi được, toàn ba mẹ trợ giúp','Đồ Chơi Lắp Ráp',array['https://down-vn.img.susercontent.com/file/vn-11134103-81ztc-mpuh03ird2bvaf']::text[],'Biết ơn khách iu đã luôn tin tưởng và ủng hộ shop, Chúc bạn cùng gia đình luôn Hạnh Phúc và ngập tràn niềm vui ạ♥️',to_timestamp(1782283946));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53960338220','vyvuhongthao',5,'','Đồ Chơi Lắp Ráp','{}'::text[],'Cảm ơn bạn đã luôn tin tưởng ủng hộ , chúc bạn luôn thành công và gặp nhiều may mắn ạ♥️',to_timestamp(1784281406));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53960338220','thaonb01',5,'','Đồ Chơi Lắp Ráp','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop , chúc khách iu luôn vui vẻ và thành công♥️',to_timestamp(1783496727));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53960338220','leduyen3663',5,'','Đồ Chơi Lắp Ráp','{}'::text[],'Chân thành cảm ơn bạn đã ủng hộ shop chúc bạn luôn mạnh khỏe ạ',to_timestamp(1784004755));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53960338220','t*****5',5,'','Đồ Chơi Lắp Ráp','{}'::text[],'Chân thành cảm ơn bạn đã ủng hộ shop, chúc bạn luôn thành công trong mọi việc',to_timestamp(1789377719));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53960338220','vietnguyenco',5,'','Đồ Chơi Lắp Ráp','{}'::text[],'Chân thành cảm ơn khách iu đã ủng hộ shop, chúc bạn ngày mới nhiều may mắn và thành công',to_timestamp(1787983183));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('52010339451','Bộ Cờ Cá Ngựa Ludo Cho Bé, Board Game Gia Đình 2-4 Người Chơi, Đồ Chơi Trí Tuệ Giáo Dục','bo-co-ca-ngua-ludo-cho-be-board-game-gia-dinh-2-4-nguoi-choi-do-choi-tri-tue-gia-39451',36500,164980,50000,27,null,6,3.00,1,'{0,0,1,0,0}','','🎲 Bộ Cờ Cá Ngựa Ludo Cho Bé – Board Game Gia Đình 2-4 Người Chơi, Đồ Chơi Trí Tuệ Giáo Dục
Bạn đang tìm kiếm một board game cho bé vừa giúp giải trí, vừa rèn luyện tư duy và gắn kết các thành viên trong gia đình? Bộ cờ cá ngựa Ludo là trò chơi kinh điển được nhiều phụ huynh lựa chọn nhờ luật chơi đơn giản, phù hợp cho cả trẻ em và người lớn.
Không chỉ là một đồ chơi giáo dục, bộ cờ cá ngựa cho bé còn giúp trẻ phát triển khả năng tư duy chiến thuật, học cách chờ đợi lượt chơi, rèn luyện tính kiên nhẫn và kỹ năng giao tiếp khi chơi cùng bạn bè hoặc người thân.
✨ ĐẶC ĐIỂM NỔI BẬT
✅ Thiết kế cờ cá ngựa Ludo nhiều màu sắc nổi bật, dễ quan sát.
✅ Chất liệu nhựa cao cấp, bền đẹp, an toàn cho trẻ nhỏ.
✅ Quân cờ chắc chắn, dễ cầm nắm.
✅ Luật chơi đơn giản, bé dễ làm quen và ghi nhớ.
✅ Phù hợp từ 2–4 người chơi, thích hợp cho gia đình hoặc nhóm bạn.
✅ Kích thước nhỏ gọn, dễ mang theo khi đi du lịch, dã ngoại hoặc picnic.
🧠 LỢI ÍCH KHI CHO BÉ CHƠI BOARD GAME
Bộ cờ cá ngựa Ludo không chỉ mang đến những giờ phút giải trí mà còn giúp bé:
✔ Phát triển tư duy logic và chiến thuật.
✔ Rèn luyện khả năng quan sát và phản xạ.
✔ Học cách đếm số và nhận biết màu sắc.
✔ Tăng khả năng tập trung và tính kiên nhẫn.
✔ Phát triển kỹ năng giao tiếp, làm việc nhóm và tuân thủ luật chơi.
✔ Hạn chế thời gian sử dụng điện thoại, máy tính bảng và tivi.
✔ Gắn kết tình cảm giữa ba mẹ và con thông qua những ván cờ đầy vui nhộn.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Bộ Cờ Cá Ngựa Ludo Chess
Chất liệu: Nhựa cao cấp
Độ tuổi phù hợp: Từ 4 tuổi trở lên
Số lượng người chơi: 2 – 4 người
Màu sắc: Nhiều màu sắc sinh động
Công dụng: Trò chơi trí tuệ, giáo dục và giải trí
Kích thước hộp: 27 x 27 x 5 cm
🎁 MÓN QUÀ Ý NGHĨA CHO BÉ
Bộ board game cờ cá ngựa là món quà phù hợp dành cho:
🎂 Sinh nhật
🎄 Noel
🎉 Quốc tế Thiếu nhi
🏆 Phần thưởng học tập
🎁 Quà tặng cho bé trai và bé gái từ 4 tuổi trở lên
👨‍👩‍👧 Hoạt động vui chơi gắn kết cả gia đình
💖 CAM KẾT TỪ SHOP
✅ Sản phẩm mới 100%.
✅ Hình ảnh đúng thực tế.
✅ Kiểm tra kỹ trước khi đóng gói.
✅ Đóng gói cẩn thận, giao hàng nhanh chóng.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
#cocangua #cangua #ludo #ludochess #boardgame #boardgamegiadinh #boardgamechobe #dochoitritue #dochoigiaoduc #dochoithongminh #trochoigiaitri #trochoigiaodinh #dochoichobe #dochoitreem #quatangchobe #quatangsinhnhat #dochoi4tuoi #renluyentuduy #gamegiadinh #boardgamevietnam','[{"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/52010339451') on conflict (id) do nothing;
delete from product_images where product_id='52010339451';
insert into product_images(product_id,url,sort_order) values ('52010339451','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mon03l3ob66a03',0);
insert into product_images(product_id,url,sort_order) values ('52010339451','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo53mqu0nfus11',1);
insert into product_images(product_id,url,sort_order) values ('52010339451','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofqysqs232mb1',2);
insert into product_images(product_id,url,sort_order) values ('52010339451','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo53uqc5mj9e8d',3);
insert into product_images(product_id,url,sort_order) values ('52010339451','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo53u87qe9z9bc',4);
delete from product_variants where product_id='52010339451'; delete from product_models where product_id='52010339451'; delete from product_categories where product_id='52010339451';
insert into product_variants(product_id,name,options,images) values ('52010339451','Loại',array['Hộp Mới 100%','Đã Qua Sử Dụng (Cũ)']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo78q0qecp3a39','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpqnzih4dp1r6d']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('52010339451','Hộp Mới 100%',164980,null,'');
insert into product_models(product_id,name,price,stock,image) values ('52010339451','Đã Qua Sử Dụng (Cũ)',36500,null,'');
insert into product_categories values ('52010339451','271399347') on conflict do nothing;
insert into product_categories values ('52010339451','271742027') on conflict do nothing;
delete from reviews where product_id='52010339451' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52010339451','khuekim167',3,'','Bộ Cờ Cá Ngựa','{}'::text[],'Cảm ơn bạn đã góp ý ạ',to_timestamp(1780489683));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('52713944764','Móc Khóa Bảo Vệ Thẻ Mezastar TPU Dẻo 2 Mặt - Bảo Vệ Chống Trầy Chống Sốc Hiển Thị Full Thẻ Cao Cấp','moc-khoa-bao-ve-the-mezastar-tpu-deo-2-mat-bao-ve-chong-tray-chong-soc-hien-thi--44764',94500,null,135000,30,null,1,0.00,0,'{0,0,0,0,0}','','🌟 MÓC KHÓA BẢO VỆ THẺ MEZASTAR TPU DẺO CAO CẤP – 2 MẶT HIỂN THỊ FULL THẺ 🌟
Bảo vệ tối đa những tấm thẻ Mezastar giá trị với móc khóa TPU dẻo cao cấp, thiết kế chuyên dụng giúp chống trầy xước, chống sốc và hạn chế hư hỏng trong quá trình sử dụng.
Sản phẩm không chỉ là phụ kiện bảo vệ mà còn là móc khóa trưng bày thẻ Mezastar cực đẹp, giúp bạn khoe bộ sưu tập một cách nổi bật và tiện lợi.
🛡️ ƯU ĐIỂM NỔI BẬT
✔️ Chất liệu TPU dẻo cao cấp, đàn hồi tốt, an toàn cho thẻ
✔️ Chống trầy xước cạnh và bề mặt thẻ Mezastar hiệu quả
✔️ Hạn chế va đập, giảm nguy cơ nứt gãy khi rơi rớt
✔️ Thiết kế trong suốt, hiển thị full 2 mặt thẻ
✔️ Không cần tháo thẻ ra khi sử dụng
✔️ Khoen kim loại chắc chắn, dễ treo balo hoặc chìa khóa
✔️ Phù hợp sưu tầm và trưng bày bộ thẻ Mezastar
✨ CÔNG DỤNG SẢN PHẨM
🎮 Bảo vệ thẻ Mezastar khỏi trầy xước và hư hỏng
🎮 Trưng bày bộ sưu tập thẻ đẹp mắt
🎮 Làm móc khóa treo balo, túi xách, chìa khóa
🎮 Phụ kiện không thể thiếu cho người chơi Mezastar
🎮 Quà tặng ý nghĩa cho fan sưu tầm thẻ
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Móc khóa bảo vệ thẻ Mezastar TPU
• Chất liệu: TPU dẻo cao cấp + khoen kim loại
• Thiết kế: Hiển thị 2 mặt thẻ
• Công dụng: Chống trầy, chống sốc, bảo vệ thẻ
• Phù hợp: Thẻ Mezastar kích thước tiêu chuẩn
💥 VÌ SAO NÊN CHỌN SẢN PHẨM NÀY?
✔️ Bảo vệ thẻ tốt hơn hộp nhựa cứng thông thường
✔️ Hiển thị full thẻ, không che mất chi tiết
✔️ Nhỏ gọn, tiện mang theo mọi lúc
✔️ Phù hợp sưu tầm và trưng bày lâu dài
✔️ Giá hợp lý cho người chơi Mezastar
💖 CAM KẾT TỪ SHOP
✔️ Sản phẩm đúng mô tả 100%
✔️ Đóng gói cẩn thận chống va đập
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi giao hàng
#Mezastar #MockhoaMezastar #TheMezastar #BaoVeTheMezastar #PhuKienMezastar #MockhoaTPU #Mockhoa2Mat #TheSuuTamMezastar #KhungTheMezastar #VoBaoVeThe #ChongTrayXuoc #ChongSoc #DoSuuTam #PhuKienTheBai #QuangBaBoSuuTap','[{"n": "Build-in Battery", "v": "No"}, {"n": "Gender", "v": "Unisex"}, {"n": "Material", "v": "Nhựa TPU"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Khác']::text[],'https://shopee.vn/product/67689883/52713944764') on conflict (id) do nothing;
delete from product_images where product_id='52713944764';
insert into product_images(product_id,url,sort_order) values ('52713944764','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekjwsglf5t95',0);
insert into product_images(product_id,url,sort_order) values ('52713944764','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekjwsju0b1a9',1);
insert into product_images(product_id,url,sort_order) values ('52713944764','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekjwsi8f0gf4',2);
insert into product_images(product_id,url,sort_order) values ('52713944764','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekjwsjslqlb6',3);
insert into product_images(product_id,url,sort_order) values ('52713944764','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekjwsjwtfz71',4);
delete from product_variants where product_id='52713944764'; delete from product_models where product_id='52713944764'; delete from product_categories where product_id='52713944764';
insert into product_variants(product_id,name,options,images) values ('52713944764','Màu Sắc',array['Trắng','Đen']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpe5ng8vgc23ef','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpe5nvkw8ydr61']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('52713944764','Trắng',94500,null,'');
insert into product_models(product_id,name,price,stock,image) values ('52713944764','Đen',94500,null,'');
insert into product_categories values ('52713944764','khac') on conflict do nothing;
delete from reviews where product_id='52713944764' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('50610416147','Bộ Xếp Hình 1000 Chi Tiết Building Bricks Gạch Lắp Ráp Đồ Chơi STEM Phát Triển Tư Duy Cho Bé','bo-xep-hinh-1000-chi-tiet-building-bricks-gach-lap-rap-do-choi-stem-phat-trien-t-16147',73000,351130,100000,27,null,34,4.75,4,'{0,0,0,1,3}','','🧩 BỘ XẾP HÌNH BUILDING BRICKS 1000 CHI TIẾT – ĐỒ CHƠI LẮP RÁP PHÁT TRIỂN TƯ DUY CHO BÉ
Bộ xếp hình 1000 chi tiết Building Bricks là đồ chơi lắp ráp cho bé với số lượng gạch lớn, giúp trẻ thỏa sức sáng tạo hàng trăm mô hình như nhà cửa, xe cộ, robot, lâu đài và nhiều công trình độc đáo. Đây là đồ chơi STEM, đồ chơi giáo dục giúp bé phát triển tư duy logic, khả năng sáng tạo, kỹ năng giải quyết vấn đề và rèn luyện sự khéo léo trong từng thao tác lắp ráp.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Bộ xếp hình 1000 chi tiết gồm nhiều gạch lắp ráp với đa dạng màu sắc và kích thước, cho phép bé sáng tạo không giới hạn.
✔️ Thiết kế các khối Building Bricks dễ lắp ráp, liên kết chắc chắn và tương thích với nhiều loại gạch lắp ráp phổ biến.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, bề mặt nhẵn mịn, an toàn cho trẻ nhỏ.
✔️ Màu sắc tươi sáng giúp kích thích thị giác, khả năng nhận biết màu sắc và phát triển trí tưởng tượng.
✔️ Đồ chơi STEM giúp bé học thông qua trải nghiệm thực tế, phát triển tư duy logic, khả năng quan sát và kỹ năng giải quyết vấn đề.
✔️ Rèn luyện kỹ năng phối hợp tay mắt, vận động tinh, tính kiên nhẫn và khả năng tập trung trong quá trình lắp ráp.
🎯 LỢI ÍCH CHO BÉ
Phát triển tư duy logic và trí tưởng tượng.
Tăng khả năng sáng tạo và thiết kế mô hình.
Rèn luyện kỹ năng phối hợp tay mắt và vận động tinh.
Học cách kiên trì, tập trung và giải quyết vấn đề.
Hạn chế thời gian sử dụng điện thoại, TV và các thiết bị điện tử.
Khơi gợi niềm yêu thích với đồ chơi STEM, mô hình xây dựng và các hoạt động sáng tạo.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Building Bricks 1000 PCS.
Loại sản phẩm: Bộ xếp hình lắp ráp.
Số lượng: 1000 chi tiết.
Chất liệu: Nhựa ABS cao cấp.
Kích thước hộp: 18 x 26 x 7 cm.
Màu sắc: Nhiều màu.
Độ tuổi phù hợp: Từ 6 tuổi trở lên.
⚠️ LƯU Ý
Sản phẩm có nhiều chi tiết nhỏ, không phù hợp với trẻ dưới 3 tuổi.
Nên có sự giám sát của người lớn khi trẻ sử dụng.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Quà sinh nhật cho bé trai và bé gái.
Quà Noel, Quốc tế Thiếu nhi, Trung Thu.
Quà thưởng học tập, quà khuyến khích bé phát triển tư duy.
Phù hợp cho bé yêu thích bộ xếp hình, đồ chơi lắp ráp, gạch lắp ráp, đồ chơi STEM, đồ chơi giáo dục, đồ chơi thông minh, đồ chơi phát triển IQ, mô hình xây dựng và các hoạt động sáng tạo.
💯 CAM KẾT TỪ SHOP
✅ Sản phẩm mới 100%, đúng hình ảnh và mô tả.
✅ Kiểm tra kỹ trước khi giao hàng.
✅ Đóng gói cẩn thận, hạn chế va đập.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm lỗi từ nhà sản xuất.
#boxephinh #boxephinh1000chitiet #buildingbricks #dochoilaprap #gachlaprap #laprapchobe #dochoistem #dochoigiaoduc #dochoithongminh #dochoisangtao #phattrientuduy #phattrientritue #dochoitritue #dochoichobe #quatangchobe','[{"n": "Block Type", "v": "Bricks & Parts"}, {"n": "Country of Origin", "v": "China"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/50610416147') on conflict (id) do nothing;
delete from product_images where product_id='50610416147';
insert into product_images(product_id,url,sort_order) values ('50610416147','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mon0aagexgjxda',0);
insert into product_images(product_id,url,sort_order) values ('50610416147','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofpqd4d1c0110',1);
insert into product_images(product_id,url,sort_order) values ('50610416147','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo6jtbb4aku897',2);
insert into product_images(product_id,url,sort_order) values ('50610416147','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo6jcu09hjwk87',3);
insert into product_images(product_id,url,sort_order) values ('50610416147','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo6jsmkywyddeb',4);
delete from product_variants where product_id='50610416147'; delete from product_models where product_id='50610416147'; delete from product_categories where product_id='50610416147';
insert into product_variants(product_id,name,options,images) values ('50610416147','Loại',array['Hộp Mới 100%','Đã Qua Sử Dụng (Cũ)']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo75aq7mubk6bb','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpqqy9lknqwx9f']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('50610416147','Đã Qua Sử Dụng (Cũ)',73000,null,'');
insert into product_models(product_id,name,price,stock,image) values ('50610416147','Hộp Mới 100%',351130,null,'');
insert into product_categories values ('50610416147','271399347') on conflict do nothing;
insert into product_categories values ('50610416147','271741642') on conflict do nothing;
delete from reviews where product_id='50610416147' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('50610416147','ngochung.2007',5,'','1000 Chi Tiết','{}'::text[],'Chân thành biết ơn khách iu đã luôn iu thương và ủng hộ shop, chúc khách của shop ngày mới thành công và may mắn ạ💋',to_timestamp(1782270563));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('50610416147','lequangtrung2311',5,'','1000 Chi Tiết','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop ạ, chúc bạn ngày mới thành công ạ may mắn ♥️',to_timestamp(1782959194));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('50610416147','deanmarcusrusbridge',5,'','Hộp Mới 100%','{}'::text[],'',to_timestamp(1789991319));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('50610416147','ge1q4jtan4',4,'','1000 Chi Tiết','{}'::text[],'🤩 cảm ơn bạn',to_timestamp(1781447209));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('52861485832','Đồ Chơi Trứng Bất Ngờ Capybara Cho Bé, Hộp Mở Quà Bí Mật, Đồ Chơi Giáo Dục Khám Phá','do-choi-trung-bat-ngo-capybara-cho-be-hop-mo-qua-bi-mat-do-choi-giao-duc-kham-ph-85832',208780,null,286000,27,null,16,5.00,4,'{0,0,0,0,4}','','Đồ Chơi Trứng Bất Ngờ Capybara Cho Bé, Hộp Mở Quà Bí Mật, Đồ Chơi Giáo Dục Khám Phá
🐹 Đồ Chơi Trứng Bất Ngờ Capybara là đồ chơi cho bé mang đến trải nghiệm khám phá đầy thú vị khi mỗi lần mở hộp là một điều bất ngờ mới. Với thiết kế Capybara dễ thương cùng hộp mở quà bí mật độc đáo, bé sẽ háo hức xoay mở từng quả trứng để khám phá những món đồ bên trong, giúp tăng sự tò mò, khả năng quan sát và tạo nên những phút giây vui chơi đầy hào hứng.
Không chỉ là đồ chơi trứng bất ngờ, sản phẩm còn là đồ chơi giáo dục trẻ em giúp bé phát triển tư duy khám phá, rèn luyện sự khéo léo của đôi tay và nâng cao khả năng tập trung thông qua từng lần mở quà. Chất liệu nhựa cao cấp, bề mặt nhẵn mịn cùng thiết kế an toàn giúp bố mẹ yên tâm khi cho bé sử dụng. Phù hợp với trẻ từ 3 tuổi trở lên, đây là món đồ chơi lý tưởng để bé vừa học vừa chơi và hạn chế thời gian sử dụng thiết bị điện tử.
✨ Đặc điểm nổi bật
✔️ Thiết kế Capybara ngộ nghĩnh, màu sắc bắt mắt, thu hút trẻ nhỏ.
✔️ Hộp mở quà bí mật với cơ chế xoay mở độc đáo, tạo cảm giác hồi hộp và thích thú.
✔️ Nhiều trứng bất ngờ bên trong giúp bé tăng khả năng khám phá và kích thích trí tò mò.
✔️ Chất liệu nhựa cao cấp, bền đẹp, bề mặt nhẵn mịn và an toàn cho trẻ.
✔️ Phù hợp cho bé trai và bé gái từ 3 tuổi trở lên.
🌟 Lợi ích cho bé
Kích thích tư duy khám phá và khả năng quan sát.
Rèn luyện kỹ năng vận động tinh và sự khéo léo của đôi tay.
Tăng khả năng tập trung và tính kiên nhẫn khi chơi.
Mang đến những giờ giải trí lành mạnh, giúp bé giảm thời gian sử dụng điện thoại và tivi.
Khuyến khích bé tương tác, vui chơi cùng gia đình và bạn bè.
📦 Thông tin sản phẩm
Tên sản phẩm: Capybara Surprise Egg
Kích thước: 22 x 28 x 8 cm
Chất liệu: Nhựa cao cấp
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Màu sắc: Nhiều màu ngẫu nhiên
Đóng gói: Hộp Capybara kèm trứng bất ngờ bên trong
🎁 Đồ chơi Capybara Surprise Egg là món quà ý nghĩa dành cho bé trai và bé gái trong các dịp sinh nhật, Noel, Quốc tế Thiếu nhi hoặc làm phần thưởng khuyến khích học tập. Với thiết kế đáng yêu cùng nhiều điều bất ngờ thú vị, đây là đồ chơi giáo dục giúp bé phát triển tư duy, tăng khả năng khám phá và mang đến những giờ vui chơi bổ ích mỗi ngày.
💖 Cam kết từ Shop
Hàng mới 100%.
Kiểm tra kỹ trước khi đóng gói.
Đóng gói cẩn thận, giao hàng nhanh chóng.
Hỗ trợ đổi trả theo chính sách Shopee.
Tư vấn nhiệt tình trước và sau khi mua hàng.
#DoChoiTrungBatNgo #CapybaraSurpriseEgg #HopMoQuaBiMat #DoChoiChoBe #DoChoiGiaoDuc #DoChoiTreEm #DoChoiKhamPha #DoChoiThongMinh #QuaTangChoBe #QuaSinhNhatChoBe #DoChoi3Tuoi #Capybara #DoChoiAnToan #ShopeeVN #DoChoiGiaiTri','[{"n": "Material", "v": "ABS"}, {"n": "Gender", "v": "Unisex"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Khác']::text[],'https://shopee.vn/product/67689883/52861485832') on conflict (id) do nothing;
delete from product_images where product_id='52861485832';
insert into product_images(product_id,url,sort_order) values ('52861485832','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxvxlcddg5o03',0);
insert into product_images(product_id,url,sort_order) values ('52861485832','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxvmcelvpjicf',1);
insert into product_images(product_id,url,sort_order) values ('52861485832','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxvurt8edjj2e',2);
insert into product_images(product_id,url,sort_order) values ('52861485832','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxvv53u328e2d',3);
insert into product_images(product_id,url,sort_order) values ('52861485832','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxvfudiyryk38',4);
delete from product_variants where product_id='52861485832'; delete from product_models where product_id='52861485832'; delete from product_categories where product_id='52861485832';
insert into product_categories values ('52861485832','271399347') on conflict do nothing;
delete from reviews where product_id='52861485832' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52861485832','tranthanhvu2003',5,'','','{}'::text[],'Chân thành cảm ơn bạn đã tặng 5⭐️, chúc bạn thật nhiều sức khoẻ ạ',to_timestamp(1781504253));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52861485832','cuongkon6789',5,'','','{}'::text[],'Cảm ơn khách iu đã tin tưởng ủng hộ ạ, chúc bạn luôn thành công và gặp nhiều may mắn nhé',to_timestamp(1785218788));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52861485832','munkitae',5,'','','{}'::text[],'Cảm ơn bạn đã ủng hộ shop, chúc bạn luôn vui vẻ ạ',to_timestamp(1786454814));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('52861485832','kthanh1234',5,'','','{}'::text[],'Cảm ơn bạn đã tặng 5⭐️ , chúc bạn buổi tối nhiều niềm vui ạ',to_timestamp(1781701303));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('26494961479','Bộ 4 Máy Bay Chiến Đấu Hợp Kim Đồ Chơi Mô Hình Máy Bay Quân Sự Cho Bé Quà Tặng Bé Trai','bo-4-may-bay-chien-dau-hop-kim-do-choi-mo-hinh-may-bay-quan-su-cho-be-qua-tang-b-61479',181040,null,248000,27,null,22,5.00,4,'{0,0,0,0,4}','','✈️ BỘ 4 MÁY BAY CHIẾN ĐẤU HỢP KIM METAL MASTER – ĐỒ CHƠI MÔ HÌNH MÁY BAY QUÂN SỰ CHO BÉ ✈️
Khơi dậy niềm yêu thích khám phá bầu trời cùng Bộ 4 Máy Bay Chiến Đấu Metal Master. Bộ đồ chơi mô hình máy bay quân sự cho bé gồm 4 mẫu máy bay với thiết kế mô phỏng chân thực, sắc nét và bền bỉ. Đây là đồ chơi cho bé giúp trẻ vừa vui chơi, vừa phát triển trí tưởng tượng, khả năng quan sát và tư duy sáng tạo thông qua các trò chơi nhập vai phi công.
Với phần thân làm từ hợp kim Die-Cast chắc chắn kết hợp nhựa ABS cao cấp, sản phẩm mang lại cảm giác cầm chắc tay, bền đẹp và an toàn cho trẻ nhỏ.
🌟 ƯU ĐIỂM NỔI BẬT
✔️ Bộ gồm 4 mẫu máy bay chiến đấu với kiểu dáng khác nhau.
✔️ Thân máy bay bằng hợp kim Die-Cast cứng cáp, bền đẹp.
✔️ Sơn màu sắc nét, mô phỏng chân thực các dòng máy bay quân sự.
✔️ Kích thước nhỏ gọn, vừa tay bé, dễ dàng mang theo khi vui chơi.
✔️ Các góc cạnh được bo tròn, đảm bảo an toàn khi sử dụng.
✔️ Phù hợp cho bé yêu thích máy bay, phương tiện quân sự và mô hình sưu tầm.
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Bộ mô hình máy bay chiến đấu Metal Master
• Số lượng: 4 chiếc máy bay
• Kích thước hộp: 11 x 41 x 4 cm
• Chất liệu: Hợp kim Die-Cast + nhựa ABS cao cấp
• Màu sắc: Nhiều mẫu như hình
• Độ tuổi phù hợp: Từ 3 tuổi trở lên
• Đóng gói: Hộp trưng bày đẹp mắt, thích hợp làm quà tặng
🎯 LỢI ÍCH KHI BÉ VUI CHƠI
🛩️ Kích thích trí tưởng tượng và khả năng sáng tạo.
🛩️ Phát triển kỹ năng quan sát và nhận biết phương tiện.
🛩️ Tăng khả năng phối hợp tay – mắt.
🛩️ Khuyến khích bé vui chơi cùng bạn bè và gia đình.
🛩️ Hạn chế thời gian sử dụng điện thoại, máy tính bảng và tivi.
🎁 MÓN QUÀ Ý NGHĨA DÀNH CHO BÉ
Bộ máy bay chiến đấu hợp kim là món quà tuyệt vời dành cho các bé yêu thích hàng không và mô hình quân sự. Phù hợp làm quà sinh nhật, Giáng sinh, Quốc tế Thiếu nhi, quà thưởng học tập hoặc các dịp đặc biệt.
💖 CAM KẾT TỪ SHOP
✅ Hàng mới 100%, đúng hình mô tả.
✅ Kiểm tra kỹ trước khi đóng gói.
✅ Đóng gói cẩn thận, hạn chế va đập khi vận chuyển.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
✅ Tư vấn nhiệt tình trước và sau khi mua hàng.
#Bo4MayBayChienDau #MayBayChienDau #MoHinhMayBay #MayBayQuanSu #DoChoiChoBe #DoChoiBeTrai #DoChoiTreEm #DoChoiHopKim #DieCast #DieCastPlane #MetalMaster #MayBayMoHinh #MayBayKimLoai #DoChoiSangTao #DoChoiAnToan #QuaTangChoBe #QuaTangBeTrai #QuaTangSinhNhat #DoChoi3Tuoi #ShopeeKids','[{"n": "Country of Origin", "v": "China"}, {"n": "Custom Product", "v": "No"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Xe đồ chơi']::text[],'https://shopee.vn/product/67689883/26494961479') on conflict (id) do nothing;
delete from product_images where product_id='26494961479';
insert into product_images(product_id,url,sort_order) values ('26494961479','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozj6mzj3wuk46',0);
insert into product_images(product_id,url,sort_order) values ('26494961479','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozi324kxqfh16',1);
insert into product_images(product_id,url,sort_order) values ('26494961479','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozi9etk6o7i61',2);
insert into product_images(product_id,url,sort_order) values ('26494961479','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozi2ysm3p4x98',3);
insert into product_images(product_id,url,sort_order) values ('26494961479','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozi5m19pfkfd3',4);
delete from product_variants where product_id='26494961479'; delete from product_models where product_id='26494961479'; delete from product_categories where product_id='26494961479';
insert into product_categories values ('26494961479','271399347') on conflict do nothing;
delete from reviews where product_id='26494961479' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('26494961479','mydau1207',5,'Sản phẩm ok, ship hàng nhanh chóng, đóng gói cẩn thận, shop tư vấn nhiệt tình, sẽ ủng hộ tiếp. Thanks!','',array['https://down-vn.img.susercontent.com/file/vn-11134103-81ztc-mtamqca28lc272','https://down-vn.img.susercontent.com/file/vn-11134103-81ztc-mtamqca3eqddc7','https://down-vn.img.susercontent.com/file/vn-11134103-81ztc-mtamqcabkb2e66']::text[],'Chân thành cảm ơn khách iu đã tin tưởng ủng hộ shop, chúc bạn luôn mạnh khỏe và thành công nhé',to_timestamp(1789799820));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('26494961479','neah_aiden',5,'','','{}'::text[],'Biết ơn khách iu đã luôn ủng hộ shop, chúc bạn cùng gia đình luôn mạnh khoẻ và Bình An ạ♥️',to_timestamp(1782482271));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('26494961479','t*****9',5,'','','{}'::text[],'Chân thành cảm ơn bạn đã tặng 5⭐️ , chúc bạn ngày mới nhiều may mắn và thành công ạ',to_timestamp(1781664687));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('26494961479','thaonb01',5,'','','{}'::text[],'Cảm ơn bạn đã tặng 5⭐️ , chúc bạn và Gia Đình luôn vui vẽ và nhiều may mắn ạ',to_timestamp(1781578967));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('54214135268','Bộ 5 Thẻ Gồm 10 Supports Mezastar 2 Mặt Hỗ Trợ Chiến Đấu Tặng Kèm Bọc Thẻ Cao Cấp','bo-5-the-gom-10-supports-mezastar-2-mat-ho-tro-chien-dau-tang-kem-boc-the-cao-ca-35268',299600,null,428000,30,null,9,4.50,2,'{0,0,0,1,1}','','🔥 BỘ 5 THẺ SUPPORTS MEZASTAR 2 MẶT CAO CẤP ⚔️
Nâng cấp trải nghiệm chiến đấu với bộ thẻ Supports Mezastar, giúp người chơi mở rộng hệ thống nhân vật hỗ trợ và tăng sức mạnh đội hình trong các trận đấu.
Thiết kế 2 mặt tiện lợi, mỗi mặt là một Supports riêng biệt, mang đến nhiều lựa chọn chiến thuật hơn khi chơi Mezastar.
⭐ ĐIỂM NỔI BẬT
✔️ Bộ gồm 3 thẻ – tổng 6 mặt Supports sử dụng
✔️ Tất cả đều là phiên bản 100% Dynamax
✔️ Mỗi mặt là một Supports Mezastar riêng biệt
✔️ In sắc nét, màu đẹp, hiển thị rõ ràng
✔️ Thiết kế nhỏ gọn, dễ mang theo và sưu tầm
✔️ Chất liệu bền đẹp, sử dụng lâu dài
✔️ Tăng trải nghiệm chiến thuật trong game
🎯 CÔNG DỤNG SẢN PHẨM
🎮 Quét để kích hoạt Supports hỗ trợ chiến đấu
🎮 Mở rộng đội hình nhân vật hỗ trợ
🎮 Tăng khả năng chiến thuật trong Mezastar
🎮 Phù hợp cho người chơi và người sưu tầm
🎮 Làm quà tặng cho bé yêu thích game thẻ
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Bộ 5 thẻ Supports Mezastar
• Số lượng: 5 thẻ (10 mặt Supports)
• Phiên bản: 100% Dynamax
• Thiết kế: 2 mặt / thẻ
• Tình trạng: Mới 100%
• Tặng kèm: Bọc bảo vệ thẻ
💥 VÌ SAO NÊN CHỌN SẢN PHẨM NÀY?
✔️ Mở rộng nhanh bộ Supports trong Mezastar
✔️ Tăng trải nghiệm chiến đấu đa dạng hơn
✔️ Thiết kế đẹp, dễ sưu tầm
✔️ Giá hợp lý, hiệu quả cao
✔️ Phù hợp người chơi mới và lâu năm
💖 CAM KẾT TỪ SHOP
✔️ Sản phẩm đúng mô tả 100%
✔️ Đóng gói cẩn thận chống hư hỏng
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi gửi hàng
#SupportsMezastar #TheDynamax #MezastarVN #TheSupport #TheQRMezastar #TheSuuTam #BoTheMezastar #HoTroChienDau #The2Mat #GamingCard #PhuKienMezastar #DynamaxCard #BoSupport #TheQuetMezastar #SuuTamTheBai','[{"n": "Recommended Age", "v": "6 - 14 years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/54214135268') on conflict (id) do nothing;
delete from product_images where product_id='54214135268';
insert into product_images(product_id,url,sort_order) values ('54214135268','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqqfvtoi9ij16c',0);
insert into product_images(product_id,url,sort_order) values ('54214135268','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqqjz6mtlvkd1b',1);
insert into product_images(product_id,url,sort_order) values ('54214135268','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqqj1gg3aqkia5',2);
insert into product_images(product_id,url,sort_order) values ('54214135268','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqqhyxa2ax36e3',3);
delete from product_variants where product_id='54214135268'; delete from product_models where product_id='54214135268'; delete from product_categories where product_id='54214135268';
insert into product_categories values ('54214135268','272906965') on conflict do nothing;
delete from reviews where product_id='54214135268' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54214135268','g*****4',4,'Chất lượng sản phẩm:ok

Ko đúng lần đầu nhưng có đổi lain cho đúng hơn

Tốt tttttttt','',array['https://down-vn.img.susercontent.com/file/vn-11134103-81ztc-mr41d7oyq29x60']::text[],'Dạ e chào a,c ko biết sản phẩm bị sai sót hai lỗi gì khiến a c ko đc vui ạ, e đã in để tiện hổ trợ cho mình rồi ạ, mong a,c cho e ích tg để khắc phục điều a,c chưa hài lòng nhé.',to_timestamp(1785042300));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54214135268','ducanh_2102',5,'','','{}'::text[],'Chân thành cảm ơn bạn đã ủng hộ shop chúc bạn luôn gặp nhiều may mắn',to_timestamp(1788497448));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('42431610447','Đồ Chơi Lắp Ráp Máy Bay Dynamic Cho Bé 6+, Mô Hình Máy Bay STEM Rèn Luyện Tư Duy Sáng Tạo','do-choi-lap-rap-may-bay-dynamic-cho-be-6-mo-hinh-may-bay-stem-ren-luyen-tu-duy-s-10447',362080,null,496000,27,null,27,5.00,4,'{0,0,0,0,4}','','Đồ Chơi Lắp Ráp Máy Bay Dynamic Cho Bé 6+, Mô Hình Máy Bay STEM Rèn Luyện Tư Duy Sáng Tạo
✈️ Đồ Chơi Lắp Ráp Máy Bay Dynamic là đồ chơi cho bé giúp trẻ khám phá thế giới kỹ thuật thông qua việc tự tay lắp ráp mô hình máy bay cánh quạt đầy chân thực. Với các mảnh ghép chắc chắn, thiết kế sinh động và màu sắc nổi bật, bé sẽ được trải nghiệm cảm giác hoàn thiện một chiếc máy bay của riêng mình, vừa vui chơi vừa phát triển tư duy sáng tạo và khả năng quan sát.
Không chỉ là đồ chơi lắp ráp máy bay, sản phẩm còn là đồ chơi giáo dục STEM giúp bé rèn luyện tư duy logic, kỹ năng giải quyết vấn đề và khả năng phối hợp tay mắt trong quá trình lắp ghép. Chất liệu nhựa ABS cao cấp, bề mặt nhẵn mịn, an toàn khi sử dụng cùng thiết kế dễ thao tác giúp bé từ 6 tuổi trở lên có thể tự tin khám phá và chinh phục những thử thách lắp ráp.
✨ Ưu điểm nổi bật
✔️ Thiết kế mô hình máy bay cánh quạt chân thực với nhiều chi tiết sắc nét, đẹp mắt.
✔️ Các mảnh ghép chắc chắn, dễ lắp ráp, giúp bé phát triển kỹ năng thực hành.
✔️ Là đồ chơi STEM giúp nâng cao tư duy logic, khả năng sáng tạo và kỹ năng giải quyết vấn đề.
✔️ Rèn luyện sự tập trung, tính kiên nhẫn và khả năng phối hợp tay mắt.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, an toàn cho trẻ nhỏ.
✔️ Màu sắc vàng – trắng – xám nổi bật, tạo hứng thú trong quá trình vui chơi.
🌟 Lợi ích cho bé
Phát triển tư duy sáng tạo và tư duy không gian.
Nâng cao khả năng quan sát, ghi nhớ và phân tích.
Rèn luyện kỹ năng lắp ráp, vận động tinh và sự khéo léo.
Khơi gợi niềm yêu thích khoa học, kỹ thuật và khám phá.
Giúp bé hạn chế thời gian sử dụng điện thoại, máy tính bảng và các thiết bị điện tử.
📦 Thông tin sản phẩm
Tên sản phẩm: Đồ Chơi Lắp Ráp Máy Bay Dynamic
Chủ đề: Máy bay cánh quạt
Kích thước hộp: 29 x 42 x 6 cm
Chất liệu: Nhựa ABS cao cấp
Màu sắc: Vàng – Trắng – Xám
Độ tuổi phù hợp: Từ 6 tuổi trở lên
Công dụng: Đồ chơi giáo dục STEM, phát triển tư duy sáng tạo
🎁 Đồ chơi lắp ráp máy bay Dynamic là món quà ý nghĩa dành cho bé trai và bé gái yêu thích máy bay, kỹ thuật và mô hình lắp ráp. Sản phẩm phù hợp làm quà sinh nhật, Noel, Quốc tế Thiếu nhi hoặc phần thưởng học tập. Đây là đồ chơi xếp hình sáng tạo giúp bé vừa học vừa chơi, phát triển tư duy logic, tăng khả năng tập trung và khám phá thế giới cơ khí một cách đầy hứng thú.
💖 Cam kết từ Shop
Sản phẩm mới 100%, đúng mô tả.
Kiểm tra kỹ trước khi giao hàng.
Đóng gói cẩn thận, chống va đập.
Hỗ trợ đổi trả theo chính sách Shopee.
Tư vấn nhiệt tình trước và sau khi mua hàng.
#DoChoiLapRap #MayBayLapRap #DoChoiSTEM #DoChoiChoBe #DoChoiGiaoDuc #MoHinhMayBay #LapRapMayBay #XepHinhSangTao #DoChoiThongMinh #QuaTangChoBe #DoChoi6Tuoi #BuildingBlocks #DynamicBuildingBlocks #DoChoiKyThuat #ShopeeVN','[{"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/42431610447') on conflict (id) do nothing;
delete from product_images where product_id='42431610447';
insert into product_images(product_id,url,sort_order) values ('42431610447','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpaxg048ln2k0b',0);
insert into product_images(product_id,url,sort_order) values ('42431610447','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpax3adqclxr51',1);
insert into product_images(product_id,url,sort_order) values ('42431610447','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpaxg6oe91xe4f',2);
insert into product_images(product_id,url,sort_order) values ('42431610447','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpax260ft3wh23',3);
insert into product_images(product_id,url,sort_order) values ('42431610447','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpax6yxwz9qkc2',4);
delete from product_variants where product_id='42431610447'; delete from product_models where product_id='42431610447'; delete from product_categories where product_id='42431610447';
insert into product_categories values ('42431610447','271399347') on conflict do nothing;
insert into product_categories values ('42431610447','271741642') on conflict do nothing;
delete from reviews where product_id='42431610447' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42431610447','phamanhthu311',5,'Chất lượng tốt, giá tốt','','{}'::text[],'Chân thành cảm ơn bạn đã ủng hộ shop, chúc bạn luôn thành công và gặp nhiều may mắn',to_timestamp(1784517283));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42431610447','vutruongchi',5,'','','{}'::text[],'Cảm ơn bạn đã ủng hộ shop, chúc bạn ngày mới nhiều may mắn và thành công ♥️',to_timestamp(1783213344));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42431610447','vutoan1987hp',5,'','','{}'::text[],'Chân thành cảm ơn bạn đã tặng 5⭐️, chúc bạn buổi tối ấm áp bên gia đình ạ',to_timestamp(1782041590));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('42431610447','chauhy2405',5,'','','{}'::text[],'Cảm ơn bạn đã ủng hộ shop, chúc bạn và gia đình luôn vui vẻ và hạnh phúc nhé ♥️',to_timestamp(1783149914));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('51210338772','Bộ Đồ Chơi Phòng Ngủ Thỏ Bunny Mini Cho Bé Nhà Búp Bê Cao Cấp Kèm Phụ Kiện Bé Gái','bo-do-choi-phong-ngu-tho-bunny-mini-cho-be-nha-bup-be-cao-cap-kem-phu-kien-be-ga-38772',332880,null,456000,27,null,6,5.00,1,'{0,0,0,0,1}','','🐰 BỘ ĐỒ CHƠI PHÒNG NGỦ THỎ BUNNY MINI CHO BÉ – NHÀ BÚP BÊ CAO CẤP KÈM PHỤ KIỆN SIÊU DỄ THƯƠNG 🏡
Mang đến cho bé một thế giới cổ tích đầy màu sắc với Bộ Đồ Chơi Phòng Ngủ Thỏ Bunny Mini Cho Bé. Bộ nhà búp bê cao cấp kèm phụ kiện được thiết kế theo phong cách phòng ngủ mini với tông màu hồng pastel đáng yêu, đi kèm những chú thỏ dễ thương và nhiều món nội thất xinh xắn, giúp bé thỏa sức sáng tạo những câu chuyện của riêng mình.
Đây là đồ chơi cho bé giúp phát triển trí tưởng tượng, khả năng nhập vai, tư duy sắp xếp và kỹ năng giao tiếp thông qua các hoạt động vui chơi hằng ngày.
🌟 ƯU ĐIỂM NỔI BẬT
✔️ Thiết kế phòng ngủ thỏ Bunny mini đáng yêu với màu sắc tươi sáng.
✔️ Bao gồm nhiều phụ kiện như giường cũi, tủ đồ, xe ngựa bập bênh, thú thỏ và đồ trang trí.
✔️ Có 2 nhân vật thỏ Bunny dễ thương giúp bé nhập vai sinh động.
✔️ Chất liệu nhựa cao cấp, bề mặt nhẵn mịn, bo tròn an toàn.
✔️ Giúp bé phát triển tư duy sáng tạo, kỹ năng sắp xếp và khả năng kể chuyện.
✔️ Phù hợp cho cả vui chơi, trang trí và sưu tầm mô hình mini.
📦 BỘ SẢN PHẨM BAO GỒM
• 01 mô hình phòng ngủ thỏ Bunny mini
• 02 nhân vật thỏ dễ thương
• Giường cũi em bé
• Tủ kệ mini
• Xe ngựa bập bênh
• Các phụ kiện trang trí khác như hình
📏 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Bộ Đồ Chơi Phòng Ngủ Thỏ Bunny Mini
• Chất liệu: Nhựa cao cấp an toàn
• Kích thước hộp: 18 x 37 x 13 cm
• Màu sắc: Hồng pastel
• Kiểu đồ chơi: Nhà búp bê – mô hình nội thất mini
• Độ tuổi phù hợp: Từ 3 tuổi trở lên
🎯 LỢI ÍCH KHI BÉ VUI CHƠI
🧠 Phát triển trí tưởng tượng và khả năng sáng tạo.
🧠 Rèn luyện kỹ năng giao tiếp và kể chuyện.
🧠 Hình thành tư duy sắp xếp và tổ chức không gian.
🧠 Tăng khả năng phối hợp tay – mắt.
🧠 Mang đến những giờ phút vui chơi bổ ích cùng gia đình và bạn bè.
🧠 Giảm thời gian sử dụng điện thoại và các thiết bị điện tử.
🎁 MÓN QUÀ Ý NGHĨA DÀNH CHO BÉ
Bộ đồ chơi phòng ngủ thỏ Bunny mini là món quà lý tưởng dành cho các bé yêu thích nhà búp bê, mô hình nội thất mini và trò chơi nhập vai. Phù hợp làm quà sinh nhật, Noel, Quốc tế Thiếu nhi hoặc các dịp đặc biệt.
💖 CAM KẾT TỪ SHOP
✅ Hàng mới 100%, đúng hình mô tả.
✅ Kiểm tra kỹ trước khi đóng gói.
✅ Đóng gói cẩn thận, hạn chế va đập trong quá trình vận chuyển.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
✅ Tư vấn nhiệt tình trước và sau khi mua hàng.
#PhongNguThoBunny #NhaBupBe #NhaBupBeMini #DoChoiChoBe #DoChoiBeGai #DoChoiTreEm #MoHinhMini #DoChoiNhapVai #DoChoiSangTao #DoChoiGiaoDuc #RabbitToy #BupBeTho #DoChoi3Tuoi #QuaTangChoBe #QuaTangBeGai #QuaTangSinhNhat #DoChoiAnToan #NoiThatMini #SetThoMini #DoChoiCaoCap','[{"n": "Material", "v": "ABS, Fabric"}, {"n": "Build-in Battery", "v": "No"}, {"n": "Gender", "v": "Girl"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Búp bê & Thú nhồi bông','Nhà búp bê & Phụ kiện']::text[],'https://shopee.vn/product/67689883/51210338772') on conflict (id) do nothing;
delete from product_images where product_id='51210338772';
insert into product_images(product_id,url,sort_order) values ('51210338772','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mon1iw6ps1ky49',0);
insert into product_images(product_id,url,sort_order) values ('51210338772','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo5255r6d5ok6f',1);
insert into product_images(product_id,url,sort_order) values ('51210338772','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofr7rya0ow084',2);
insert into product_images(product_id,url,sort_order) values ('51210338772','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo528c7z2gozd7',3);
insert into product_images(product_id,url,sort_order) values ('51210338772','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo527emrvbpgc0',4);
delete from product_variants where product_id='51210338772'; delete from product_models where product_id='51210338772'; delete from product_categories where product_id='51210338772';
insert into product_variants(product_id,name,options,images) values ('51210338772','Loại',array['Đồ Chơi Phòng Ngủ']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo78xbb1r8cgef']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('51210338772','Đồ Chơi Phòng Ngủ',332880,null,'');
insert into product_categories values ('51210338772','271399347') on conflict do nothing;
insert into product_categories values ('51210338772','271741704') on conflict do nothing;
insert into product_categories values ('51210338772','271741912') on conflict do nothing;
delete from reviews where product_id='51210338772' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('51210338772','g*****h',5,'Hàng giống như ảnh, giao hàng rất nhanh, cảm ơn shop','Đồ Chơi Phòng Ngủ',array['https://down-vn.img.susercontent.com/file/vn-11134103-81ztc-mp17542tff9def']::text[],'Cảm ơn bạn đã tặng 5⭐️ , chúc bạn thật nhiều niếm vui và sức khoẻ ạ♥️',to_timestamp(1780511865));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('57713851842','Bộ 10 Xe Ô Tô Đồ Chơi Mini Nhiều Màu, Xe Đua Mô Hình Cho Bé,Đồ Chơi Cho Bé','bo-10-xe-o-to-do-choi-mini-nhieu-mau-xe-dua-mo-hinh-cho-be-do-choi-cho-be-51842',424500,null,566000,25,null,2,5.00,1,'{0,0,0,0,1}','','BỘ 10 XE Ô TÔ ĐỒ CHƠI MINI NHIỀU MÀU CHO BÉ
Bộ sưu tập gồm 10 mẫu xe đua mini với kiểu dáng đa dạng và màu sắc nổi bật. Sản phẩm phù hợp để bé vui chơi, tổ chức những cuộc đua thú vị cùng bạn bè hoặc dùng làm quà tặng trong các dịp đặc biệt.
Điểm nổi bật
✅ Bộ sản phẩm gồm 10 xe ô tô đồ chơi mini
✅ Nhiều kiểu dáng xe đua khác nhau, hạn chế cảm giác nhàm chán
✅ Màu sắc bắt mắt, giúp bé dễ nhận biết và phân biệt màu sắc
✅ Thiết kế nhỏ gọn, vừa tay trẻ em, thuận tiện mang theo
✅ Có thể chơi cá nhân hoặc chơi cùng bạn bè
✅ Phù hợp làm quà sinh nhật, quà lễ, quà thưởng cho bé
Lợi ích khi vui chơi
Khuyến khích bé sáng tạo các đường đua và tình huống vui chơi
Hỗ trợ rèn luyện khả năng quan sát, phối hợp tay và mắt
Tăng khả năng tương tác khi bé chơi cùng người thân, bạn bè
Giúp bé hạn chế thời gian sử dụng điện thoại và thiết bị điện tử
Thông tin sản phẩm
Kích Thước: 28x19x4 cm
Tên sản phẩm: Bộ xe ô tô đồ chơi mini
Số lượng: 10 xe/bộ
Màu sắc: Nhiều màu
Kiểu dáng: Xe đua mô hình mini
Độ tuổi đề xuất: Trẻ từ 3 tuổi trở lên
Quy cách: Đóng hộp, thích hợp làm quà tặng
Lưu ý
Màu sắc thực tế có thể chênh lệch nhẹ do ánh sáng và màn hình hiển thị.
Nên cho bé chơi dưới sự quan sát của người lớn.
Không đặt sản phẩm gần nguồn nhiệt cao.
Vui lòng kiểm tra kích thước và thông tin sản phẩm trước khi đặt hàng.
#xeotodochoi #xedochoimini #xemohinhmini #xedua #boxedochoi #dochoichobe #dochoitreem #dochoibetraibegai #quatangchobe #bo10xe #xeotochobe #xemohinhchobe
#xe_ô_tô_đồ_chơi #xe_đồ_chơi_mini #xe_mô_hình #xe_đua_đồ_chơi #đồ_chơi_cho_bé #bộ_10_xe #quà_tặng_cho_bé','[{"n": "Custom Product", "v": "No"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Xe đồ chơi']::text[],'https://shopee.vn/product/67689883/57713851842') on conflict (id) do nothing;
delete from product_images where product_id='57713851842';
insert into product_images(product_id,url,sort_order) values ('57713851842','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjz55wul7nla9',0);
insert into product_images(product_id,url,sort_order) values ('57713851842','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjz0rwcy4n6a3',1);
insert into product_images(product_id,url,sort_order) values ('57713851842','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjz3iufer6799',2);
insert into product_images(product_id,url,sort_order) values ('57713851842','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjz5obajl7195',3);
insert into product_images(product_id,url,sort_order) values ('57713851842','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjzc25ik5qkc2',4);
delete from product_variants where product_id='57713851842'; delete from product_models where product_id='57713851842'; delete from product_categories where product_id='57713851842';
insert into product_categories values ('57713851842','271399347') on conflict do nothing;
insert into product_categories values ('57713851842','271742074') on conflict do nothing;
delete from reviews where product_id='57713851842' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('57713851842','wendy25031990',5,'','','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop , chúc bạn luôn thành công trong mọi việc',to_timestamp(1788104299));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('43881632935','Đồ Chơi Rùa Ăn Bi Hungry Turtles Trò Chơi Trí Tuệ Gia Đình Đồ Chơi Phản Xạ Cho Bé','do-choi-rua-an-bi-hungry-turtles-tro-choi-tri-tue-gia-dinh-do-choi-phan-xa-cho-b-32935',260610,null,357000,27,null,7,5.00,1,'{0,0,0,0,1}','','🐢 ĐỒ CHƠI RÙA ĂN BI HUNGRY TURTLES – TRÒ CHƠI TRÍ TUỆ TƯƠNG TÁC CỰC VUI CHO CẢ GIA ĐÌNH
Mang đến những giờ phút giải trí sôi động với đồ chơi Rùa Ăn Bi Hungry Turtles – trò chơi trí tuệ kết hợp phản xạ nhanh, giúp bé vừa vui chơi vừa phát triển kỹ năng toàn diện. Đây là đồ chơi cho bé, trò chơi gia đình và board game trẻ em phù hợp cho 2–4 người chơi, giúp cả gia đình gắn kết qua những trận đấu đầy kịch tính.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Lối chơi đơn giản nhưng cực kỳ hấp dẫn: nhấn liên tục để chú rùa ăn bi thật nhanh và giành chiến thắng.
✔️ Hỗ trợ 2–4 người chơi, phù hợp chơi cùng bố mẹ, anh chị em hoặc bạn bè.
✔️ Thiết kế nhiều màu sắc bắt mắt, kích thích thị giác và tạo hứng thú cho bé.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, các góc bo tròn an toàn cho trẻ nhỏ.
✔️ Là đồ chơi trí tuệ, đồ chơi phản xạ giúp bé phát triển khả năng quan sát, phản ứng nhanh và phối hợp tay mắt.
✔️ Thích hợp sử dụng tại nhà, trường học, lớp học kỹ năng hoặc các buổi sinh nhật, dã ngoại.
🧠 LỢI ÍCH CHO BÉ
Rèn luyện phản xạ nhanh và sự khéo léo của đôi tay.
Phát triển khả năng phối hợp tay – mắt.
Giúp bé nhận biết màu sắc và học đếm số lượng bi sau mỗi lượt chơi.
Tăng khả năng tập trung, tư duy và kỹ năng giao tiếp.
Khuyến khích bé hạn chế sử dụng điện thoại, tivi thông qua trò chơi tương tác.
Gắn kết gia đình với những phút giây vui vẻ bên nhau.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Đồ chơi Rùa Ăn Bi Hungry Turtles.
Chất liệu: Nhựa ABS cao cấp.
Kích thước: 26 x 27 x 9 cm.
Độ tuổi phù hợp: Từ 3 tuổi trở lên.
Số lượng người chơi: 2–4 người.
📦 BỘ SẢN PHẨM BAO GỒM
01 khay trò chơi trung tâm.
04 chú rùa nhiều màu sắc.
Bộ bi nhựa nhiều màu.
Hàng rào và phụ kiện đi kèm.
🎮 HƯỚNG DẪN CHƠI
Đổ toàn bộ bi vào khay trung tâm.
Các người chơi cùng bắt đầu và liên tục nhấn lẫy phía sau chú rùa để rùa ăn bi.
Khi hết bi, đếm số bi mỗi người thu được. Người có nhiều bi nhất sẽ chiến thắng.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Là món quà sinh nhật cho bé trai, bé gái, quà Noel, Quốc tế Thiếu nhi hoặc quà thưởng học tập. Phù hợp với các bé yêu thích đồ chơi Rùa Ăn Bi, trò chơi trí tuệ, board game cho bé, đồ chơi giáo dục, đồ chơi phản xạ, đồ chơi tương tác, trò chơi gia đình, đồ chơi phát triển tư duy và đồ chơi vận động.
💯 CAM KẾT TỪ SHOP
✅ Sản phẩm mới 100%, đúng hình ảnh và mô tả.
✅ Kiểm tra kỹ trước khi đóng gói.
✅ Đóng gói cẩn thận, giao hàng nhanh.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
#ruaanbi #hungryturtles #dochoitritue #boardgame #boardgamechobe #trochoigiadinh #trochoituongtac #dochoiphanxa #dochoigiaoduc #dochoithongminh #dochoichobe #dochoitreem #quatangchobe #quatangsinhnhat #phattrientuduy #renluyenphanxa #dochoivandong #trochoichobe #gamegiadinh #dochoi3tuoi','[{"n": "Material", "v": "ABS"}, {"n": "Gender", "v": "Unisex"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Khác']::text[],'https://shopee.vn/product/67689883/43881632935') on conflict (id) do nothing;
delete from product_images where product_id='43881632935';
insert into product_images(product_id,url,sort_order) values ('43881632935','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpcdzviv8ttt82',0);
insert into product_images(product_id,url,sort_order) values ('43881632935','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpcdd7hy5o8wf7',1);
insert into product_images(product_id,url,sort_order) values ('43881632935','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpcdn9ghul8va2',2);
insert into product_images(product_id,url,sort_order) values ('43881632935','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpcddsd2n21b65',3);
insert into product_images(product_id,url,sort_order) values ('43881632935','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpcdnfllasjl87',4);
delete from product_variants where product_id='43881632935'; delete from product_models where product_id='43881632935'; delete from product_categories where product_id='43881632935';
insert into product_categories values ('43881632935','271399347') on conflict do nothing;
delete from reviews where product_id='43881632935' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('43881632935','mylinh233',5,'','','{}'::text[],'Cảm ơn bạn đã tin tưởng ủng hộ shop ạ, chúc bạn luôn mạnh khỏe và thành công nhé',to_timestamp(1787883036));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('51212616654','Đế Trưng Bày Thẻ Mezastar Cao Cấp Nhựa Chống Trầy Phụ Kiện Sưu Tầm Trang Trí Bàn Học','de-trung-bay-the-mezastar-cao-cap-nhua-chong-tray-phu-kien-suu-tam-trang-tri-ban-16654',67500,200000,135000,50,null,3,4.00,1,'{0,0,0,1,0}','','🃏 ĐẾ TRƯNG BÀY THẺ MEZASTAR CAO CẤP – PHỤ KIỆN SƯU TẦM CHỐNG TRẦY SANG TRỌNG ✨
Nâng tầm bộ sưu tập của bạn với Đế trưng bày thẻ Mezastar cao cấp, phụ kiện không thể thiếu dành cho người chơi và người sưu tầm thẻ Mezastar. Thiết kế hiện đại, tinh tế giúp trưng bày thẻ gọn gàng, đẹp mắt và chuyên nghiệp hơn.
Sản phẩm giúp bảo vệ thẻ khỏi trầy xước, đồng thời tăng tính thẩm mỹ khi đặt trên bàn học, bàn làm việc hoặc tủ trưng bày.
🌟 ĐẶC ĐIỂM NỔI BẬT
✔️ Thiết kế đẹp mắt, màu sắc sắc nét và hiện đại
✔️ Chất liệu nhựa cao cấp, bền bỉ theo thời gian
✔️ Kèm đế trưng bày chắc chắn, giữ thẻ ổn định
✔️ Hỗ trợ chống trầy xước và bảo vệ thẻ tối ưu
✔️ Dễ dàng vệ sinh, bảo quản và sử dụng lâu dài
✔️ Phù hợp cho người sưu tầm và fan Mezastar
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Đế trưng bày thẻ Mezastar
• Chất liệu: Nhựa cao cấp
• Màu sắc: Theo thiết kế sản phẩm
• Công dụng: Trưng bày, bảo vệ và trang trí thẻ Mezastar
🎯 CÔNG DỤNG SẢN PHẨM
🃏 Trưng bày bộ sưu tập thẻ Mezastar
🃏 Trang trí bàn học, bàn làm việc
🃏 Bảo vệ thẻ khỏi trầy xước và hư hỏng
🃏 Làm phụ kiện sưu tầm cho người chơi Mezastar
🃏 Tăng tính thẩm mỹ cho không gian trưng bày
🎁 PHÙ HỢP LÀM QUÀ TẶNG
✔ Quà cho bé yêu thích Mezastar
✔ Quà sinh nhật
✔ Quà tặng người sưu tầm thẻ
✔ Phụ kiện trang trí bàn học độc đáo
💖 CAM KẾT TỪ SHOP
✔️ Hình ảnh đúng sản phẩm thực tế
✔️ Đóng gói cẩn thận trước khi giao
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi gửi hàng
#Mezastar #DeTrungBayThe #TheMezastar #PhuKienMezastar #TheSuuTam #DoChoiSuuTam #PhuKienTrangTri #TheTrangTri #DoChoiTreEm #Quatangsinhnhat #PhuKienBanHoc #SuuTamThe #MezastarVietnam #DisplayCard #CardStand','[{"n": "Recommended Age", "v": "2 - 6 years"}, {"n": "Custom Product", "v": "No"}, {"n": "Cartoon Characters", "v": "Pokemon"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/51212616654') on conflict (id) do nothing;
delete from product_images where product_id='51212616654';
insert into product_images(product_id,url,sort_order) values ('51212616654','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mps1jxp17sapfd',0);
insert into product_images(product_id,url,sort_order) values ('51212616654','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mq266vcop0qo16',1);
insert into product_images(product_id,url,sort_order) values ('51212616654','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mps1ldy0trf3f9',2);
insert into product_images(product_id,url,sort_order) values ('51212616654','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mps1ng4yr5sc02',3);
insert into product_images(product_id,url,sort_order) values ('51212616654','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mps1krtt4wsu7b',4);
delete from product_variants where product_id='51212616654'; delete from product_models where product_id='51212616654'; delete from product_categories where product_id='51212616654';
insert into product_variants(product_id,name,options,images) values ('51212616654','Số Lượng',array['1 Cái','Combo 5 Cái']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mps2m1snqs5pd1','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mps2w5r5czkd4b']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('51212616654','1 Cái',67500,null,'');
insert into product_models(product_id,name,price,stock,image) values ('51212616654','Combo 5 Cái',200000,null,'');
insert into product_categories values ('51212616654','272906965') on conflict do nothing;
insert into product_categories values ('51212616654','271399347') on conflict do nothing;
delete from reviews where product_id='51212616654' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('51212616654','dfghytg',4,'','1 Cái','{}'::text[],'Cảm ơn bạn đã ủng hộ shop, chúc bạn luôn vui vẽ',to_timestamp(1786781186));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('53362126337','Móc Khóa Bảo Vệ Thẻ Mezastar TPU Dẻo 2 Mặt Chống Trầy Chống Sốc Hiển Thị Full Thẻ Cao Cấp','moc-khoa-bao-ve-the-mezastar-tpu-deo-2-mat-chong-tray-chong-soc-hien-thi-full-th-26337',94500,null,135000,30,null,55,4.62,8,'{0,0,1,1,6}','','🌟 MÓC KHÓA BẢO VỆ THẺ MEZASTAR TPU DẺO CAO CẤP – 2 MẶT HIỂN THỊ FULL THẺ 🌟
Bảo vệ tối đa những tấm thẻ Mezastar giá trị với móc khóa TPU dẻo cao cấp, thiết kế chuyên dụng giúp chống trầy xước, chống sốc và hạn chế hư hỏng trong quá trình sử dụng.
Sản phẩm không chỉ là phụ kiện bảo vệ mà còn là móc khóa trưng bày thẻ Mezastar cực đẹp, giúp bạn khoe bộ sưu tập một cách nổi bật và tiện lợi.
🛡️ ƯU ĐIỂM NỔI BẬT
✔️ Chất liệu TPU dẻo cao cấp, đàn hồi tốt, an toàn cho thẻ
✔️ Chống trầy xước cạnh và bề mặt thẻ Mezastar hiệu quả
✔️ Hạn chế va đập, giảm nguy cơ nứt gãy khi rơi rớt
✔️ Thiết kế trong suốt, hiển thị full 2 mặt thẻ
✔️ Không cần tháo thẻ ra khi sử dụng
✔️ Khoen kim loại chắc chắn, dễ treo balo hoặc chìa khóa
✔️ Phù hợp sưu tầm và trưng bày bộ thẻ Mezastar
✨ CÔNG DỤNG SẢN PHẨM
🎮 Bảo vệ thẻ Mezastar khỏi trầy xước và hư hỏng
🎮 Trưng bày bộ sưu tập thẻ đẹp mắt
🎮 Làm móc khóa treo balo, túi xách, chìa khóa
🎮 Phụ kiện không thể thiếu cho người chơi Mezastar
🎮 Quà tặng ý nghĩa cho fan sưu tầm thẻ
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Móc khóa bảo vệ thẻ Mezastar TPU
• Chất liệu: TPU dẻo cao cấp + khoen kim loại
• Thiết kế: Hiển thị 2 mặt thẻ
• Công dụng: Chống trầy, chống sốc, bảo vệ thẻ
• Phù hợp: Thẻ Mezastar kích thước tiêu chuẩn
💥 VÌ SAO NÊN CHỌN SẢN PHẨM NÀY?
✔️ Bảo vệ thẻ tốt hơn hộp nhựa cứng thông thường
✔️ Hiển thị full thẻ, không che mất chi tiết
✔️ Nhỏ gọn, tiện mang theo mọi lúc
✔️ Phù hợp sưu tầm và trưng bày lâu dài
✔️ Giá hợp lý cho người chơi Mezastar
💖 CAM KẾT TỪ SHOP
✔️ Sản phẩm đúng mô tả 100%
✔️ Đóng gói cẩn thận chống va đập
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi giao hàng
#Mezastar #MockhoaMezastar #TheMezastar #BaoVeTheMezastar #PhuKienMezastar #MockhoaTPU #Mockhoa2Mat #TheSuuTamMezastar #KhungTheMezastar #VoBaoVeThe #ChongTrayXuoc #ChongSoc #DoSuuTam #PhuKienTheBai #QuangBaBoSuuTap','[{"n": "Build-in Battery", "v": "No"}, {"n": "Gender", "v": "Unisex"}, {"n": "Material", "v": "Nhựa TPU"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Khác']::text[],'https://shopee.vn/product/67689883/53362126337') on conflict (id) do nothing;
delete from product_images where product_id='53362126337';
insert into product_images(product_id,url,sort_order) values ('53362126337','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpe578b1bdvm28',0);
insert into product_images(product_id,url,sort_order) values ('53362126337','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpe57rb7785p18',1);
insert into product_images(product_id,url,sort_order) values ('53362126337','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpe5ahx8mw3wa6',2);
insert into product_images(product_id,url,sort_order) values ('53362126337','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpe5mndg55ov40',3);
insert into product_images(product_id,url,sort_order) values ('53362126337','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpecjfcl3fuqe9',4);
delete from product_variants where product_id='53362126337'; delete from product_models where product_id='53362126337'; delete from product_categories where product_id='53362126337';
insert into product_variants(product_id,name,options,images) values ('53362126337','Màu Sắc',array['Trắng','Đen']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpe5ng8vgc23ef','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpe5nvkw8ydr61']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('53362126337','Trắng',94500,null,'');
insert into product_models(product_id,name,price,stock,image) values ('53362126337','Đen',94500,null,'');
insert into product_categories values ('53362126337','272906965') on conflict do nothing;
insert into product_categories values ('53362126337','271399347') on conflict do nothing;
delete from reviews where product_id='53362126337' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53362126337','t*****a',5,'Giao hàng nhanh, sản phẩm bọc vừa vặn, thích hợp với nhiều loại','Đen',array['https://down-vn.img.susercontent.com/file/vn-11134103-81ztc-mq1uvpl7ku0ye3']::text[],'Cảm ơn khách iu đã tin tưởng và lựa chọn shop e ạ, chúc bạn cùng gia đình luôn vui vẻ và nhiều may mắn nhé ♥️',to_timestamp(1782731037));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53362126337','anhiumoe',4,'Sp đúng mô tả nma giá hơi cao còn vid vs ảnh mang tính chất nhận xu thui','Đen','{}'::text[],'Cảm ơn bạn đã ủng hộ shop ạ, chúc bạn luôn vui vẻ và nhiều may mắn,',to_timestamp(1782442813));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53362126337','taimk123456',3,':v có mỗi cái vòng nhựa thì bảo vệ thẻ kiểu gì','Đen','{}'::text[],'Cảm ơn bạn đã góp ý , nếu có vấn đề ko thoải máy về sp bạn vui lòng ib cho shop ,shop sẽ hổ trợ bạn hài lòng ạ',to_timestamp(1789205743));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53362126337','chu6243',5,'','Đen, Trắng','{}'::text[],'Chân thành cảm ơn bạn đã ủng hộ shop, chúc bạn thật nhiều sức khoẻ ạ',to_timestamp(1786352188));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53362126337','n*****n',5,'','Đen','{}'::text[],'Biết ơn khách iu đã luôn tin tưởng ủng hộ shop ạ, Chúc khách iu của shop buổi tối vui vẽ ♥️',to_timestamp(1782377901));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53362126337','khanh41190',5,'','Trắng','{}'::text[],'Cảm ơn khách iu đã ủng hộ, chúc khách của shop luôn gặp nhiều may mắn và thành công ạ',to_timestamp(1782193805));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53362126337','nguyenphong007z',5,'','Đen','{}'::text[],'Chân thành cảm ơn khách iu đã luôn ủng hộ shop, chúc bạn luôn mạnh khỏe và thành công',to_timestamp(1783007291));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53362126337','fa.chau.tran',5,'','Đen','{}'::text[],'Cảm ơn khách iu đã ủng hộ, chúc bạn luôn mạnh khỏe và thành công',to_timestamp(1788448625));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('45063632258','Đế Trưng Bày Thẻ Mezastar Cao Cấp Nhựa Chống Trầy - Phụ Kiện Sưu Tầm Trang Trí Bàn Học','de-trung-bay-the-mezastar-cao-cap-nhua-chong-tray-phu-kien-suu-tam-trang-tri-ban-32258',62000,183000,100000,39,null,3,0.00,0,'{0,0,0,0,0}','','🃏 ĐẾ TRƯNG BÀY THẺ MEZASTAR CAO CẤP – PHỤ KIỆN SƯU TẦM CHỐNG TRẦY SANG TRỌNG ✨
Nâng tầm bộ sưu tập của bạn với Đế trưng bày thẻ Mezastar cao cấp, phụ kiện không thể thiếu dành cho người chơi và người sưu tầm thẻ Mezastar. Thiết kế hiện đại, tinh tế giúp trưng bày thẻ gọn gàng, đẹp mắt và chuyên nghiệp hơn.
Sản phẩm giúp bảo vệ thẻ khỏi trầy xước, đồng thời tăng tính thẩm mỹ khi đặt trên bàn học, bàn làm việc hoặc tủ trưng bày.
🌟 ĐẶC ĐIỂM NỔI BẬT
✔️ Thiết kế đẹp mắt, màu sắc sắc nét và hiện đại
✔️ Chất liệu nhựa cao cấp, bền bỉ theo thời gian
✔️ Kèm đế trưng bày chắc chắn, giữ thẻ ổn định
✔️ Hỗ trợ chống trầy xước và bảo vệ thẻ tối ưu
✔️ Dễ dàng vệ sinh, bảo quản và sử dụng lâu dài
✔️ Phù hợp cho người sưu tầm và fan Mezastar
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Đế trưng bày thẻ Mezastar
• Chất liệu: Nhựa cao cấp
• Màu sắc: Theo thiết kế sản phẩm
• Công dụng: Trưng bày, bảo vệ và trang trí thẻ Mezastar
🎯 CÔNG DỤNG SẢN PHẨM
🃏 Trưng bày bộ sưu tập thẻ Mezastar
🃏 Trang trí bàn học, bàn làm việc
🃏 Bảo vệ thẻ khỏi trầy xước và hư hỏng
🃏 Làm phụ kiện sưu tầm cho người chơi Mezastar
🃏 Tăng tính thẩm mỹ cho không gian trưng bày
🎁 PHÙ HỢP LÀM QUÀ TẶNG
✔ Quà cho bé yêu thích Mezastar
✔ Quà sinh nhật
✔ Quà tặng người sưu tầm thẻ
✔ Phụ kiện trang trí bàn học độc đáo
💖 CAM KẾT TỪ SHOP
✔️ Hình ảnh đúng sản phẩm thực tế
✔️ Đóng gói cẩn thận trước khi giao
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi gửi hàng
#Mezastar #DeTrungBayThe #TheMezastar #PhuKienMezastar #TheSuuTam #DoChoiSuuTam #PhuKienTrangTri #TheTrangTri #DoChoiTreEm #Quatangsinhnhat #PhuKienBanHoc #SuuTamThe #MezastarVietnam #DisplayCard #CardStand','[{"n": "Recommended Age", "v": "2 - 6 years"}, {"n": "Custom Product", "v": "No"}, {"n": "Cartoon Characters", "v": "Pokemon"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/45063632258') on conflict (id) do nothing;
delete from product_images where product_id='45063632258';
insert into product_images(product_id,url,sort_order) values ('45063632258','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdd8ullhjwi98',0);
insert into product_images(product_id,url,sort_order) values ('45063632258','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqel6xemot8h3c',1);
insert into product_images(product_id,url,sort_order) values ('45063632258','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqel6xauwkxuf9',2);
insert into product_images(product_id,url,sort_order) values ('45063632258','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqel6xatglxndd',3);
insert into product_images(product_id,url,sort_order) values ('45063632258','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqel6xaym0w065',4);
delete from product_variants where product_id='45063632258'; delete from product_models where product_id='45063632258'; delete from product_categories where product_id='45063632258';
insert into product_variants(product_id,name,options,images) values ('45063632258','Số Lượng',array['1 Cái','Combo 5 Cái']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mps2m1snqs5pd1','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mps2w5r5czkd4b']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('45063632258','Combo 5 Cái',183000,null,'');
insert into product_models(product_id,name,price,stock,image) values ('45063632258','1 Cái',62000,null,'');
insert into product_categories values ('45063632258','khac') on conflict do nothing;
delete from reviews where product_id='45063632258' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('52861461103','Đồ Chơi Lắp Ráp Xe Đua 322 Mảnh Xe Thể Thao Racing Sport Đồ Chơi STEM Quà Tặng Cho Bé','do-choi-lap-rap-xe-dua-322-manh-xe-the-thao-racing-sport-do-choi-stem-qua-tang-c-61103',254770,null,349000,27,null,2,0.00,0,'{0,0,0,0,0}','','🏎️ ĐỒ CHƠI LẮP RÁP XE ĐUA 322 MẢNH RACING SPORT KIYUI H8907A – KHƠI DẬY ĐAM MÊ TỐC ĐỘ 🏎️
Nếu bé yêu thích những chiếc siêu xe mạnh mẽ và đam mê khám phá, Đồ Chơi Lắp Ráp Xe Đua 322 Mảnh Racing Sport KIYUI H8907A sẽ là lựa chọn tuyệt vời. Bộ đồ chơi xe thể thao cho bé gồm 322 chi tiết được thiết kế chính xác, giúp bé vừa vui chơi vừa phát triển tư duy logic, khả năng sáng tạo và kỹ năng lắp ráp.
Đây là mẫu đồ chơi STEM được nhiều phụ huynh lựa chọn, mang đến trải nghiệm học mà chơi, giúp bé rèn luyện tính kiên nhẫn, khả năng tập trung và phối hợp tay – mắt hiệu quả.
✨ ƯU ĐIỂM NỔI BẬT
✔️ Bộ lắp ráp gồm 322 mảnh ghép chắc chắn, độ hoàn thiện cao.
✔️ Thiết kế mô phỏng xe đua thể thao Racing Sport hiện đại, mạnh mẽ với màu vàng – đen nổi bật.
✔️ Các khớp nối chính xác, dễ lắp ghép, bám chắc sau khi hoàn thiện.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, an toàn cho trẻ nhỏ.
✔️ Giúp bé phát triển tư duy logic, khả năng giải quyết vấn đề và óc sáng tạo.
✔️ Rèn luyện sự khéo léo, tính kiên nhẫn và khả năng phối hợp tay – mắt.
✔️ Phù hợp với các bé yêu thích mô hình xe đua và đồ chơi lắp ráp.
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Bộ lắp ráp xe đua Racing Sport KIYUI H8907A
• Thương hiệu: KIYUI
• Mã sản phẩm: H8907A
• Chủ đề: Racing Sport
• Số lượng chi tiết: 322 PCS
• Kích thước hộp: 18 x 24 x 7 cm
• Chất liệu: Nhựa ABS cao cấp
• Màu sắc: Vàng – Đen
• Độ tuổi phù hợp: Từ 6 tuổi trở lên
• Đóng gói: Hộp màu đẹp, thích hợp làm quà tặng
🎯 LỢI ÍCH KHI BÉ CHƠI LẮP RÁP
🧩 Phát triển tư duy logic và khả năng sáng tạo.
🧩 Rèn luyện kỹ năng giải quyết vấn đề.
🧩 Tăng khả năng tập trung và ghi nhớ.
🧩 Phối hợp linh hoạt giữa tay và mắt.
🧩 Hình thành tính kiên nhẫn, cẩn thận và tỉ mỉ.
🧩 Giảm thời gian sử dụng điện thoại, máy tính bảng và các thiết bị điện tử.
🎁 MÓN QUÀ Ý NGHĨA DÀNH CHO BÉ
Bộ đồ chơi lắp ráp xe đua là món quà lý tưởng dành cho các bé yêu thích mô hình xe thể thao. Phù hợp làm quà sinh nhật, Quốc tế Thiếu nhi, Noel, phần thưởng học tập hoặc quà tặng khuyến khích bé khám phá và sáng tạo.
💖 CAM KẾT TỪ SHOP
✅ Hàng mới 100%, đúng mô tả.
✅ Kiểm tra kỹ sản phẩm trước khi đóng gói.
✅ Đóng gói cẩn thận, hạn chế va đập khi vận chuyển.
✅ Hỗ trợ khách hàng nhanh chóng nếu có lỗi từ nhà sản xuất.
#DoChoiLapRap #XeDuaLapRap #DoChoiXeTheThao #DoChoiChoBe #DoChoiSTEM #MoHinhXeTheThao #XeDuaRacingSport #DoChoiTriTue #DoChoiSangTao #DoChoiBeTrai #LapRap322Manh #GhepHinh322PCS #DoChoiGiaoDuc #QuaTangChoBe #QuaTangBeTrai #QuaTangSinhNhat #DoChoi6Tuoi #MoHinhXeDua #DoChoiABS #KIYUI','[{"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/52861461103') on conflict (id) do nothing;
delete from product_images where product_id='52861461103';
insert into product_images(product_id,url,sort_order) values ('52861461103','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxhj9ux6mfi86',0);
insert into product_images(product_id,url,sort_order) values ('52861461103','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxh6by307bi60',1);
insert into product_images(product_id,url,sort_order) values ('52861461103','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxhhl2hahhdc1',2);
insert into product_images(product_id,url,sort_order) values ('52861461103','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxh5qjs8wst98',3);
insert into product_images(product_id,url,sort_order) values ('52861461103','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxh8y5rhts05c',4);
delete from product_variants where product_id='52861461103'; delete from product_models where product_id='52861461103'; delete from product_categories where product_id='52861461103';
insert into product_categories values ('52861461103','271399347') on conflict do nothing;
insert into product_categories values ('52861461103','271741642') on conflict do nothing;
insert into product_categories values ('52861461103','271742074') on conflict do nothing;
delete from reviews where product_id='52861461103' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('48510312306','Bộ Đồ Chơi Nấu Ăn Cho Bé, Quà Tặng Cho Bé, Bộ Đồ Chơi Nấu Ăn Mini, Đồ Chơi Cao Cấp','bo-do-choi-nau-an-cho-be-qua-tang-cho-be-bo-do-choi-nau-an-mini-do-choi-cao-cap-12306',416100,null,570000,27,null,3,5.00,1,'{0,0,0,0,1}','','[CHÍNH HÃNG PEIYILE] BỘ ĐỒ CHƠI NẤU ĂN CAO CẤP - BỮA TỐI SANG TRỌNG VỚI BÍT TẾT VÀ MỲ Ý
✨ GIỚI THIỆU SẢN PHẨM
Bé yêu thích vào bếp? Bộ đồ chơi Steak and Butterfly Shape Noodle Playset từ thương hiệu Peiyile sẽ mang đến cho bé trải nghiệm làm "đầu bếp nhí" thực thụ. Với thiết kế tinh xảo, màu sắc bắt mắt và mô phỏng giống thật đến 99%, đây chắc chắn là món quà tuyệt vời để bé rời xa màn hình điện thoại.
🌟 ĐIỂM NỔI BẬT CỦA BỘ SẢN PHẨM
Thực đơn đa dạng: Kết hợp hoàn hảo giữa món Âu sang trọng (Steak, măng tây) và các loại mỳ Ý trứ danh (Mỳ nơ Farfalle, Ravioli, Spaghetti).
Phụ kiện đầy đủ: Đi kèm các chai gia vị (tương cà, mù tạt, hạt tiêu), đồ đóng hộp và kẹp gắp thực phẩm chuyên nghiệp.
Chất liệu cao cấp: Nhựa ABS nguyên sinh, bền bỉ, bề mặt láng mịn, không góc cạnh sắc nhọn, tuyệt đối an toàn cho làn da của bé.
Hình ảnh sinh động: Các khối mỳ và miếng thịt được đúc khuôn tỉ mỉ, giúp bé dễ dàng nhận biết các loại thực phẩm trong thực tế.
🎓 LỢI ÍCH GIÁO DỤC
Phát triển kỹ năng vận động tinh: Thao tác kẹp gắp, sắp xếp món ăn lên đĩa giúp đôi tay bé khéo léo hơn.
Kích thích trí tưởng tượng: Bé có thể đóng vai đầu bếp, chủ nhà hàng hoặc thực khách để chơi cùng bạn bè và bố mẹ.
Học hỏi về ẩm thực: Nhận biết các loại mỳ Ý khác nhau và cách bày trí một bữa ăn đủ chất dinh dưỡng.
📦 THÔNG TIN CHI TIẾT
Thương hiệu: Peiyile
Kích thước hộp : 38cm x 50cm x 7cm
Độ tuổi khuyến nghị: 3 tuổi trở lên (Ages 3+)
Kích thước hộp: (Cập nhật số đo thực tế của bạn vào đây)
Chất liệu: Nhựa an toàn
Bộ sản phẩm bao gồm: 1 đĩa bít tết, măng tây, mỳ Ý các loại, chai gia vị, kẹp gắp, thực phẩm đóng hộp...
⚠️ LƯU Ý: Sản phẩm có các chi tiết nhỏ, bé khi chơi nên có sự giám sát của người lớn.
3. Hashtags (Tăng lượt hiển thị)
#dochoichobe #dochoinauan #peiyile #bodochoinhabep #steakplayset #dochoimyy #quatangchobe #dochoisangtao #dochoigiaoduc #shopeevn #nhuacaocap #dochoinhapvai','[]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/48510312306') on conflict (id) do nothing;
delete from product_images where product_id='48510312306';
insert into product_images(product_id,url,sort_order) values ('48510312306','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-momzx41oxfcw03',0);
insert into product_images(product_id,url,sort_order) values ('48510312306','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo3ljjom2n7p12',1);
insert into product_images(product_id,url,sort_order) values ('48510312306','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofsu912fi8174',2);
insert into product_images(product_id,url,sort_order) values ('48510312306','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo3loh4jzrb6a6',3);
insert into product_images(product_id,url,sort_order) values ('48510312306','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo3lku3bpona56',4);
delete from product_variants where product_id='48510312306'; delete from product_models where product_id='48510312306'; delete from product_categories where product_id='48510312306';
insert into product_variants(product_id,name,options,images) values ('48510312306','Loại',array['Đồ Chơi Nấu Ăn']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7b2qcv7zt04c']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('48510312306','Đồ Chơi Nấu Ăn',416100,null,'');
insert into product_categories values ('48510312306','271399347') on conflict do nothing;
insert into product_categories values ('48510312306','271741912') on conflict do nothing;
delete from reviews where product_id='48510312306' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48510312306','kieuoanh180293',5,'','Đồ Chơi Nấu Ăn','{}'::text[],'Cảm ơn bạn đã ủng hộ shop, chúc bạn luôn may mắn và thành công ạ',to_timestamp(1785916106));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('51213631913','Đồ Chơi Robot Biến Hình Cho Bé, Mô Hình Xe, Đồ Chơi Cho Bé.','do-choi-robot-bien-hinh-cho-be-mo-hinh-xe-do-choi-cho-be-31913',405150,null,555000,27,null,1,0.00,0,'{0,0,0,0,0}','','ĐỒ CHƠI ROBOT BIẾN HÌNH SỐ 1-5 – LẮP GHÉP 5 TRONG 1 CHO BÉ
Biến những con số quen thuộc thành một siêu robot độc đáo! Bộ đồ chơi Robot Biến Hình Số 1-5 giúp bé vừa học nhận biết số vừa thỏa sức sáng tạo khi lắp ghép thành robot hoặc phương tiện. Thiết kế chắc chắn, màu sắc nổi bật, phù hợp làm quà tặng cho bé.
🌟 Ưu điểm nổi bật
✅ Biến hình từ số 1, 2, 3, 4, 5 thành robot.
✅ Có thể chơi riêng từng mô hình hoặc kết hợp thành robot lớn.
✅ Màu sắc nổi bật, thu hút sự chú ý của trẻ.
✅ Chất liệu nhựa bền đẹp, bo tròn các góc.
✅ Hỗ trợ phát triển tư duy logic và khả năng lắp ráp.
✅ Rèn luyện sự khéo léo và khả năng phối hợp tay mắt.
✅ Thích hợp làm quà sinh nhật, quà lễ cho bé.
🎁 Thông tin sản phẩm
Loại sản phẩm: Đồ chơi robot biến hình
Chủ đề: Robot - Xe - Số học
Chất liệu: Nhựa ABS
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Bộ gồm:
5 mô hình số biến hình
1 bộ phận thân robot
Các chi tiết lắp ghép theo bộ
💝 Lợi ích cho bé
Giúp bé nhận biết số từ 1 đến 5.
Kích thích trí tưởng tượng và sáng tạo.
Phát triển tư duy không gian.
Tăng khả năng tập trung.
Giảm thời gian sử dụng thiết bị điện tử.
📦 Cam kết
Sản phẩm mới 100%.
Đóng gói cẩn thận.
Hỗ trợ đổi trả nếu sản phẩm lỗi do nhà sản xuất.
đồ chơi robot biến hình, robot biến hình cho bé, đồ chơi lắp ghép robot, robot số biến hình, đồ chơi giáo dục, đồ chơi thông minh, đồ chơi trẻ em, robot lắp ráp, đồ chơi mô hình robot, quà tặng cho bé, đồ chơi phát triển trí tuệ, robot 5 trong 1, đồ chơi sáng tạo
#dochoirobot #robotbienhinh #dochoichobe #dochoigiaoduc #dochoithongminh #robotlapghep #robot5trong1 #mohinhrobot #dochoisangtao #quatangchobe #dochoitreem #robotso #dochoiphattrientritue #lapgheprobot #dochoimohinh','[{"n": "Material", "v": "ABS"}, {"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi Robot']::text[],'https://shopee.vn/product/67689883/51213631913') on conflict (id) do nothing;
delete from product_images where product_id='51213631913';
insert into product_images(product_id,url,sort_order) values ('51213631913','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqev9o7akdn298',0);
insert into product_images(product_id,url,sort_order) values ('51213631913','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqetupn6u58r06',1);
insert into product_images(product_id,url,sort_order) values ('51213631913','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqeuwky88du52d',2);
insert into product_images(product_id,url,sort_order) values ('51213631913','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqeu16dlw4jm57',3);
insert into product_images(product_id,url,sort_order) values ('51213631913','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqev0suqqa6m34',4);
delete from product_variants where product_id='51213631913'; delete from product_models where product_id='51213631913'; delete from product_categories where product_id='51213631913';
insert into product_categories values ('51213631913','271399347') on conflict do nothing;
insert into product_categories values ('51213631913','271741642') on conflict do nothing;
delete from reviews where product_id='51213631913' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('48411414380','Đồ Chơi Lắp Ráp Xe Đua Biến Hình Robot 2 Trong 1 Mô Hình Lắp Ghép Xe Robot Cao Cấp Cho Bé','do-choi-lap-rap-xe-dua-bien-hinh-robot-2-trong-1-mo-hinh-lap-ghep-xe-robot-cao-c-14380',311710,null,427000,27,null,5,0.00,0,'{0,0,0,0,0}','','🤖 Đồ Chơi Lắp Ráp Xe Đua Biến Hình Robot 2 Trong 1 là đồ chơi cho bé kết hợp giữa mô hình xe đua thể thao và robot chiến binh, mang đến trải nghiệm lắp ráp và biến hình đầy hấp dẫn. Với 277 mảnh ghép, bé có thể tự tay hoàn thiện một chiếc xe đua mạnh mẽ, sau đó biến đổi thành robot chỉ với vài thao tác, giúp tăng hứng thú và khơi dậy niềm đam mê khám phá công nghệ.
Không chỉ là đồ chơi lắp ráp xe đua biến hình robot, sản phẩm còn là đồ chơi giáo dục STEM giúp bé phát triển tư duy logic, khả năng sáng tạo và kỹ năng giải quyết vấn đề. Trong quá trình lắp ráp, bé sẽ rèn luyện sự tập trung, tính kiên nhẫn, khả năng phối hợp tay mắt và tư duy không gian. Chất liệu nhựa ABS cao cấp bền đẹp, các khớp nối chắc chắn và an toàn cho trẻ từ 6 tuổi trở lên.
✨ Đặc điểm nổi bật
✔️ Thiết kế 2 trong 1 độc đáo, dễ dàng chuyển đổi giữa xe đua thể thao và robot chiến binh.
✔️ Bộ 277 chi tiết lắp ráp mang đến trải nghiệm xây dựng thú vị và đầy thử thách.
✔️ Thiết kế hiện đại với tông màu xanh lá nổi bật, kiểu dáng thể thao mạnh mẽ.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, an toàn và thân thiện với trẻ nhỏ.
✔️ Các khớp nối chắc chắn, dễ thao tác, giúp mô hình ổn định sau khi hoàn thành.
🌟 Lợi ích cho bé
Phát triển tư duy logic và khả năng sáng tạo.
Rèn luyện kỹ năng lắp ráp và tư duy không gian.
Tăng khả năng tập trung, tính kiên nhẫn và sự khéo léo.
Khơi gợi niềm yêu thích khoa học, kỹ thuật và robot.
Hạn chế thời gian sử dụng điện thoại, máy tính bảng và thiết bị điện tử.
📦 Thông tin sản phẩm
Tên sản phẩm: Xe Đua Biến Hình Robot 2 Trong 1
Mã sản phẩm: 605
Số lượng chi tiết: 277 PCS
Kích thước hộp: 29 x 42 x 6 cm
Chất liệu: Nhựa ABS cao cấp
Màu sắc: Xanh lá
Chế độ: Xe đua & Robot biến hình
Độ tuổi phù hợp: Từ 6 tuổi trở lên
🎁 Đồ chơi lắp ráp xe đua biến hình robot 2 trong 1 là món quà lý tưởng dành cho bé trai và bé gái yêu thích xe đua, robot biến hình và đồ chơi lắp ráp. Phù hợp làm quà sinh nhật, Noel, Trung Thu, Quốc tế Thiếu nhi hoặc phần thưởng học tập. Đây là đồ chơi STEM giúp bé vừa học vừa chơi, phát triển tư duy, kỹ năng thực hành và khả năng sáng tạo mỗi ngày.
💖 Cam kết từ Shop
Sản phẩm mới 100%, đúng mô tả.
Kiểm tra kỹ trước khi đóng gói.
Đóng gói cẩn thận, giao hàng nhanh.
Hỗ trợ đổi trả theo chính sách Shopee.
Tư vấn nhiệt tình trước và sau khi mua hàng.
#DoChoiLapRap #XeDuaBienHinh #RobotBienHinh #DoChoiSTEM #DoChoiChoBe #MoHinhXeRobot #XeDuaLapRap #Robot2Trong1 #DoChoiGiaoDuc #DoChoiSangTao #QuaTangChoBe #DoChoi6Tuoi #BuildingBlocks #XeRobot #ShopeeVN','[{"n": "Material", "v": "ABS"}, {"n": "Recommended Age", "v": "7 years +"}, {"n": "Manufacturer/trader name", "v": "Updating"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi Robot']::text[],'https://shopee.vn/product/67689883/48411414380') on conflict (id) do nothing;
delete from product_images where product_id='48411414380';
insert into product_images(product_id,url,sort_order) values ('48411414380','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov72h3xcb2m7f',0);
insert into product_images(product_id,url,sort_order) values ('48411414380','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowlkbwa0s2453',1);
insert into product_images(product_id,url,sort_order) values ('48411414380','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov6orsvfbpr33',2);
insert into product_images(product_id,url,sort_order) values ('48411414380','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov6kw81zi8003',3);
insert into product_images(product_id,url,sort_order) values ('48411414380','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov6nzqyfj0vb7',4);
delete from product_variants where product_id='48411414380'; delete from product_models where product_id='48411414380'; delete from product_categories where product_id='48411414380';
insert into product_categories values ('48411414380','271399347') on conflict do nothing;
insert into product_categories values ('48411414380','271741642') on conflict do nothing;
insert into product_categories values ('48411414380','271742074') on conflict do nothing;
delete from reviews where product_id='48411414380' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('53260420454','Bộ Xếp Hình 500 Chi Tiết Building Blocks Gạch Lắp Ráp Đồ Chơi STEM Phát Triển Tư Duy Cho Bé','bo-xep-hinh-500-chi-tiet-building-blocks-gach-lap-rap-do-choi-stem-phat-trien-tu-20454',217540,null,298000,27,null,17,3.50,2,'{0,0,1,1,0}','','🧩 BỘ XẾP HÌNH BUILDING BLOCKS 500 CHI TIẾT – ĐỒ CHƠI LẮP RÁP PHÁT TRIỂN TƯ DUY CHO BÉ
Bộ xếp hình 500 chi tiết Building Blocks là đồ chơi lắp ráp cho bé giúp trẻ thỏa sức sáng tạo với hàng trăm gạch lắp ráp nhiều màu sắc. Đây là đồ chơi giáo dục, đồ chơi STEM và đồ chơi phát triển tư duy được nhiều phụ huynh lựa chọn, giúp bé vừa vui chơi vừa rèn luyện khả năng tư duy logic, trí tưởng tượng, sự khéo léo và kỹ năng giải quyết vấn đề ngay từ nhỏ.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Bộ xếp hình 500 chi tiết gồm nhiều viên gạch lắp ráp với đa dạng kích thước và màu sắc, giúp bé dễ dàng tạo nên vô số mô hình sáng tạo.
✔️ Tương thích với nhiều loại building blocks phổ biến, dễ dàng kết hợp mở rộng bộ sưu tập lắp ráp.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, bề mặt nhẵn mịn, an toàn cho trẻ nhỏ.
✔️ Màu sắc tươi sáng giúp kích thích thị giác, khả năng nhận biết màu sắc và phát triển óc sáng tạo.
✔️ Đồ chơi lắp ráp STEM giúp bé học thông qua trải nghiệm thực tế, phát triển tư duy logic, khả năng quan sát và kỹ năng giải quyết vấn đề.
✔️ Rèn luyện kỹ năng phối hợp tay mắt, vận động tinh, tính kiên nhẫn và khả năng tập trung trong quá trình lắp ráp.
🎯 LỢI ÍCH CHO BÉ
Phát triển tư duy logic và khả năng sáng tạo.
Rèn luyện trí tưởng tượng và khả năng thiết kế mô hình.
Tăng khả năng phối hợp tay mắt và kỹ năng vận động tinh.
Học cách kiên nhẫn, tập trung và hoàn thành mục tiêu.
Khơi gợi niềm yêu thích với đồ chơi STEM, mô hình xây dựng và các hoạt động sáng tạo.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Building Blocks 500PCS.
Loại sản phẩm: Bộ xếp hình lắp ráp.
Số lượng: 500 chi tiết.
Chất liệu: Nhựa ABS cao cấp.
Kích thước hộp: 18 x 25 x 10 cm.
Màu sắc: Nhiều màu.
Độ tuổi phù hợp: Từ 6 tuổi trở lên.
⚠️ LƯU Ý
Sản phẩm có chi tiết nhỏ, không phù hợp với trẻ dưới 3 tuổi.
Nên có sự giám sát của người lớn khi trẻ sử dụng.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Quà sinh nhật cho bé trai và bé gái.
Quà Noel, Quốc tế Thiếu nhi, Trung Thu.
Quà thưởng học tập, quà khuyến khích bé phát triển tư duy.
Phù hợp cho bé yêu thích bộ xếp hình, đồ chơi lắp ráp, gạch lắp ráp, đồ chơi STEM, đồ chơi giáo dục, đồ chơi thông minh, đồ chơi phát triển IQ và các hoạt động sáng tạo.
💯 CAM KẾT TỪ SHOP
✅ Sản phẩm mới, đúng hình ảnh và mô tả.
✅ Kiểm tra kỹ trước khi giao hàng.
✅ Đóng gói cẩn thận, hạn chế va đập.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm lỗi từ nhà sản xuất.
#boxephinh #boxephinh500chitiet #buildingblocks #dochoilaprap #gachlaprap #laprapchobe #dochoistem #dochoigiaoduc #dochoithongminh #dochoisangtao #phattrientuduy #phattrientritue #dochoitritue #dochoichobe #quatangchobe','[{"n": "Block Type", "v": "Sets"}, {"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Manufacturer/trader address", "v": "Updating"}, {"n": "Country of Origin", "v": "China"}, {"n": "Material", "v": "ABS"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/53260420454') on conflict (id) do nothing;
delete from product_images where product_id='53260420454';
insert into product_images(product_id,url,sort_order) values ('53260420454','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mq7gcmkbtcle45',0);
insert into product_images(product_id,url,sort_order) values ('53260420454','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-molizy3melu48f',1);
insert into product_images(product_id,url,sort_order) values ('53260420454','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofohmlbjpqj48',2);
insert into product_images(product_id,url,sort_order) values ('53260420454','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofnn7bz82z067',3);
insert into product_images(product_id,url,sort_order) values ('53260420454','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo6k8syta5mud0',4);
delete from product_variants where product_id='53260420454'; delete from product_models where product_id='53260420454'; delete from product_categories where product_id='53260420454';
insert into product_variants(product_id,name,options,images) values ('53260420454','Loại',array['Hộp Mới 100%']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo750ecq1iwx56']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('53260420454','Hộp Mới 100%',217540,null,'');
insert into product_categories values ('53260420454','271399347') on conflict do nothing;
insert into product_categories values ('53260420454','271741642') on conflict do nothing;
delete from reviews where product_id='53260420454' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53260420454','i*****2',3,'Kh đúng hình gì hết tưởng to lắm , mua về nhỏ xíu thất vọng vô cùng','500 Chi Tiết','{}'::text[],'Dạ, e cảm ơn c đã góp ý ạ',to_timestamp(1781880941));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('53260420454','vanhoangkhuu',4,'','Hộp Mới 100%','{}'::text[],'Cảm ơn bạn đã ủng hộ, chúc bạn luôn mạnh khỏe và nhiều may mắn nhé, 
Nếu có bất kỳ vấn đề gì khiến bạn ko đc hài lòng về sp cứ ib shop ạ',to_timestamp(1789696208));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('49362140338','Bộ Lắp Ráp Tàu Hải Tặc My World Mine World 132 Chi Tiết Có Đèn LED Đồ Chơi Xếp Hình Cho Bé','bo-lap-rap-tau-hai-tac-my-world-mine-world-132-chi-tiet-co-den-led-do-choi-xep-h-40338',155490,null,213000,27,null,2,0.00,0,'{0,0,0,0,0}','','🏴‍☠️ BỘ LẮP RÁP TÀU HẢI TẶC MY WORLD MINE WORLD 132 CHI TIẾT CÓ ĐÈN LED
Khám phá đại dương kỳ bí cùng bộ lắp ráp tàu hải tặc My World Mine World với hơn 132 chi tiết và hiệu ứng đèn LED độc đáo. Đây là đồ chơi lắp ráp, khối xây dựng và đồ chơi trí tuệ giúp bé vừa vui chơi vừa phát triển tư duy logic, khả năng sáng tạo và kỹ năng vận động tinh. Sản phẩm phù hợp cho các bé yêu thích mô hình tàu hải tặc, đồ chơi Mine World và các bộ xếp hình lắp ghép.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Bộ lắp ráp tàu hải tặc gồm 132+ chi tiết chắc chắn, dễ lắp ghép.
✔️ Tích hợp đèn LED phát sáng, tạo hiệu ứng đẹp mắt khi trưng bày.
✔️ Thiết kế lấy cảm hứng từ thế giới My World – Mine World, giúp bé thỏa sức sáng tạo và phiêu lưu.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, an toàn cho trẻ nhỏ.
✔️ Màu sắc nổi bật, các chi tiết sắc nét, tăng trải nghiệm khi lắp ráp.
✔️ Là đồ chơi giáo dục, đồ chơi thông minh giúp bé rèn luyện sự tập trung, tư duy không gian và khả năng giải quyết vấn đề.
🧠 LỢI ÍCH CHO BÉ
Phát triển tư duy logic và khả năng sáng tạo.
Rèn luyện sự khéo léo và phối hợp tay mắt.
Tăng tính kiên nhẫn và khả năng tập trung.
Khuyến khích bé khám phá, xây dựng và sáng tạo mô hình theo sở thích.
Giảm thời gian sử dụng điện thoại, tivi thông qua đồ chơi lắp ráp giáo dục.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Bộ lắp ráp tàu hải tặc My World.
Chủ đề: Mine World – Tàu hải tặc phiêu lưu.
Số lượng chi tiết: 132+ PCS.
Chất liệu: Nhựa ABS cao cấp.
Tính năng: Lắp ráp mô hình, tích hợp đèn LED.
Độ tuổi phù hợp: Từ 6 tuổi trở lên.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Là món quà sinh nhật cho bé trai, bé gái, quà Noel, Quốc tế Thiếu nhi hoặc quà thưởng học tập dành cho các bé yêu thích đồ chơi lắp ráp, khối xây dựng, mô hình Mine World, tàu hải tặc, đồ chơi sáng tạo, đồ chơi giáo dục, bộ xếp hình, mô hình lắp ghép và đồ chơi phát triển tư duy.
💯 CAM KẾT TỪ SHOP
✅ Sản phẩm mới 100%, đúng hình ảnh và mô tả.
✅ Kiểm tra kỹ trước khi đóng gói.
✅ Đóng gói cẩn thận, hạn chế va đập khi vận chuyển.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
#bolaprap #dochoilaprap #tauhaitac #mineworld #myworld #khoixaydung #xephinh #mohinhlapghep #dochoisangtao #dochoigiaoduc #dochoitritue #dochoithongminh #dochoichobe #dochoitreem #dochoidenled #laprapchobe #quatangchobe #quatangsinhnhat #phattrientuduy #stemtoy','[{"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/49362140338') on conflict (id) do nothing;
delete from product_images where product_id='49362140338';
insert into product_images(product_id,url,sort_order) values ('49362140338','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdsvjqvs0em86',0);
insert into product_images(product_id,url,sort_order) values ('49362140338','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdsy8bsvfgt10',1);
insert into product_images(product_id,url,sort_order) values ('49362140338','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdsayaaj7rha6',2);
insert into product_images(product_id,url,sort_order) values ('49362140338','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdsayafg7b677',3);
insert into product_images(product_id,url,sort_order) values ('49362140338','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdsayagnqwxbd',4);
delete from product_variants where product_id='49362140338'; delete from product_models where product_id='49362140338'; delete from product_categories where product_id='49362140338';
insert into product_categories values ('49362140338','271399347') on conflict do nothing;
insert into product_categories values ('49362140338','271741642') on conflict do nothing;
delete from reviews where product_id='49362140338' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('56911521430','Bộ Đồ Chơi Câu Cá Nam Châm Có Nước Cho Bé, Cần Câu Cá Heo Cá Đuối, Đồ Chơi Giáo Dục','bo-do-choi-cau-ca-nam-cham-co-nuoc-cho-be-can-cau-ca-heo-ca-duoi-do-choi-giao-du-21430',238710,null,327000,27,null,6,0.00,0,'{0,0,0,0,0}','','🎣 Bộ Đồ Chơi Câu Cá Nam Châm Cho Bé Có Nước là đồ chơi cho bé mang đến trải nghiệm vui chơi thú vị với chủ đề đại dương đầy màu sắc. Bé sẽ sử dụng cần câu nam châm để câu các mô hình cá heo, cá đuối và nhiều sinh vật biển đáng yêu, đồng thời có thể kết hợp với nước để tạo cảm giác chân thực hơn. Đây là đồ chơi câu cá có nước giúp bé vừa giải trí vừa khám phá thế giới biển sinh động.
Không chỉ là bộ câu cá nam châm, sản phẩm còn là đồ chơi giáo dục giúp bé phát triển khả năng quan sát, tăng sự tập trung và rèn luyện kỹ năng vận động tinh. Trong quá trình vui chơi, bé sẽ học cách phối hợp tay mắt, nhận biết màu sắc, hình dạng của các loài sinh vật biển và tăng khả năng phản xạ. Chất liệu nhựa cao cấp, bề mặt nhẵn mịn, an toàn cho trẻ từ 3 tuổi trở lên.
✨ Đặc điểm nổi bật
✔️ Đồ chơi câu cá nam châm với chủ đề đại dương nhiều màu sắc, thu hút bé ngay từ lần đầu nhìn thấy.
✔️ Cần câu thiết kế vừa tay, dễ cầm nắm và dễ thao tác với trẻ nhỏ.
✔️ Hệ thống nam châm giúp bé dễ dàng câu cá, tạo cảm giác thích thú khi chơi.
✔️ Có thể chơi cùng nước để tăng trải nghiệm chân thực và hấp dẫn.
✔️ Chất liệu nhựa an toàn, bền đẹp, bề mặt nhẵn mịn.
✔️ Phù hợp cho bé chơi một mình hoặc cùng bố mẹ, bạn bè để tăng tính tương tác.
🌟 Lợi ích cho bé
Rèn luyện sự tập trung và tính kiên nhẫn.
Phát triển kỹ năng phối hợp tay mắt và vận động tinh.
Giúp bé nhận biết màu sắc, hình dạng và các loài sinh vật biển.
Khuyến khích giao tiếp và gắn kết giữa cha mẹ với bé.
Hạn chế thời gian sử dụng điện thoại, tivi và thiết bị điện tử.
📦 Bộ sản phẩm bao gồm
01 Khay câu cá.
01 Cần câu nam châm.
Các mô hình cá heo, cá đuối và sinh vật biển.
Phụ kiện đi kèm theo bộ.
📋 Thông tin sản phẩm
Kích thước hộp: 27 x 37 x 7 cm
Chất liệu: Nhựa cao cấp
Chủ đề: Đại dương – Câu cá nam châm
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Phù hợp cho: Bé trai và bé gái
🎁 Bộ đồ chơi câu cá nam châm có nước là món quà ý nghĩa dành cho bé trong các dịp sinh nhật, Noel, Quốc tế Thiếu nhi hoặc phần thưởng học tập. Đây là đồ chơi đại dương cho bé kết hợp giữa vui chơi và giáo dục, giúp trẻ phát triển tư duy, tăng khả năng tập trung và mang đến những giờ phút giải trí bổ ích cùng gia đình.
💖 Cam kết từ Shop
Sản phẩm mới 100%, đúng hình mô tả.
Kiểm tra kỹ trước khi đóng gói.
Đóng gói cẩn thận, giao hàng nhanh.
Hỗ trợ đổi trả theo chính sách Shopee.
Tư vấn nhiệt tình trước và sau khi mua hàng.
#DoChoiCauCa #BoCauCaNamCham #DoChoiCauCaCoNuoc #DoChoiChoBe #DoChoiDaiDuong #DoChoiGiaoDuc #FishingGameToy #DoChoi3Tuoi #DoChoiPhatTrienTriTue #CaHeo #CaDuoi #QuaTangChoBe #DoChoiTuongTac #DoChoiAnToan #ShopeeVN','[{"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Custom Product", "v": "No"}, {"n": "Gender", "v": "Unisex"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Khác']::text[],'https://shopee.vn/product/67689883/56911521430') on conflict (id) do nothing;
delete from product_images where product_id='56911521430';
insert into product_images(product_id,url,sort_order) values ('56911521430','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moz3lsmzgr2n43',0);
insert into product_images(product_id,url,sort_order) values ('56911521430','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moz3ahmjlmh83f',1);
insert into product_images(product_id,url,sort_order) values ('56911521430','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moz3dgm0ne9u0d',2);
insert into product_images(product_id,url,sort_order) values ('56911521430','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moz3dglz60p8db',3);
insert into product_images(product_id,url,sort_order) values ('56911521430','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moz38gpxzfv384',4);
delete from product_variants where product_id='56911521430'; delete from product_models where product_id='56911521430'; delete from product_categories where product_id='56911521430';
insert into product_categories values ('56911521430','271399347') on conflict do nothing;
insert into product_categories values ('56911521430','271742027') on conflict do nothing;
delete from reviews where product_id='56911521430' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('41081662451','Đồ Chơi Lắp Ráp Xe Đua Super Brothers 4 Nhân Vật Mô Hình Game Mini Cho Bé Trai','do-choi-lap-rap-xe-dua-super-brothers-4-nhan-vat-mo-hinh-game-mini-cho-be-trai-62451',59130,null,81000,27,null,12,5.00,2,'{0,0,0,0,2}','','🚗 ĐỒ CHƠI LẮP RÁP XE ĐUA SUPER BROTHERS 4 NHÂN VẬT – MINI RACER SERIES 🎮
Mang đến cho bé thế giới vui chơi đầy sáng tạo với đồ chơi lắp ráp xe đua Super Brothers, gồm 4 nhân vật và 4 mẫu xe đua mini độc đáo. Thiết kế lấy cảm hứng từ phong cách game hoạt hình giúp bé vừa chơi vừa phát triển tư duy logic và khả năng sáng tạo.
Đây là đồ chơi lắp ráp xe đua cho bé giúp rèn luyện kỹ năng phối hợp tay – mắt, tăng khả năng tập trung và tư duy giải quyết vấn đề thông qua việc tự tay lắp ráp từng chi tiết.
🌟 ĐẶC ĐIỂM NỔI BẬT
✔️ Bộ gồm 4 nhân vật + 4 xe đua mini siêu dễ thương
✔️ Thiết kế màu sắc nổi bật, phong cách game hoạt hình
✔️ Chất liệu nhựa ABS an toàn, bền đẹp theo thời gian
✔️ Chi tiết lắp ráp dễ thao tác, phù hợp cho trẻ từ 6 tuổi
✔️ Giúp phát triển tư duy sáng tạo và kỹ năng logic
✔️ Thích hợp làm đồ chơi hoặc bộ sưu tập trưng bày
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Bộ xe đua lắp ráp Super Brothers
• Chủ đề: Xe đua – nhân vật game mini
• Số lượng: 4 nhân vật + 4 xe
• Kích thước: 14 x 19 x 4 cm
• Chất liệu: Nhựa ABS cao cấp
• Màu sắc: Nhiều màu
• Độ tuổi phù hợp: Từ 6 tuổi trở lên
🎯 LỢI ÍCH CHO BÉ
🧠 Phát triển tư duy logic và khả năng sáng tạo
🧠 Tăng khả năng tập trung và kiên nhẫn
🧠 Rèn luyện kỹ năng phối hợp tay – mắt
🧠 Giúp bé học cách giải quyết vấn đề
🧠 Hạn chế thời gian sử dụng thiết bị điện tử
🎁 MÓN QUÀ Ý NGHĨA CHO BÉ
Bộ xe đua lắp ráp Super Brothers là lựa chọn hoàn hảo cho bé trai và bé gái yêu thích xe đua và nhân vật game. Phù hợp làm quà sinh nhật, Noel, Trung Thu, hoặc phần thưởng học tập.
💖 CAM KẾT TỪ SHOP
✔️ Hàng mới 100%, đúng mô tả
✔️ Đóng gói cẩn thận chống va đập
✔️ Hỗ trợ đổi trả theo quy định sàn
✔️ Tư vấn nhanh chóng trước & sau mua hàng
#DoChoiLapRap #XeDuaMini #SuperBrothers #DoChoiGame #DoChoiTreEm #DoChoiChoBe #DoChoiSTEM #DoChoi6Tuoi #MoHinhXeDua #DoChoiSangTao #DoChoiTriTue #QuaTangChoBe #XeLapRap #DoChoiBeTrai #DoChoiThongMinh #LapRapXeDua #MiniRacer #DoChoiGiaDuc #DoChoiNhanVatGame #XepHinhDoChoi','[{"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/41081662451') on conflict (id) do nothing;
delete from product_images where product_id='41081662451';
insert into product_images(product_id,url,sort_order) values ('41081662451','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpds4kyri8shb6',0);
insert into product_images(product_id,url,sort_order) values ('41081662451','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7xs1pdxcsg71',1);
insert into product_images(product_id,url,sort_order) values ('41081662451','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7ydo0bvev680',2);
insert into product_images(product_id,url,sort_order) values ('41081662451','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7y3y8ofbic21',3);
insert into product_images(product_id,url,sort_order) values ('41081662451','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7y2pn2p7gkf8',4);
delete from product_variants where product_id='41081662451'; delete from product_models where product_id='41081662451'; delete from product_categories where product_id='41081662451';
insert into product_variants(product_id,name,options,images) values ('41081662451','Màu Sắc',array['Màu Xanh Dương','Màu Đỏ','Màu Xanh Lá','MàuHồng']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7y2pn2p7gkf8','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7y3y8ofbic21','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7ydo0bvev680','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7y1pw385c1a5']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('41081662451','Màu Đỏ',59130,null,'');
insert into product_models(product_id,name,price,stock,image) values ('41081662451','Màu Xanh Lá',59130,null,'');
insert into product_models(product_id,name,price,stock,image) values ('41081662451','MàuHồng',59130,null,'');
insert into product_models(product_id,name,price,stock,image) values ('41081662451','Màu Xanh Dương',59130,null,'');
insert into product_categories values ('41081662451','271399347') on conflict do nothing;
insert into product_categories values ('41081662451','271741642') on conflict do nothing;
delete from reviews where product_id='41081662451' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('41081662451','tienhungvu92',5,'','Màu Đỏ, Màu Xanh Dương, MàuHồng, Màu Xanh Lá','{}'::text[],'',to_timestamp(1789818606));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('41081662451','grjxeuua85',5,'','Màu Xanh Lá','{}'::text[],'Chân thành cảm ơn bạn đã ủng hộ shop chúc bạn luôn thành công và gặp nhiều may mắn ạ',to_timestamp(1786881819));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('54411414995','Đồ Chơi Trí Tuệ Lắp Ghép Mini Siêu Anh Hùng , Đồ Chơi Cho Bé, Quà Tặng Cho Bé','do-choi-tri-tue-lap-ghep-mini-sieu-anh-hung-do-choi-cho-be-qua-tang-cho-be-14995',7300,36500,10000,27,null,4,5.00,1,'{0,0,0,0,1}','','Đồ Chơi Lắp Ráp Nano Block Yang Pin (513 Chi Tiết)
Chào mừng bạn đến với thế giới lắp ráp sáng tạo! Nếu bạn là một fan cứng của siêu anh hùng DC hoặc đam mê những mô hình lắp ráp mini đầy thử thách, bộ đồ chơi Nano Block Yang Pin 6035 chính là chân ái dành cho bạn.
Không chỉ là một món đồ chơi giải trí, sản phẩm sau khi hoàn thiện sẽ trở thành một món đồ decor cực chất cho bàn làm việc, góc máy tính hoặc tủ sách của bạn.
🌟 ĐẶC ĐIỂM NỔI BẬT CỦA SẢN PHẨM
Thiết kế Chibi Siêu Ngầu: Mô phỏng hoàn hảo hình ảnh Kị Sĩ Bóng Đêm Batman với tone màu đen-xám huyền thoại, chiếc áo choàng và biểu tượng dơi đặc trưng nhưng dưới phiên bản Chibi cực kỳ đáng yêu.
Thử Thách Trí Tuệ (513 Pcs): Với số lượng 513 mảnh ghép siêu nhỏ (Nano Block), sản phẩm mang lại độ chi tiết cao hơn, sắc nét hơn và mang tính thử thách, giúp rèn luyện tính kiên nhẫn, tư duy logic và sự khéo léo.
Chất Liệu Nhựa ABS Cao Cấp: Các mảnh ghép được làm từ nhựa ABS nguyên sinh an toàn, các góc cạnh được bo tròn không gây trầy xước tay. Khớp nối chắc chắn, không bị lỏng lẻo sau khi ráp.
Thương Hiệu Uy Tín: Đến từ hãng Yang Pin - một trong những thương hiệu nội địa Trung nổi tiếng về độ hoàn thiện và chất lượng của các dòng Lego mini/Nano Block.
📌 THÔNG TIN CHI TIẾT
Kích thước: 9x9x9 cm
Thương hiệu: Yang Pin (扬拼)
Mã sản phẩm: NO.6035
Số lượng mảnh ghép (Pcs): 513 chi tiết
Độ tuổi khuyến nghị: Từ 8 tuổi trở lên (8+)
Kích thước hộp: Khoảng 15cm x 15cm (nhỏ gọn, thích hợp làm quà tặng)
Bộ sản phẩm bao gồm: Hộp đựng cao cấp, các túi chứa mảnh ghép và sách hướng dẫn lắp ráp bằng hình ảnh 3D trực quan, dễ hiểu.
🎁 CÔNG DỤNG & Ý NGHĨA
Xả stress hiệu quả: Giúp bạn tạm rời xa màn hình điện thoại, máy tính để thư giãn đầu óc sau giờ học tập và làm việc căng thẳng.
Decor không gian sống: Mô hình sau khi lắp xong có thể dùng để trang trí bàn làm việc, kệ sách, PC gaming, tạo điểm nhấn cá tính.
Quà tặng hoàn hảo: Thích hợp làm quà sinh nhật, quà tặng dịp lễ cho bạn bè, người yêu, các bé trai hoặc những ai có sở thích sưu tầm mô hình siêu anh hùng.
🛡️ CAM KẾT TỪ SHOP
Hàng chuẩn y hình  (Ảnh thật shop tự chụp/Hàng chính hãng Yang Pin).
Hỗ trợ đổi trả miễn phí trong vòng 3 ngày theo quy định của Shopee nếu sản phẩm có lỗi từ nhà sản xuất (hộp móp méo nặng do vận chuyển, thiếu mảnh ghép nghiêm trọng...).
Giao hàng siêu tốc, đóng gói bọc xốp chống sốc cẩn thận để bảo vệ hộp sản phẩm tốt nhất.
🏷️ HASTAGS 
#nanoblock #nanoblockbatman #dochoilaprap #mohinhlaprap #yangpin6035 #batman #nguoidoi #legonguoidoi #dochoitritue #xephinh #dochoixephinh #decorbanlamviec #quatangdocdao','[{"n": "Block Type", "v": "Bricks & Parts"}, {"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Country of Origin", "v": "China"}, {"n": "Material", "v": "ABS"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/54411414995') on conflict (id) do nothing;
delete from product_images where product_id='54411414995';
insert into product_images(product_id,url,sort_order) values ('54411414995','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moze3op5riml1c',0);
insert into product_images(product_id,url,sort_order) values ('54411414995','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mow4cje1czkd68',1);
insert into product_images(product_id,url,sort_order) values ('54411414995','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mow480rbdqto05',2);
insert into product_images(product_id,url,sort_order) values ('54411414995','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mow4ay9qy2of79',3);
insert into product_images(product_id,url,sort_order) values ('54411414995','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mow3vp5tmv4102',4);
delete from product_variants where product_id='54411414995'; delete from product_models where product_id='54411414995'; delete from product_categories where product_id='54411414995';
insert into product_variants(product_id,name,options,images) values ('54411414995','Tình Trạng',array['Hộp Mới 100%','Đã Qua Sử Dụng (Cũ)']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpqu7sdemznxd8','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpqu7sdemznxd8']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('54411414995','Hộp Mới 100%',36500,null,'');
insert into product_models(product_id,name,price,stock,image) values ('54411414995','Đã Qua Sử Dụng (Cũ)',7300,null,'');
insert into product_categories values ('54411414995','271399347') on conflict do nothing;
insert into product_categories values ('54411414995','271741642') on conflict do nothing;
delete from reviews where product_id='54411414995' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54411414995','order_nha_nhi',5,'Chất lượng sản phẩm:tốt
Bao bì/Mẫu mã:đẹp

Thấy rẻ quá nên mua thử, ngoài sự mong đợi nha, nhựa rất chắt ko có khóp dư, shop bán đồ xịn nè, ủng hộ dài dài','',array['https://down-vn.img.susercontent.com/file/vn-11134103-81ztc-mpkwm5v6c0loda']::text[],'Cảm ơn bạn đã tặng 5⭐️, chúc bạn nhiều sức khỏe ạ',to_timestamp(1781704853));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('50663814903','Bộ 10 Xe Ô Tô Đồ Chơi Mini Kim Loại, Xe Mô Hình Cho Bé, Đồ Chơi Cho Bé','bo-10-xe-o-to-do-choi-mini-kim-loai-xe-mo-hinh-cho-be-do-choi-cho-be-14903',353250,null,471000,25,null,5,3.50,2,'{0,1,0,0,1}','','Bộ 10 xe ô tô đồ chơi mini gồm nhiều kiểu dáng xe đa dạng, màu sắc nổi bật, phù hợp cho bé vui chơi, sưu tập và sáng tạo các tình huống giao thông thú vị.
Sản phẩm được thiết kế nhỏ gọn, bé dễ dàng cầm nắm, mang theo khi đi chơi hoặc sắp xếp thành bộ sưu tập xe mô hình tại nhà.
Đặc điểm nổi bật
Bộ sản phẩm gồm 10 xe mô hình mini
Nhiều kiểu xe thể thao, xe địa hình và xe cổ điển
Thiết kế mô phỏng sinh động, màu sắc bắt mắt
Thân xe chắc chắn, bánh xe có thể chuyển động
Kích thước nhỏ gọn, vừa tay trẻ em
Hỗ trợ bé phát triển khả năng quan sát và trí tưởng tượng
Phù hợp làm quà sinh nhật, quà lễ hoặc phần thưởng cho bé
Dành cho trẻ từ 3 tuổi trở lên
Thông tin sản phẩm
Kích thước: 28x19x4 cm
Tên sản phẩm: Bộ xe ô tô đồ chơi mini
Số lượng: 10 xe/hộp
Chất liệu: Hợp kim kết hợp nhựa
Độ tuổi phù hợp: Từ 3 tuổi
Màu sắc: Nhiều màu
Kiểu dáng: Đa dạng theo từng xe
Lưu ý
Màu sắc và chi tiết sản phẩm có thể chênh lệch nhẹ do ánh sáng chụp ảnh.
Nên cho bé chơi dưới sự giám sát của người lớn.
Không phù hợp với trẻ dưới 3 tuổi.
Mẫu xe trong từng lô hàng có thể thay đổi nhẹ nhưng vẫn bảo đảm đủ số lượng.
#xeotodochoi #xemohinh #xedochoimini #dochoixemohinh #dochoichobe #dochoibetrai #xeotomini #xekimloai #bosuutapxe #quatangchobe #đồchơixeôtô #xemôhình #đồchơichobé #xeôtômini #quàtặngchobé','[{"n": "Custom Product", "v": "No"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Xe đồ chơi']::text[],'https://shopee.vn/product/67689883/50663814903') on conflict (id) do nothing;
delete from product_images where product_id='50663814903';
insert into product_images(product_id,url,sort_order) values ('50663814903','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj2va2qffv2fe',0);
insert into product_images(product_id,url,sort_order) values ('50663814903','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj2knhori0wf3',1);
insert into product_images(product_id,url,sort_order) values ('50663814903','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj2omgp54p778',2);
insert into product_images(product_id,url,sort_order) values ('50663814903','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj2krh067ls9c',3);
insert into product_images(product_id,url,sort_order) values ('50663814903','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj2m64r6fpoa6',4);
delete from product_variants where product_id='50663814903'; delete from product_models where product_id='50663814903'; delete from product_categories where product_id='50663814903';
insert into product_categories values ('50663814903','271399347') on conflict do nothing;
insert into product_categories values ('50663814903','271742074') on conflict do nothing;
delete from reviews where product_id='50663814903' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('50663814903','khangyb282',2,'Sản phẩm cơ bản, giả hiệu Hotwheels thôi chứ ko phải hàng thật','','{}'::text[],'Cảm ơn bạn đã góp ý ạ',to_timestamp(1784966575));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('50663814903','ndc4uf4vfp',5,'','','{}'::text[],'Chân thành cảm ơn bạn đã ủng hộ shop, chúc bạn luôn thành công ạ',to_timestamp(1788767129));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('56409609599','Dịch Vụ Gói Quà','dich-vu-goi-qua-09599',31500,null,50000,37,null,4,0.00,0,'{0,0,0,0,0}','','🎁 DỊCH VỤ GÓI QUÀ TẶNG - M&Q HOME TECH 🎁
Bạn muốn dành tặng một món quà bất ngờ cho người thân, bạn bè hay đồng nghiệp nhưng lại không có thời gian chuẩn bị? Hãy để M&Q Home Tech giúp bạn trao gửi tâm tình qua những hộp quà được chăm chút tỉ mỉ nhất!
✨ Dịch vụ này bao gồm những gì?
Giấy gói quà: Sử dụng các loại giấy mỹ thuật dày dặn, họa tiết hiện đại, sang trọng phù hợp với nhiều dịp (Sinh nhật, Kỷ niệm, Lễ Tết...).
Nơ & Ruy băng: Thắt nơ thủ công tạo điểm nhấn tinh tế.
📝 Hướng dẫn đặt hàng:
Bước 1: Chọn sản phẩm bạn muốn mua vào Giỏ hàng.
Bước 2: Tìm sản phẩm "Dịch vụ Gói quà" này và thêm vào Giỏ hàng.
Bước 3: Tiến hành thanh toán cả 2 sản phẩm cùng lúc.
⚠️ Lưu ý nhỏ: * Mức phí này áp dụng cho 01 đơn hàng/01 món quà.
M&Q Home Tech - Trao quà tặng, gửi yêu thương!','[]'::jsonb,array['Mẹ & Bé','Đồ chơi','Khác']::text[],'https://shopee.vn/product/67689883/56409609599') on conflict (id) do nothing;
delete from product_images where product_id='56409609599';
insert into product_images(product_id,url,sort_order) values ('56409609599','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnl6elnsywaw81',0);
insert into product_images(product_id,url,sort_order) values ('56409609599','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnl63fqibpj6e2',1);
delete from product_variants where product_id='56409609599'; delete from product_models where product_id='56409609599'; delete from product_categories where product_id='56409609599';
insert into product_variants(product_id,name,options,images) values ('56409609599','Loại',array['Giấy Kiếng + Nơ']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnl63fqibpj6e2']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('56409609599','Giấy Kiếng + Nơ',31500,null,'');
insert into product_categories values ('56409609599','271083241') on conflict do nothing;
delete from reviews where product_id='56409609599' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('47960369366','Búp Bê Cho Bé Gái Công Chúa Cá Tính Kuromi Đồ Chơi Bé Gái Dễ Thương Quà Tặng Cho Bé 30cm','bup-be-cho-be-gai-cong-chua-ca-tinh-kuromi-do-choi-be-gai-de-thuong-qua-tang-cho-69366',215350,null,295000,27,null,4,5.00,2,'{0,0,0,0,2}','','🎀 BÚP BÊ CHO BÉ GÁI COSPLAY KUROMI – BÚP BÊ CÔNG CHÚA CÁ TÍNH SIÊU DỄ THƯƠNG 🎀
Nếu bạn đang tìm một búp bê cho bé gái vừa đáng yêu, vừa cá tính thì Búp Bê Cosplay Kuromi Girl là lựa chọn không thể bỏ qua. Lấy cảm hứng từ phong cách anime Nhật Bản, búp bê sở hữu gương mặt xinh xắn, đôi mắt to long lanh cùng bộ váy tím đen nổi bật, giúp bé thỏa sức sáng tạo và nhập vai trong những câu chuyện cổ tích của riêng mình.
Đây là mẫu đồ chơi bé gái dễ thương, phù hợp làm quà tặng sinh nhật, quà Noel hay quà cho các dịp đặc biệt. Không chỉ mang đến những giờ phút vui chơi thú vị, sản phẩm còn giúp bé phát triển trí tưởng tượng, khả năng sáng tạo và tính thẩm mỹ.
✨ ƯU ĐIỂM NỔI BẬT
✔️ Thiết kế phong cách Kuromi cá tính, dễ thương và nổi bật.
✔️ Gương mặt xinh xắn, đôi mắt to long lanh, mái tóc mềm mượt.
✔️ Trang phục phối màu tím – đen với chi tiết ren tinh tế, thời trang.
✔️ Chiều cao khoảng 30cm, kích thước vừa tay bé, dễ ôm và vui chơi.
✔️ Chất liệu nhựa ABS kết hợp vải cao cấp, bền đẹp và an toàn.
✔️ Hộp quà đẹp mắt, thích hợp làm quà tặng cho bé gái.
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Búp Bê Cosplay Kuromi Girl
• Chất liệu: Nhựa ABS + vải mềm cao cấp
• Kích thước hộp: 20 x 34 x 6 cm
• Chiều cao búp bê: Khoảng 30 cm
• Màu sắc: Tím – Đen
• Phong cách: Công chúa anime cosplay
• Độ tuổi phù hợp: Bé từ 3 tuổi trở lên
🎁 CÔNG DỤNG
🌸 Giúp bé phát triển trí tưởng tượng và khả năng sáng tạo.
🌸 Rèn luyện kỹ năng kể chuyện và nhập vai.
🌸 Làm đồ chơi, trang trí góc học tập hoặc sưu tầm.
🌸 Món quà ý nghĩa dành cho bé gái trong các dịp sinh nhật, Noel, Quốc tế Thiếu nhi và lễ Tết.
💖 CAM KẾT TỪ SHOP
✅ Hàng mới 100%, đúng hình mô tả.
✅ Kiểm tra kỹ sản phẩm trước khi giao.
✅ Đóng gói cẩn thận, hạn chế móp hộp trong quá trình vận chuyển.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
#BupBeChoBeGai #DoChoiBeGai #BupBeCongChua #BupBeKuromi #KuromiGirl #BupBeAnime #BupBeCosplay #DoChoiChoBe #DoChoiTreEm #QuaTangChoBe #QuaTangBeGai #QuaTangSinhNhat #BupBe30cm #DoChoiSangTao #DoChoiAnToan #BupBeDeThuong #CongChuaCaTinh #DoChoiNhapVai #BupBeThoiTrang #DoChoi3Tuoi','[{"n": "Material", "v": "ABS"}, {"n": "Build-in Battery", "v": "No"}, {"n": "Gender", "v": "Girl"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Búp bê & Thú nhồi bông','Búp bê & Phụ kiện']::text[],'https://shopee.vn/product/67689883/47960369366') on conflict (id) do nothing;
delete from product_images where product_id='47960369366';
insert into product_images(product_id,url,sort_order) values ('47960369366','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-momwryeogzkb74',0);
insert into product_images(product_id,url,sort_order) values ('47960369366','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofs3wlo9eyo07',1);
insert into product_images(product_id,url,sort_order) values ('47960369366','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo560pmqs2yse7',2);
insert into product_images(product_id,url,sort_order) values ('47960369366','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo55xh2h2gap92',3);
insert into product_images(product_id,url,sort_order) values ('47960369366','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo569yjatq86c4',4);
delete from product_variants where product_id='47960369366'; delete from product_models where product_id='47960369366'; delete from product_categories where product_id='47960369366';
insert into product_variants(product_id,name,options,images) values ('47960369366','Loại',array['Búp Bê Kuromi']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo75l56s9uro98']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('47960369366','Búp Bê Kuromi',215350,null,'');
insert into product_categories values ('47960369366','271399347') on conflict do nothing;
insert into product_categories values ('47960369366','271741704') on conflict do nothing;
delete from reviews where product_id='47960369366' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('47960369366','k*****u',5,'','Búp Bê Kuromi','{}'::text[],'Chân thành cảm ơn khách iu đã ủng hộ shop, chúc bạn luôn vui vẻ và gặp nhiều may mắn',to_timestamp(1787788633));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('47960369366','tranvu1871989',5,'','Búp Bê Kuromi','{}'::text[],'Cảm ơn bạn đã tặng 5⭐️ , chúc bạn luôn vui vẽ và thành công ạ',to_timestamp(1781692264));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('53113843796','Bộ 12 Xe Ô Tô Mô Hình, Xe Đua Mini Cho Bé,Đồ Chơi cho Bé','bo-12-xe-o-to-mo-hinh-xe-dua-mini-cho-be-do-choi-cho-be-43796',388500,null,518000,25,null,1,0.00,0,'{0,0,0,0,0}','','Bộ 12 xe ô tô mô hình tỷ lệ 1:64 với nhiều kiểu dáng xe đua thể thao, màu sắc nổi bật, thích hợp để bé vui chơi, sưu tầm hoặc trưng bày. Sản phẩm được đóng trong hộp đẹp mắt, phù hợp làm quà tặng sinh nhật, lễ Tết và các dịp đặc biệt.
Đặc điểm nổi bật
Bộ sản phẩm gồm 12 xe ô tô mô hình mini
Thiết kế theo phong cách xe đua thể thao mạnh mẽ
Tỷ lệ mô phỏng 1:64, kích thước nhỏ gọn
Thân xe làm từ hợp kim kết hợp chi tiết nhựa
Màu sắc đa dạng, từng xe có kiểu dáng riêng
Bánh xe có thể lăn, thuận tiện cho bé chơi trên nhiều bề mặt
Hộp đựng chắc chắn, dễ bảo quản và trưng bày
Phù hợp cho bé từ 3 tuổi trở lên
Lợi ích khi chơi
Giúp bé nhận biết màu sắc và các kiểu dáng phương tiện
Khuyến khích khả năng tưởng tượng, sáng tạo tình huống
Tăng khả năng phối hợp tay và mắt
Phù hợp chơi cá nhân hoặc vui chơi cùng bạn bè
Có thể dùng làm bộ sưu tập xe mô hình trang trí bàn học, tủ đồ chơi
Thông tin sản phẩm
Kích Thước: 31x20x4 cm
Tên sản phẩm: Bộ xe ô tô mô hình hợp kim
Số lượng: 12 xe
Tỷ lệ mô hình: 1:64
Chất liệu: Hợp kim kết hợp nhựa
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Quy cách: Hộp gồm nhiều mẫu xe đua mini
Lưu ý
Sản phẩm có chi tiết nhỏ, không phù hợp với trẻ dưới 3 tuổi.
Nên cho bé sử dụng dưới sự giám sát của người lớn.
Màu sắc thực tế có thể chênh lệch nhẹ do ánh sáng và màn hình hiển thị.
Không đặt sản phẩm gần nguồn nhiệt hoặc nơi ẩm ướt.
#xeotomohinh #xedochoi #xemohinh164 #xeotomini #xeduamini #bo12xeoto #dochoichobe #dochoixehoi #xehopkim #mohinhxe #quatangchobe #dochoigiaoduc #xeotochobe #bosuutapxe #dochoitreem','[{"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Xe đồ chơi']::text[],'https://shopee.vn/product/67689883/53113843796') on conflict (id) do nothing;
delete from product_images where product_id='53113843796';
insert into product_images(product_id,url,sort_order) values ('53113843796','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjx5ho3oirv44',0);
insert into product_images(product_id,url,sort_order) values ('53113843796','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjwsx6ued5932',1);
insert into product_images(product_id,url,sort_order) values ('53113843796','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjwv85oagw298',2);
insert into product_images(product_id,url,sort_order) values ('53113843796','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjx5p5t845n56',3);
insert into product_images(product_id,url,sort_order) values ('53113843796','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjx5p6nnr4ec6',4);
delete from product_variants where product_id='53113843796'; delete from product_models where product_id='53113843796'; delete from product_categories where product_id='53113843796';
insert into product_categories values ('53113843796','271399347') on conflict do nothing;
insert into product_categories values ('53113843796','271742074') on conflict do nothing;
delete from reviews where product_id='53113843796' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('48363591266','Mô hình Lắp Ghép Kit Card Khủng Long Velociraptor, Đồ Chơi Khảo Cổ, Đồ Chơi Giáo Dục','mo-hinh-lap-ghep-kit-card-khung-long-velociraptor-do-choi-khao-co-do-choi-giao-d-91266',137500,null,250000,45,null,1,5.00,1,'{0,0,0,0,1}','','Mô Hình Khủng Long Xương 3D Lắp Ghép Velociraptor là món đồ chơi giáo dục thú vị dành cho bé yêu thích thế giới khủng long, khám phá khoa học và lắp ráp mô hình. Sản phẩm có thiết kế dạng bộ xương khủng long màu trắng, các chi tiết được cắt ghép tinh tế giúp bé vừa chơi vừa rèn luyện khả năng quan sát, tư duy logic và sự khéo léo của đôi tay.

Mô hình phù hợp để bé sưu tầm, trang trí góc học tập, bàn làm việc hoặc dùng làm món quà nhỏ cho các bạn nhỏ yêu thích khủng long và khám phá tiền sử.

Điểm nổi bật của sản phẩm:

✅ Thiết kế mô hình xương khủng long Velociraptor độc đáo, bắt mắt
✅ Dạng lắp ghép 3D giúp bé tăng khả năng tư duy và tập trung
✅ Màu trắng nổi bật, phù hợp trang trí bàn học, kệ trưng bày
✅ Kích thước nhỏ gọn, dễ cầm nắm và trưng bày
✅ Phù hợp làm quà tặng cho bé yêu thích khủng long, khảo cổ, mô hình lắp ráp

Thông tin sản phẩm:

Tên sản phẩm: Mô hình khủng long xương 3D lắp ghép
Chủ đề: Khủng long Velociraptor
Màu sắc: Trắng
Chất liệu: Nhựa
Kích thước : 220mm x 130mm
Phù hợp: Bé yêu thích đồ chơi lắp ghép, mô hình khủng long, đồ chơi giáo dục
Ứng dụng: Vui chơi, học tập, trang trí, sưu tầm

Lưu ý: Sản phẩm gồm các chi tiết lắp ghép nhỏ, nên có người lớn hướng dẫn khi bé chơi.

#mohinhkhunglong #dochoikhunglong #mohinhxuongkhunglong #dochoilapghep #khunglong3d #dochoigiaoduc #dochoistem #triceratops #dochoisangtao #quatangchobe #khunglong','[{"n": "Recommended Age", "v": "7 years +"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi khoa học & Công nghệ']::text[],'https://shopee.vn/product/67689883/48363591266') on conflict (id) do nothing;
delete from product_images where product_id='48363591266';
insert into product_images(product_id,url,sort_order) values ('48363591266','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdl49emdj40e1',0);
insert into product_images(product_id,url,sort_order) values ('48363591266','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdlanyopland8',1);
insert into product_images(product_id,url,sort_order) values ('48363591266','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdnr2m2ul1r23',2);
insert into product_images(product_id,url,sort_order) values ('48363591266','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdnkvfjkf0vd0',3);
insert into product_images(product_id,url,sort_order) values ('48363591266','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdnrycci3v325',4);
delete from product_variants where product_id='48363591266'; delete from product_models where product_id='48363591266'; delete from product_categories where product_id='48363591266';
insert into product_categories values ('48363591266','274115770') on conflict do nothing;
insert into product_categories values ('48363591266','271399347') on conflict do nothing;
delete from reviews where product_id='48363591266' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48363591266','nhat_tang37.',5,'','','{}'::text[],'Chân thành cảm ơn bạn đã tin tưởng ủng hộ shop, chúc bạn luôn mạnh khoẻ và thành công ạ',to_timestamp(1785183350));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('48111561907','Đồ Chơi Lắp Ráp Xe Tăng Quân Sự 432 Chi Tiết JIQILE, Mô Hình Xếp Hình Cho Bé','do-choi-lap-rap-xe-tang-quan-su-432-chi-tiet-jiqile-mo-hinh-xep-hinh-cho-be-61907',58400,282510,80000,27,null,4,5.00,2,'{0,0,0,0,2}','','🚜 Đồ Chơi Lắp Ráp Xe Tăng Quân Sự 432 Chi Tiết JIQILE – Mô Hình Xe Tăng Military Series, Đồ Chơi Xếp Hình Phát Triển Tư Duy Cho Bé
Bạn đang tìm kiếm một bộ đồ chơi lắp ráp vừa giúp bé giải trí, vừa rèn luyện tư duy và khả năng sáng tạo? Bộ lắp ráp xe tăng quân sự JIQILE 432 chi tiết sẽ là lựa chọn tuyệt vời dành cho các bé yêu thích mô hình xe tăng, phương tiện quân sự và các bộ đồ chơi xếp hình đầy thử thách.
Với thiết kế lấy cảm hứng từ xe tăng quân sự hiện đại, sản phẩm gồm 432 mảnh ghép chắc chắn, màu sắc nổi bật cùng độ hoàn thiện cao. Bé sẽ được tự tay lắp ráp từng chi tiết để tạo nên một chiếc xe tăng mạnh mẽ, đồng thời phát triển tư duy logic, khả năng tập trung và kỹ năng giải quyết vấn đề.
⭐ ĐẶC ĐIỂM NỔI BẬT
✅ Bộ gồm 432 chi tiết lắp ráp chính xác, chắc chắn.
✅ Thiết kế xe tăng quân sự Military Series mạnh mẽ, chân thực.
✅ Màu sắc nổi bật, chi tiết sắc nét.
✅ Chất liệu nhựa ABS cao cấp, bền đẹp và an toàn cho trẻ.
✅ Các khớp nối có độ khít cao, dễ lắp, thành phẩm chắc chắn.
✅ Mô hình hoàn thiện đẹp mắt, thích hợp để trưng bày.
✅ Mang đến những giờ học mà chơi đầy thú vị.
🧠 LỢI ÍCH KHI BÉ CHƠI ĐỒ CHƠI LẮP RÁP
Bộ đồ chơi lắp ráp xe tăng không chỉ mang tính giải trí mà còn giúp bé:
✔ Phát triển tư duy logic và khả năng giải quyết vấn đề.
✔ Rèn luyện tính kiên nhẫn và sự tập trung.
✔ Phát triển kỹ năng vận động tinh, phối hợp tay và mắt.
✔ Kích thích trí tưởng tượng và khả năng sáng tạo.
✔ Tăng khả năng quan sát và tư duy không gian.
✔ Giảm thời gian sử dụng điện thoại, máy tính bảng và tivi.
Đây là dòng đồ chơi giáo dục STEM được nhiều phụ huynh lựa chọn để giúp trẻ học hỏi thông qua hoạt động lắp ráp thực tế.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Bộ lắp ráp Xe Tăng Quân Sự JIQILE
Dòng sản phẩm: Military Series
Chủ đề: Xe tăng quân sự
Số lượng chi tiết: 432 PCS
Chất liệu: Nhựa ABS cao cấp
Màu sắc: Xanh - Trắng - Cam
Độ tuổi phù hợp: Từ 6 tuổi trở lên
Kích thước hộp: 25 x 36 x 8 cm
Đóng gói: Hộp màu cao cấp
🎁 MÓN QUÀ Ý NGHĨA CHO BÉ
Bộ mô hình xe tăng lắp ráp là món quà tuyệt vời dành cho:
🎂 Sinh nhật
🎄 Noel
🎉 Quốc tế Thiếu nhi
🏆 Phần thưởng học tập
🎁 Bé yêu thích xe quân sự, robot và mô hình lắp ráp
🎈 Quà tặng cho bé trai và bé gái yêu thích đồ chơi sáng tạo
💖 CAM KẾT TỪ SHOP
✔ Sản phẩm mới 100%.
✔ Hình ảnh đúng thực tế.
✔ Kiểm tra kỹ trước khi đóng gói.
✔ Đóng gói chống sốc cẩn thận.
✔ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
#dochoilaprap #xetanglaprap #xetangquansu #mohinhxetang #buildingblocks #bricktoy #dochoixephinh #laprap432chitiet #militaryseries #tankbuildingblocks #dochoigiaoduc #dochoistem #dochoisangtao #dochoiphattrientuduy #dochoithongminh #quatangchobe #quatangsinhnhat #dochoichobe #dochoitreem #jiqile','[{"n": "Block Type", "v": "Bricks & Parts"}, {"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/48111561907') on conflict (id) do nothing;
delete from product_images where product_id='48111561907';
insert into product_images(product_id,url,sort_order) values ('48111561907','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mq7gc1p8jifg2e',0);
insert into product_images(product_id,url,sort_order) values ('48111561907','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozhw1qeu7m707',1);
insert into product_images(product_id,url,sort_order) values ('48111561907','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozhk1swqigxdb',2);
insert into product_images(product_id,url,sort_order) values ('48111561907','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozhi4o7ajgu4f',3);
insert into product_images(product_id,url,sort_order) values ('48111561907','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozhmhro8jd786',4);
delete from product_variants where product_id='48111561907'; delete from product_models where product_id='48111561907'; delete from product_categories where product_id='48111561907';
insert into product_variants(product_id,name,options,images) values ('48111561907','Tình Trạng',array['Hộp Mới 100%','Đã Qua Sử Dụng (Cũ)']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpqtx843jdvz40','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpqtx843jdvz40']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('48111561907','Hộp Mới 100%',282510,null,'');
insert into product_models(product_id,name,price,stock,image) values ('48111561907','Đã Qua Sử Dụng (Cũ)',58400,null,'');
insert into product_categories values ('48111561907','271399347') on conflict do nothing;
insert into product_categories values ('48111561907','271741642') on conflict do nothing;
insert into product_categories values ('48111561907','271742074') on conflict do nothing;
delete from reviews where product_id='48111561907' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48111561907','tgqyt9puxg',5,'','','{}'::text[],'Cảm ơn Khách iu đã luôn tin tưởng và ủng hộ ạ, Shop luôn chúc bạn gặp nhiều may mắn và thành công trong cuộc sống ạ',to_timestamp(1782341330));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('48111561907','duongquocdung2110',5,'','','{}'::text[],'Cảm ơn bạn đã ủng hộ, chúc bạn luôn mạnh khỏe và thành công nhé ♥️',to_timestamp(1784504615));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('40482447014','Đồ Chơi Đập Chuột Vui Nhộn Kèm Búa Âm Thanh Cho Bé,Đồ Chơi Cho Bé','do-choi-dap-chuot-vui-nhon-kem-bua-am-thanh-cho-be-do-choi-cho-be-47014',297840,null,408000,27,null,2,0.00,0,'{0,0,0,0,0}','','ĐỒ CHƠI ĐẬP CHUỘT VUI NHỘN CHO BÉ – RÈN PHẢN XẠ, TĂNG KHẢ NĂNG TẬP TRUNG
Mang đến cho bé những giờ chơi đầy hứng khởi với đồ chơi đập chuột tương tác, thiết kế màu sắc sinh động theo chủ đề không gian, giúp bé vừa vui chơi vừa phát triển tư duy và khả năng phối hợp tay mắt.
⭐ ƯU ĐIỂM NỔI BẬT
✅ Thiết kế màu sắc bắt mắt, thu hút trẻ nhỏ.
✅ Kèm 2 búa đồ chơi, bé có thể chơi cùng bố mẹ hoặc bạn bè.
✅ Giúp rèn luyện:
Phản xạ nhanh
Khả năng tập trung
Phối hợp tay và mắt
Nhận biết màu sắc
Kỹ năng vận động tinh
✅ Chất liệu nhựa ABS an toàn, bề mặt bo tròn, hạn chế góc cạnh.
✅ Phù hợp cho bé từ 3 tuổi trở lên.
📦 Bộ sản phẩm gồm
01 bàn chơi đập chuột
02 búa đồ chơi
Hộp đóng gói đẹp
Kích Thước: 34x26x8 cm
📏 Thông tin sản phẩm
Tên sản phẩm: Đồ chơi đập chuột
Độ tuổi: Từ 3 tuổi+
Chất liệu: Nhựa ABS
Chủ đề: Không gian
Màu sắc: Nhiều màu
Số người chơi: 1–2 người
🎁 Phù hợp làm quà tặng
✔ Quà sinh nhật
✔ Quà cho bé trai
✔ Quà cho bé gái
✔ Quà lễ, Tết
✔ Đồ chơi tương tác gia đình
Cam kết
✔ Sản phẩm mới 100%
✔ Kiểm tra kỹ trước khi gửi
✔ Đóng gói cẩn thận
✔ Hỗ trợ khách hàng nhanh chóng
đồ chơi đập chuột, đồ chơi đập chuột cho bé, đồ chơi phản xạ, đồ chơi vận động, đồ chơi giáo dục, đồ chơi tương tác, đồ chơi phát triển trí tuệ, đồ chơi trẻ em 3 tuổi, đồ chơi cho bé trai, đồ chơi cho bé gái, đồ chơi rèn phản xạ, đồ chơi cầm búa, đồ chơi thông minh, đồ chơi gia đình, đồ chơi giải trí
#DoChoiDapChuot #DoChoiChoBe #DoChoiGiaoDuc #DoChoiThongMinh #DoChoiVanDong #DoChoiTreEm #QuaTangChoBe #DoChoiTuongTac #DoChoiPhanXa #DoChoi3Tuoi
Không dấu
#dochoidapchuot #dochoichobe #dochoigiaoduc #dochoithongminh #dochoivandong #dochoitreem #quatangchobe #dochoituongtac #dochoiphanxa #dochoi3tuoi','[{"n": "Recommended Age", "v": "1 - 3 years"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi âm nhạc']::text[],'https://shopee.vn/product/67689883/40482447014') on conflict (id) do nothing;
delete from product_images where product_id='40482447014';
insert into product_images(product_id,url,sort_order) values ('40482447014','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqgaas09e7t87b',0);
insert into product_images(product_id,url,sort_order) values ('40482447014','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqg9o5h1ebr44e',1);
insert into product_images(product_id,url,sort_order) values ('40482447014','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqg9rhebbnrib5',2);
insert into product_images(product_id,url,sort_order) values ('40482447014','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqg9uv2eu60x1f',3);
insert into product_images(product_id,url,sort_order) values ('40482447014','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqg9zusj239c88',4);
delete from product_variants where product_id='40482447014'; delete from product_models where product_id='40482447014'; delete from product_categories where product_id='40482447014';
insert into product_categories values ('40482447014','271399347') on conflict do nothing;
insert into product_categories values ('40482447014','271742027') on conflict do nothing;
delete from reviews where product_id='40482447014' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('44760364962','Búp Bê Công Chúa Váy Cưới Cao Cấp - Đồ Chơi Búp Bê Thời Trang Cho Bé Gái Kèm Hộp Quà','bup-be-cong-chua-vay-cuoi-cao-cap-do-choi-bup-be-thoi-trang-cho-be-gai-kem-hop-q-64962',443000,null,null,0,null,2,0.00,0,'{0,0,0,0,0}','','👸 BÚP BÊ CÔNG CHÚA VÁY CƯỚI CAO CẤP – ĐỒ CHƠI BÚP BÊ THỜI TRANG CHO BÉ GÁI
Búp bê công chúa váy cưới là đồ chơi búp bê cho bé gái với thiết kế sang trọng, khuôn mặt đáng yêu cùng đôi mắt to long lanh và mái tóc dài mềm mại. Bộ búp bê thời trang khoác lên mình chiếc váy cưới nhiều tầng tinh tế, giúp bé thỏa sức sáng tạo, nhập vai và xây dựng những câu chuyện cổ tích đầy màu sắc. Đây là món quà tặng cho bé gái được nhiều phụ huynh lựa chọn trong các dịp sinh nhật, Noel, Trung Thu và các ngày lễ đặc biệt.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Búp bê công chúa sở hữu gương mặt xinh xắn, đôi mắt to sống động cùng mái tóc dài mềm mại, dễ dàng tạo nhiều kiểu tóc khác nhau.
✔️ Váy cưới công chúa được thiết kế nhiều tầng với chất liệu ren và voan cao cấp, mang đến vẻ ngoài sang trọng và nổi bật.
✔️ Chất liệu nhựa cao cấp kết hợp vải mềm an toàn, bền đẹp, phù hợp cho bé vui chơi hằng ngày.
✔️ Thiết kế hộp quà đẹp mắt, thích hợp làm quà sinh nhật cho bé gái, quà Noel, Quốc tế Thiếu nhi hoặc quà khen thưởng.
✔️ Đồ chơi búp bê thời trang giúp bé phát triển trí tưởng tượng, khả năng giao tiếp, kỹ năng nhập vai và óc sáng tạo.
🎀 LỢI ÍCH CHO BÉ
Phát triển trí tưởng tượng và khả năng sáng tạo.
Rèn luyện kỹ năng giao tiếp và nhập vai.
Tăng khả năng phối đồ, chăm sóc và tạo kiểu tóc cho búp bê công chúa.
Giúp bé tăng sự khéo léo, khả năng phối hợp tay mắt và phát triển cảm nhận thẩm mỹ.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Búp bê công chúa váy cưới.
Loại sản phẩm: Búp bê thời trang cho bé gái.
Chất liệu: Nhựa cao cấp + vải mềm.
Kiểu dáng: Công chúa váy cưới.
Màu sắc: Như hình.
Kích thước hộp: 21 x 34 x 7 cm.
Đóng gói: 01 búp bê kèm hộp quà.
Độ tuổi phù hợp: Từ 3 tuổi trở lên.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Quà sinh nhật cho bé gái.
Quà Noel, Trung Thu, Quốc tế Thiếu nhi.
Quà khen thưởng hoặc quà tặng dành cho bé yêu thích búp bê công chúa, búp bê thời trang, đồ chơi búp bê, đồ chơi nhập vai, đồ chơi bé gái và đồ chơi sáng tạo.
💯 CAM KẾT TỪ SHOP
✅ Sản phẩm đúng hình ảnh và mô tả.
✅ Kiểm tra kỹ trước khi giao hàng.
✅ Đóng gói cẩn thận, chống sốc.
✅ Hỗ trợ đổi trả nếu sản phẩm lỗi từ nhà sản xuất theo chính sách Shopee.
#bupbe #bupbecongchua #bupbevaycuoi #bupbethoitrang #dochoibupbe #dochoibegai #dochoicongchua #dochoinhapvai #dochoisangtao #dochoichobe #bupbecaocap #quatangbegai #quatangchobe #dochoitreem #bupbedethuong','[{"n": "Material", "v": "Plastic, Fabric"}, {"n": "Build-in Battery", "v": "No"}, {"n": "Gender", "v": "Girl"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Búp bê & Thú nhồi bông','Búp bê & Phụ kiện']::text[],'https://shopee.vn/product/67689883/44760364962') on conflict (id) do nothing;
delete from product_images where product_id='44760364962';
insert into product_images(product_id,url,sort_order) values ('44760364962','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-molkambpbs3mdd',0);
insert into product_images(product_id,url,sort_order) values ('44760364962','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofpx1z8tvd95d',1);
insert into product_images(product_id,url,sort_order) values ('44760364962','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo5509u2p9u0f4',2);
insert into product_images(product_id,url,sort_order) values ('44760364962','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo5521ea7bid1d',3);
insert into product_images(product_id,url,sort_order) values ('44760364962','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo550u8ayr5s12',4);
delete from product_variants where product_id='44760364962'; delete from product_models where product_id='44760364962'; delete from product_categories where product_id='44760364962';
insert into product_variants(product_id,name,options,images) values ('44760364962','Loại',array['Búp Bê Công Chúa']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo75t66toc1y2f']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('44760364962','Búp Bê Công Chúa',443000,null,'');
insert into product_categories values ('44760364962','271399347') on conflict do nothing;
insert into product_categories values ('44760364962','271741704') on conflict do nothing;
delete from reviews where product_id='44760364962' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('47511420138','Bảng Phi Tiêu Nam Châm , Đồ Chơi Cho Bé, Trò Chơi Ném Phi Tiêu','bang-phi-tieu-nam-cham-do-choi-cho-be-tro-choi-nem-phi-tieu-20138',213160,null,292000,27,null,0,0.00,0,'{0,0,0,0,0}','','🎯 Boomerang Magnetic Target – Bộ đồ chơi phi tiêu nam châm an toàn giúp bé rèn luyện khả năng tập trung, phản xạ và phối hợp tay mắt thông qua những trận thi đấu vui nhộn cùng gia đình và bạn bè.



Điểm nổi bật sản phẩm


✅ Đầu phi tiêu nam châm an toàn




Không sử dụng đầu nhọn như phi tiêu truyền thống.


Bám chắc vào bảng mục tiêu bằng lực từ tính.


Phù hợp cho trẻ em vui chơi dưới sự giám sát của người lớn.


✅ Rèn luyện kỹ năng cho trẻ




Tăng khả năng tập trung.


Phát triển sự khéo léo và phối hợp tay mắt.


Hỗ trợ vận động và giảm thời gian sử dụng thiết bị điện tử.


✅ Thiết kế màu sắc bắt mắt

Tông màu đỏ - xanh nổi bật.


Bảng điểm rõ ràng giúp tăng tính cạnh tranh và hứng thú khi chơi.


✅ Chơi được nhiều người

Thích hợp cho gia đình, bạn bè, lớp học.


Tạo không khí vui vẻ trong các buổi sinh hoạt, tiệc hoặc dã ngoại.


✅ Dễ dàng lắp đặt

Treo tường nhanh chóng.

Sử dụng trong phòng khách, phòng ngủ, sân vườn hoặc khu vui chơi.

Thông tin sản phẩm


Tên sản phẩm: Boomerang Magnetic Target

Loại sản phẩm: Bảng phi tiêu nam châm

Chất liệu: Nhựa cao cấp + nam châm

Màu sắc: Đỏ, xanh, vàng

Kích thước hộp : 33cm x 44cm x 2cm

Đối tượng sử dụng: Trẻ em từ 3 tuổi trở lên và người lớn

Bộ sản phẩm gồm:

01 Bảng mục tiêu nam châm


06 Phi tiêu nam châm nhiều màu



Lợi ích khi sử dụng


🎯 Giúp bé phát triển khả năng quan sát và phản xạ.


🎯 Tăng tính tương tác giữa các thành viên trong gia đình.


🎯 Mang đến những giờ giải trí lành mạnh, vui vẻ và bổ ích.


🎯 Là món quà lý tưởng cho sinh nhật, lễ tết hoặc các dịp đặc biệt.



Hướng dẫn sử dụng


Treo hoặc đặt bảng mục tiêu tại vị trí phù hợp.


Đứng ở khoảng cách quy định.


Ném phi tiêu về phía bảng để ghi điểm.


So sánh điểm số và tìm ra người chiến thắng.','[{"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi vận động & Ngoài trời','Đồ chơi thể thao']::text[],'https://shopee.vn/product/67689883/47511420138') on conflict (id) do nothing;
delete from product_images where product_id='47511420138';
insert into product_images(product_id,url,sort_order) values ('47511420138','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov4k1b97ci737',0);
insert into product_images(product_id,url,sort_order) values ('47511420138','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov4004d0d8u58',1);
insert into product_images(product_id,url,sort_order) values ('47511420138','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov44p7op4p7c9',2);
insert into product_images(product_id,url,sort_order) values ('47511420138','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov3zagweebv6a',3);
delete from product_variants where product_id='47511420138'; delete from product_models where product_id='47511420138'; delete from product_categories where product_id='47511420138';
insert into product_categories values ('47511420138','271399347') on conflict do nothing;
insert into product_categories values ('47511420138','271742027') on conflict do nothing;
delete from reviews where product_id='47511420138' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('55608664508','Súng Thổi Bong Bóng Kỳ Lân Unicorn Có Đèn Nhạc Kèm Dung Dịch Máy Tạo Bong Bóng Cho Bé Gái','sung-thoi-bong-bong-ky-lan-unicorn-co-den-nhac-kem-dung-dich-may-tao-bong-bong-c-64508',107100,null,170000,37,null,1,0.00,0,'{0,0,0,0,0}','','🦄 SÚNG THỔI BONG BÓNG KỲ LÂN UNICORN CÓ ĐÈN NHẠC – MÁY TẠO BONG BÓNG CHO BÉ GÁI
Súng thổi bong bóng kỳ lân Unicorn là món đồ chơi thổi bong bóng cho bé được thiết kế với hình ngựa một sừng Unicorn màu hồng pastel cực đáng yêu. Sản phẩm tích hợp đèn LED, âm nhạc và khả năng tạo hàng trăm bong bóng xà phòng lung linh chỉ với một nút bấm, mang đến những giờ vui chơi đầy thích thú. Đây là món quà tặng cho bé gái phù hợp cho sinh nhật, Noel, Trung Thu hay các buổi vui chơi ngoài trời.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Thiết kế kỳ lân Unicorn đáng yêu với tông màu hồng pastel, thu hút các bé gái ngay từ cái nhìn đầu tiên.
✔️ Máy thổi bong bóng tạo nhiều bong bóng xà phòng liên tục chỉ với một nút bấm, giúp bé vui chơi dễ dàng.
✔️ Tích hợp đèn LED nhiều màu và âm nhạc vui nhộn, tạo hiệu ứng lung linh khi chơi vào buổi tối.
✔️ Chất liệu nhựa ABS cao cấp, bề mặt nhẵn mịn, không góc cạnh, an toàn cho trẻ nhỏ.
✔️ Thiết kế tay cầm chắc chắn, trọng lượng nhẹ, phù hợp để bé cầm chơi hoặc mang theo khi đi công viên, dã ngoại.
✔️ Giúp bé tăng cường vận động, phát triển khả năng quan sát, phản xạ và tạo nhiều khoảnh khắc vui chơi cùng gia đình.
📦 THÔNG TIN SẢN PHẨM
Loại sản phẩm: Súng thổi bong bóng Unicorn.
Chất liệu: Nhựa ABS cao cấp.
Màu sắc: Hồng pastel.
Kích thước hộp: 19 x 32 x 6 cm.
Nguồn điện: Sử dụng pin.
Độ tuổi phù hợp: Từ 3 tuổi trở lên.
📦 BỘ SẢN PHẨM BAO GỒM
01 súng thổi bong bóng hình kỳ lân Unicorn.
01 chai dung dịch bong bóng xà phòng.
🎮 LỢI ÍCH CHO BÉ
Khuyến khích bé vận động và vui chơi ngoài trời.
Giúp phát triển khả năng quan sát, phản xạ và phối hợp tay mắt.
Kích thích trí tưởng tượng với hiệu ứng bong bóng, ánh sáng và âm nhạc.
Mang đến những giờ phút vui chơi thư giãn cùng gia đình và bạn bè.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Quà sinh nhật cho bé gái.
Quà Noel, Quốc tế Thiếu nhi, Trung Thu.
Phù hợp cho bé yêu thích đồ chơi thổi bong bóng, súng bắn bong bóng, máy tạo bong bóng, đồ chơi kỳ lân, đồ chơi Unicorn, đồ chơi có đèn nhạc và các hoạt động vui chơi ngoài trời.
💯 CAM KẾT TỪ SHOP
✅ Sản phẩm đúng hình ảnh và mô tả.
✅ Kiểm tra kỹ trước khi giao hàng.
✅ Đóng gói cẩn thận, chống va đập.
✅ Hỗ trợ đổi trả nếu sản phẩm lỗi từ nhà sản xuất theo quy định của Shopee.
#maythoibongbong #sungthoibongbong #sungbanbongbong #maytaobongbong #bongbongxaphong #unicorn #kylan #nguamotsung #dochoingoaitroi #dochoichobe #dochoibegai #dochoisangtao #quatangbegai #quatangchobe #dochoidendnhac','[{"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi vận động & Ngoài trời','Súng đồ chơi']::text[],'https://shopee.vn/product/67689883/55608664508') on conflict (id) do nothing;
delete from product_images where product_id='55608664508';
insert into product_images(product_id,url,sort_order) values ('55608664508','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moh8ehzhr6rx0b',0);
insert into product_images(product_id,url,sort_order) values ('55608664508','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mmycm4ei9s0687',1);
insert into product_images(product_id,url,sort_order) values ('55608664508','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mmycm4enjeo296',2);
insert into product_images(product_id,url,sort_order) values ('55608664508','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mmycm4esarye10',3);
insert into product_images(product_id,url,sort_order) values ('55608664508','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mmycn36ip53441',4);
delete from product_variants where product_id='55608664508'; delete from product_models where product_id='55608664508'; delete from product_categories where product_id='55608664508';
insert into product_variants(product_id,name,options,images) values ('55608664508','Màu sắc',array['Hồng','Xanh dương']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mmycm4euyakjd6','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mmycn36ip53441']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('55608664508','Hồng',107100,null,'');
insert into product_models(product_id,name,price,stock,image) values ('55608664508','Xanh dương',107100,null,'');
insert into product_categories values ('55608664508','271083241') on conflict do nothing;
insert into product_categories values ('55608664508','271742027') on conflict do nothing;
delete from reviews where product_id='55608664508' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('49613839618','Bộ Đồ Chơi Cầu Trượt Búp Bê Nhiều Tầng,Đồ Chơi Cho Bé','bo-do-choi-cau-truot-bup-be-nhieu-tang-do-choi-cho-be-39618',180000,null,240000,25,null,0,0.00,0,'{0,0,0,0,0}','','Bộ đồ chơi cầu trượt búp bê nhiều tầng với thiết kế đường trượt liên hoàn, giúp bé thích thú quan sát các nhân vật di chuyển qua từng tầng. Sản phẩm có màu sắc hồng tím nổi bật, kết hợp hiệu ứng âm nhạc và ánh sáng, phù hợp làm quà tặng cho bé từ 3 tuổi.
Đặc điểm nổi bật
Thiết kế cầu trượt nhiều tầng độc đáo, tạo chuyển động liên tục.
Kết hợp đường đua, cầu thang và các nhân vật búp bê nhỏ xinh.
Hiệu ứng nhạc và đèn giúp giờ chơi thêm sinh động.
Hỗ trợ bé rèn luyện khả năng quan sát và phối hợp tay – mắt.
Khuyến khích bé khám phá chuyển động và nhận biết màu sắc.
Phù hợp chơi tại nhà, khu vui chơi hoặc làm quà tặng sinh nhật.
Dành cho trẻ từ 3 tuổi trở lên.
Thông tin sản phẩm
Kích Thước: 17x24x6 cm
Tên sản phẩm: Bộ đồ chơi cầu trượt búp bê nhiều tầng
Chủ đề: Đường trượt liên hoàn
Màu sắc chủ đạo: Hồng – tím
Tính năng: Nhạc, đèn, đường trượt nhiều tầng
Độ tuổi phù hợp: Từ 3 tuổi
Bộ sản phẩm gồm: Đường trượt và các chi tiết nhân vật đi kèm theo bộ
Hướng dẫn sử dụng
Lắp các bộ phận đường trượt đúng vị trí, đặt nhân vật tại điểm bắt đầu và quan sát nhân vật di chuyển qua từng tầng. Trẻ nhỏ nên chơi dưới sự giám sát của người lớn.
Lưu ý
Màu sắc thực tế có thể chênh lệch nhẹ do ánh sáng và màn hình.
Không để trẻ cho các chi tiết nhỏ vào miệng.
Kiểm tra đầy đủ các bộ phận trước khi cho bé sử dụng.
#dochoicautruot #dochoibupbe #duongduadochoi #dochoibegai #dochoitreem #dochoithongminh #dochoiamnhac #dochoicoden #quatangchobe #dochoi3tuoi #cautruotnhieutang #đồchơicầutrượt #đồchơibúpbê #đồchơibégái','[{"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}, {"n": "Gender", "v": "Unisex"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Búp bê & Thú nhồi bông','Nhà búp bê & Phụ kiện']::text[],'https://shopee.vn/product/67689883/49613839618') on conflict (id) do nothing;
delete from product_images where product_id='49613839618';
insert into product_images(product_id,url,sort_order) values ('49613839618','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj3gheyq3uoa5',0);
insert into product_images(product_id,url,sort_order) values ('49613839618','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj30rc4phce6f',1);
insert into product_images(product_id,url,sort_order) values ('49613839618','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj34z1ls363b3',2);
insert into product_images(product_id,url,sort_order) values ('49613839618','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj35ttliio036',3);
insert into product_images(product_id,url,sort_order) values ('49613839618','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj36etomgb33d',4);
delete from product_variants where product_id='49613839618'; delete from product_models where product_id='49613839618'; delete from product_categories where product_id='49613839618';
insert into product_categories values ('49613839618','271399347') on conflict do nothing;
insert into product_categories values ('49613839618','271741912') on conflict do nothing;
delete from reviews where product_id='49613839618' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('54861919870','Mô Hình Lắp Ráp Robot Mech Warrior Cho Bé - Đồ Chơi Xếp Hình Chiến Binh, Mô Hình Robot Cao Cấp','mo-hinh-lap-rap-robot-mech-warrior-cho-be-do-choi-xep-hinh-chien-binh-mo-hinh-ro-19870',426320,null,584000,27,null,1,0.00,0,'{0,0,0,0,0}','','Mô Hình Lắp Ráp Robot Mech Warrior Cho Bé, Đồ Chơi Xếp Hình Chiến Binh, Mô Hình Robot Cao Cấp
🤖 Mô Hình Lắp Ráp Robot Mech Warrior là đồ chơi xếp hình dành cho bé và những người yêu thích mô hình robot, mang đến trải nghiệm lắp ráp đầy thú vị cùng thiết kế chiến binh tương lai mạnh mẽ và ấn tượng. Với các chi tiết được chế tác sắc nét, màu sắc nổi bật và nhiều khớp cử động linh hoạt, mô hình sau khi hoàn thiện không chỉ giúp bé thỏa sức sáng tạo mà còn là món đồ trưng bày đẹp mắt.
Không chỉ là đồ chơi cho bé, mô hình lắp ráp robot còn là đồ chơi giáo dục giúp phát triển tư duy logic, khả năng quan sát và rèn luyện tính kiên nhẫn trong từng bước lắp ráp. Bé sẽ được nâng cao khả năng phối hợp tay mắt, tăng sự tập trung và kích thích trí tưởng tượng khi tự tay hoàn thiện một robot Mech Warrior cực ngầu theo phong cách khoa học viễn tưởng.
✨ Đặc điểm nổi bật
✔️ Thiết kế robot chiến binh Mech Warrior hiện đại, mạnh mẽ, lấy cảm hứng từ phong cách khoa học viễn tưởng.
✔️ Nhiều khớp chuyển động linh hoạt, dễ dàng tạo nhiều tư thế chiến đấu đẹp mắt.
✔️ Các chi tiết sắc nét, màu sắc nổi bật, mang đến trải nghiệm lắp ráp chân thực.
✔️ Chất liệu nhựa cao cấp, bền đẹp, chắc chắn và an toàn khi sử dụng.
✔️ Có thể dùng làm mô hình trưng bày, đồ chơi sưu tầm hoặc quà tặng cho người yêu thích robot và mô hình lắp ráp.
📦 Thông tin sản phẩm
Tên sản phẩm: Mô Hình Lắp Ráp Robot Mech Warrior
Kích thước hộp: 30 x 46 x 6 cm
Chất liệu: Nhựa cao cấp
Chủ đề: Robot chiến binh Mecha
Bộ sản phẩm gồm: 01 bộ mô hình Robot Mech Warrior, phụ kiện đi kèm và hộp đóng gói đẹp mắt.
🎯 Lợi ích khi chơi
Giúp phát triển tư duy logic và khả năng giải quyết vấn đề.
Rèn luyện sự khéo léo và phối hợp tay mắt.
Tăng khả năng tập trung và tính kiên trì.
Kích thích trí tưởng tượng, óc sáng tạo và niềm yêu thích khám phá công nghệ.
Mang đến những giờ giải trí bổ ích, hạn chế thời gian sử dụng điện thoại và thiết bị điện tử.
🎁 Mô hình lắp ráp Robot Mech Warrior là món quà lý tưởng dành cho bé trai yêu thích đồ chơi xếp hình, robot và mô hình lắp ráp. Đồng thời cũng là lựa chọn phù hợp cho người đam mê mô hình Mecha, sưu tầm mô hình trưng bày hoặc làm quà sinh nhật, Noel, Tết và các dịp đặc biệt.
💖 Cam kết từ Shop
Sản phẩm mới 100%, đúng mô tả.
Đóng gói cẩn thận, chống sốc trước khi giao.
Hỗ trợ đổi trả theo chính sách Shopee.
Tư vấn nhiệt tình trước và sau khi mua hàng.
#MoHinhLapRapRobot #RobotMechWarrior #DoChoiXepHinh #DoChoiChoBe #MoHinhRobot #RobotMecha #DoChoiSangTao #DoChoiGiaoDuc #MoHinhTrungBay #QuaTangChoBe #DoChoiLapRap #DoChoiRobot #DoChoiTreEm #MechaModel #ShopeeVN','[{"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/54861919870') on conflict (id) do nothing;
delete from product_images where product_id='54861919870';
insert into product_images(product_id,url,sort_order) values ('54861919870','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9hw5zpzvnz0d',0);
insert into product_images(product_id,url,sort_order) values ('54861919870','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9hhgjughse33',1);
insert into product_images(product_id,url,sort_order) values ('54861919870','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9hlhf04d8g1b',2);
insert into product_images(product_id,url,sort_order) values ('54861919870','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9hjimzqrdb48',3);
insert into product_images(product_id,url,sort_order) values ('54861919870','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9hflswdvcx60',4);
delete from product_variants where product_id='54861919870'; delete from product_models where product_id='54861919870'; delete from product_categories where product_id='54861919870';
insert into product_categories values ('54861919870','271399347') on conflict do nothing;
insert into product_categories values ('54861919870','271741642') on conflict do nothing;
delete from reviews where product_id='54861919870' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('44711478079','Bộ Đồ Chơi Đất Nặn Khủng Long 19 Chi Tiết An Toàn Cho Bé, Đồ Chơi Sáng Tạo Phát Triển Tư Duy','bo-do-choi-dat-nan-khung-long-19-chi-tiet-an-toan-cho-be-do-choi-sang-tao-phat-t-78079',139430,null,191000,27,null,3,0.00,0,'{0,0,0,0,0}','','Bộ Đồ Chơi Đất Nặn Khủng Long 19 Chi Tiết Cho Bé 3+ An Toàn, Đồ Chơi Giáo Dục Sáng Tạo
🦖 Bộ Đồ Chơi Đất Nặn Khủng Long 19 Chi Tiết là món đồ chơi cho bé giúp bé vừa học vừa chơi, kích thích trí tưởng tượng và phát triển khả năng sáng tạo mỗi ngày. Với chủ đề đồ chơi khủng long kết hợp đất nặn cho bé, bé sẽ được khám phá những quả trứng khủng long bí ẩn, tự tay tạo hình các chú khủng long đáng yêu và rèn luyện sự khéo léo của đôi tay.
Sản phẩm được làm từ chất liệu an toàn cho bé, màu sắc tươi sáng, dễ sử dụng và phù hợp với trẻ từ 3 tuổi trở lên. Đây là một đồ chơi giáo dục giúp bé phát triển tư duy, tăng khả năng nhận biết màu sắc, hình khối và cải thiện kỹ năng vận động tinh trong quá trình vui chơi.
Đặc điểm nổi bật
✔ Bộ đồ chơi gồm 19 chi tiết đa dạng, dễ dàng sáng tạo nhiều mô hình khác nhau.
✔ Thiết kế khủng long ngộ nghĩnh, màu sắc bắt mắt, thu hút sự yêu thích của trẻ.
✔ Đất nặn mềm mịn, dễ tạo hình, hỗ trợ bé phát triển khả năng sáng tạo và trí tưởng tượng.
✔ Giúp rèn luyện sự khéo léo, tăng khả năng phối hợp tay và mắt, đồng thời hạn chế thời gian sử dụng điện thoại, tivi.
Thông tin sản phẩm
Tên sản phẩm: Bộ Đồ Chơi Đất Nặn Khủng Long
Số lượng: 19 chi tiết (19 PCS)
Kích thước: 18 x 23 x 6 cm
Chủ đề: Khủng long
Màu sắc: Nhiều màu sinh động
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Đóng gói: Hộp quà đẹp mắt
🎁 Bộ đồ chơi khủng long 19 chi tiết là lựa chọn lý tưởng làm quà sinh nhật cho bé, quà Noel, Trung Thu hay Quốc tế Thiếu nhi. Phù hợp làm quà tặng cho bé trai, bé gái, sử dụng tại nhà hoặc trường mầm non. Đây là món đồ chơi phát triển trí tuệ được nhiều phụ huynh lựa chọn để giúp bé học hỏi thông qua những giờ chơi đầy hứng thú.
💖 Cam kết từ Shop
Sản phẩm mới 100%.
Đóng gói cẩn thận trước khi giao.
Hỗ trợ đổi trả theo quy định Shopee.
Tư vấn nhiệt tình trước và sau khi mua hàng.
#BoDoChoiDatNanKhungLong #DoChoiKhungLong #DatNanChoBe #DoChoiChoBe #DoChoiGiaoDuc #DoChoiSangTao #DoChoiTreEm #DoChoi3Tuoi #QuaSinhNhatChoBe #QuaTangChoBe #DoChoiPhatTrienTriTue #DoChoiAnToanChoBe #KhungLong #DoChoiMamNon #DoChoiTreEm3Tuoi','[{"n": "Material", "v": "Clay"}, {"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi mỹ thuật & Thủ công']::text[],'https://shopee.vn/product/67689883/44711478079') on conflict (id) do nothing;
delete from product_images where product_id='44711478079';
insert into product_images(product_id,url,sort_order) values ('44711478079','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxk2yhf4bv258',0);
insert into product_images(product_id,url,sort_order) values ('44711478079','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxjo0x2nd360c',1);
insert into product_images(product_id,url,sort_order) values ('44711478079','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxjmrszi41t5d',2);
insert into product_images(product_id,url,sort_order) values ('44711478079','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxjrxejr2f442',3);
insert into product_images(product_id,url,sort_order) values ('44711478079','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxjq3dqapzf40',4);
delete from product_variants where product_id='44711478079'; delete from product_models where product_id='44711478079'; delete from product_categories where product_id='44711478079';
insert into product_categories values ('44711478079','271399347') on conflict do nothing;
delete from reviews where product_id='44711478079' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('41930798783','Búp Bê Lucky Princess Công Chúa Váy Ren Cao Cấp Đồ Chơi Búp Bê Cho Bé Gái Quà Tặng Sinh Nhật','bup-be-lucky-princess-cong-chua-vay-ren-cao-cap-do-choi-bup-be-cho-be-gai-qua-ta-98783',381060,null,522000,27,null,2,0.00,0,'{0,0,0,0,0}','','👸 BÚP BÊ LUCKY PRINCESS CÔNG CHÚA VÁY REN CAO CẤP – ĐỒ CHƠI BÚP BÊ CHO BÉ GÁI
Búp bê Lucky Princess là đồ chơi búp bê cho bé gái được thiết kế theo phong cách công chúa vintage với chiếc váy ren cao cấp, mái tóc mềm mượt cùng phụ kiện tai thỏ đáng yêu. Không chỉ là món đồ chơi giúp bé giải trí, búp bê công chúa còn giúp bé phát triển trí tưởng tượng, khả năng sáng tạo và kỹ năng giao tiếp thông qua những trò chơi nhập vai mỗi ngày. Đây là món quà tặng cho bé gái được nhiều phụ huynh lựa chọn vào các dịp sinh nhật, Noel và lễ Tết.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Búp bê công chúa Lucky Princess sở hữu gương mặt đáng yêu, đôi mắt long lanh cùng mái tóc mềm mại, tạo cảm giác chân thực và thu hút.
✔️ Trang phục váy ren phối sọc theo phong cách vintage sang trọng, giúp búp bê váy công chúa nổi bật và xinh xắn.
✔️ Chất liệu nhựa cao cấp kết hợp vải mềm an toàn, bền đẹp, phù hợp cho bé vui chơi mỗi ngày.
✔️ Thiết kế hộp quà sang trọng, thích hợp làm quà sinh nhật cho bé gái, quà Noel, Trung Thu hoặc các dịp đặc biệt.
✔️ Đồ chơi búp bê giúp bé phát triển khả năng giao tiếp, trí tưởng tượng, kỹ năng nhập vai và tăng tính sáng tạo trong quá trình vui chơi.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Búp bê Lucky Princess.
Loại sản phẩm: Búp bê công chúa cho bé gái.
Chất liệu: Nhựa cao cấp + vải mềm.
Phong cách: Công chúa vintage.
Màu sắc: Xanh pastel phối trắng.
Kích thước hộp: 25 x 38 x 8 cm.
Đóng gói: Full box sang trọng.
Độ tuổi phù hợp: Từ 3 tuổi trở lên.
🎀 LỢI ÍCH CHO BÉ
Phát triển trí tưởng tượng và khả năng sáng tạo.
Rèn luyện kỹ năng giao tiếp và nhập vai.
Tăng khả năng phối hợp tay mắt và sự khéo léo.
Giúp bé xây dựng thế giới cổ tích và những câu chuyện thú vị cùng búp bê công chúa.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Quà sinh nhật cho bé gái.
Quà Noel, Quốc tế Thiếu nhi, Trung Thu.
Quà khen thưởng hoặc quà tặng cho các bé yêu thích búp bê, đồ chơi công chúa, búp bê thời trang, búp bê váy ren, đồ chơi nhập vai và đồ chơi bé gái.
💯 CAM KẾT TỪ SHOP
✅ Sản phẩm đúng hình ảnh và mô tả.
✅ Kiểm tra kỹ trước khi giao hàng.
✅ Đóng gói cẩn thận, chống sốc.
✅ Hỗ trợ đổi trả nếu sản phẩm lỗi từ nhà sản xuất theo chính sách Shopee.
#bupbe #bupbecongchua #bupbeluckyprincess #dochoibupbe #dochoibegai #bupbethoitrang #bupbevayren #dochoicongchua #dochoinhapvai #dochoisangtao #dochoichobe #quatangbegai #quatangchobe #bupbecaocap #dochoitreem','[{"n": "Country of Origin", "v": "China"}, {"n": "Material", "v": "ABS, Fabric"}, {"n": "Build-in Battery", "v": "No"}, {"n": "Gender", "v": "Girl"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Búp bê & Thú nhồi bông','Búp bê & Phụ kiện']::text[],'https://shopee.vn/product/67689883/41930798783') on conflict (id) do nothing;
delete from product_images where product_id='41930798783';
insert into product_images(product_id,url,sort_order) values ('41930798783','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-molm6dgbhmoc11',0);
insert into product_images(product_id,url,sort_order) values ('41930798783','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofrwaghenltc1',1);
insert into product_images(product_id,url,sort_order) values ('41930798783','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo55hqvygow5a8',2);
insert into product_images(product_id,url,sort_order) values ('41930798783','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo55fmeilxqba1',3);
insert into product_images(product_id,url,sort_order) values ('41930798783','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo55c85c11xi44',4);
delete from product_variants where product_id='41930798783'; delete from product_models where product_id='41930798783'; delete from product_categories where product_id='41930798783';
insert into product_variants(product_id,name,options,images) values ('41930798783','Loại',array['Búp Bê Lucky Princes']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo75qfdvc9vp2f']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('41930798783','Búp Bê Lucky Princes',381060,null,'');
insert into product_categories values ('41930798783','271399347') on conflict do nothing;
insert into product_categories values ('41930798783','271741704') on conflict do nothing;
delete from reviews where product_id='41930798783' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('41382396549','Support Mezastar Sticker QR Triệu Hồi Monster - Hỗ Trợ Chiến Đấu Quét Máy Mezastar 2 Mặt','support-mezastar-sticker-qr-trieu-hoi-monster-ho-tro-chien-dau-quet-may-mezastar-96549',81000,null,135000,40,null,3,5.00,1,'{0,0,0,0,1}','','🔥 SUPPORT MEZASTAR STICKER QR – TRIỆU HỒI MONSTER HỖ TRỢ CHIẾN ĐẤU CỰC NHANH ⚔️
Nâng cấp sức mạnh đội hình với Support Mezastar Sticker QR, phụ kiện giúp người chơi dễ dàng quét mã trên máy Mezastar để triệu hồi Monster hỗ trợ chiến đấu, tạo lợi thế rõ rệt trong những trận đấu đầy kịch tính.
Sản phẩm phù hợp cho người chơi Mezastar muốn tăng chiến thuật, mở rộng lựa chọn và trải nghiệm game hấp dẫn hơn.
🌟 ĐIỂM NỔI BẬT
✔️ Quét trực tiếp trên máy Mezastar nhanh chóng, tiện lợi
✔️ Hỗ trợ triệu hồi Monster trong chiến đấu
✔️ QR code sắc nét, dễ nhận diện và quét ổn định
✔️ Sticker in chất lượng cao, màu sắc rõ ràng
✔️ Thiết kế nhỏ gọn, dễ mang theo sử dụng
✔️ Phù hợp sưu tầm và nâng cấp trải nghiệm game
✔️ Tiết kiệm chi phí hơn so với săn thẻ hiếm
⚔️ CÔNG DỤNG SẢN PHẨM
🎮 Hỗ trợ người chơi Mezastar trong trận đấu
🎮 Quét QR để kích hoạt Monster hỗ trợ
🎮 Tăng thêm lựa chọn chiến thuật khi thi đấu
🎮 Phù hợp cho cả người mới và người chơi lâu năm
🎮 Sưu tầm Monster hỗ trợ độc đáo
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Support Mezastar Sticker QR
• Loại sản phẩm: Sticker QR hỗ trợ chiến đấu
• Công dụng: Quét trên máy Mezastar
• Tình trạng: Mới 100%
• Đóng gói: Cẩn thận trước khi giao
💥 VÌ SAO NÊN CHỌN SẢN PHẨM NÀY?
✔️ Quét nhanh, dễ sử dụng
✔️ Hỗ trợ triệu hồi Monster chiến đấu
✔️ Thiết kế đẹp mắt, sắc nét
✔️ Giá hợp lý cho người chơi Mezastar
✔️ Phù hợp sưu tầm lâu dài
💖 CAM KẾT TỪ SHOP
✔️ Hàng đúng mô tả 100%
✔️ Đóng gói cẩn thận chống hư hỏng
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi gửi hàng
#SupportMezastar #StickerQR #MezastarVN #MonsterSupport #QRMezastar #StickerGame #PhuKienMezastar #TrieuHoiMonster #HoTroChienDau #GameMezastar #StickerQRGame #DoChoiSuuTam #BoStickerQR #MezastarSticker #GamingSupport','[{"n": "Recommended Age", "v": "2 - 6 years"}, {"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Custom Product", "v": "No"}, {"n": "Material", "v": "Giấy"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Khác']::text[],'https://shopee.vn/product/67689883/41382396549') on conflict (id) do nothing;
delete from product_images where product_id='41382396549';
insert into product_images(product_id,url,sort_order) values ('41382396549','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekg5awxz4b64',0);
insert into product_images(product_id,url,sort_order) values ('41382396549','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekg5awwkjybb',1);
insert into product_images(product_id,url,sort_order) values ('41382396549','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekg5b15og076',2);
insert into product_images(product_id,url,sort_order) values ('41382396549','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekg5axc0sh12',3);
insert into product_images(product_id,url,sort_order) values ('41382396549','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqekg5avyuwycc',4);
delete from product_variants where product_id='41382396549'; delete from product_models where product_id='41382396549'; delete from product_categories where product_id='41382396549';
insert into product_categories values ('41382396549','khac') on conflict do nothing;
delete from reviews where product_id='41382396549' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('41382396549','hien_bui_92',5,'','','{}'::text[],'Cảm ơn bạn đã tin tưởng ủng hộ ạ, chúc bạn luôn thành công nhé',to_timestamp(1785765354));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('45412128280','Đồ Chơi Ghép Hình Nam Châm, Trò Chơi Điều Khiển Xe Ô Tô Bằng Nam Châm, Đồ Chơi Cho Bé','do-choi-ghep-hinh-nam-cham-tro-choi-dieu-khien-xe-o-to-bang-nam-cham-do-choi-cho-28280',223380,null,306000,27,null,1,0.00,0,'{0,0,0,0,0}','','Biến mỗi giờ chơi thành một hành trình khám phá đầy thú vị với Magnetic Parking Game. Bé sẽ sử dụng bút nam châm để điều khiển các xe ô tô di chuyển qua mê cung giao thông, đưa xe về đúng vị trí đỗ theo thử thách trên thẻ bài.
Sản phẩm giúp trẻ vừa học vừa chơi, rèn luyện tư duy logic, khả năng quan sát và sự tập trung một cách tự nhiên.
⭐ ƯU ĐIỂM NỔI BẬT
✅ Điều khiển xe bằng bút nam châm an toàn, dễ sử dụng
✅ Rèn luyện tư duy logic và kỹ năng giải quyết vấn đề
✅ Phát triển khả năng tập trung, quan sát và phối hợp tay mắt
✅ Thiết kế bo góc an toàn cho trẻ nhỏ
✅ Màu sắc sinh động, thu hút sự chú ý của bé
✅ Nhiều thẻ thử thách với độ khó tăng dần
✅ Không cần pin, chơi mọi lúc mọi nơi
🎯 LỢI ÍCH CHO BÉ
✔ Phát triển IQ và tư duy chiến lược
✔ Tăng khả năng nhận biết màu sắc, vị trí và phương hướng
✔ Rèn luyện tính kiên nhẫn và khả năng tập trung
✔ Hạn chế thời gian sử dụng điện thoại, TV
✔ Tăng cường vận động tinh của bàn tay
📦 THÔNG TIN SẢN PHẨM
Kích Thước: 23x23x2 cm
Chất liệu: Nhựa ABS cao cấp
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Loại đồ chơi: Giáo dục Montessori
Phương thức chơi: Điều khiển xe bằng bút nam châm
Bộ sản phẩm gồm:
01 bảng trò chơi
Xe ô tô màu sắc
Bút nam châm
Bộ thẻ thử thách
🎁 PHÙ HỢP LÀM QUÀ TẶNG
🎂 Sinh nhật
🎄 Noel
🎉 Quốc tế Thiếu nhi
🎈 Phần thưởng học tập
CAM KẾT
✔ Sản phẩm giống hình 100%
✔ Đóng gói cẩn thận trước khi giao
✔ Hỗ trợ đổi trả theo chính sách Shopee
#DoChoiNamCham #DoChoiTriTue #DoChoiMontessori #DoChoiGiaoDuc #DoChoiChoBe #DoChoiPhatTrienTuDuy #DoChoiTreEm #QuaTangChoBe #DoChoiThongMinh #XeHoiNamCham #DoChoiIQ #DoChoi3Tuoi #DoChoiVanDongTinh','[{"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Xe đồ chơi']::text[],'https://shopee.vn/product/67689883/45412128280') on conflict (id) do nothing;
delete from product_images where product_id='45412128280';
insert into product_images(product_id,url,sort_order) values ('45412128280','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdqbrvpi9z613',0);
insert into product_images(product_id,url,sort_order) values ('45412128280','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdprzk481zg75',1);
insert into product_images(product_id,url,sort_order) values ('45412128280','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdq1dobq6tqce',2);
insert into product_images(product_id,url,sort_order) values ('45412128280','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdpzdoh0kchd4',3);
insert into product_images(product_id,url,sort_order) values ('45412128280','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdpv7k4vkzk85',4);
delete from product_variants where product_id='45412128280'; delete from product_models where product_id='45412128280'; delete from product_categories where product_id='45412128280';
insert into product_categories values ('45412128280','271399347') on conflict do nothing;
delete from reviews where product_id='45412128280' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('26145231279','Mô hình Lắp Ghép Kit Card Khủng Long Brachiosaurus, Đồ Chơi Khảo Cổ, Đồ Chơi Giáo Dục','mo-hinh-lap-ghep-kit-card-khung-long-brachiosaurus-do-choi-khao-co-do-choi-giao--31279',137500,null,250000,45,null,0,0.00,0,'{0,0,0,0,0}','','Mô Hình Khủng Long Xương 3D Lắp Ghép Brachiosaurus là món đồ chơi giáo dục thú vị dành cho bé yêu thích thế giới khủng long, khám phá khoa học và lắp ráp mô hình. Sản phẩm có thiết kế dạng bộ xương khủng long màu trắng, các chi tiết được cắt ghép tinh tế giúp bé vừa chơi vừa rèn luyện khả năng quan sát, tư duy logic và sự khéo léo của đôi tay.

Mô hình phù hợp để bé sưu tầm, trang trí góc học tập, bàn làm việc hoặc dùng làm món quà nhỏ cho các bạn nhỏ yêu thích khủng long và khám phá tiền sử.

Điểm nổi bật của sản phẩm:

✅ Thiết kế mô hình xương khủng long Brachiosaurus độc đáo, bắt mắt
✅ Dạng lắp ghép 3D giúp bé tăng khả năng tư duy và tập trung
✅ Màu trắng nổi bật, phù hợp trang trí bàn học, kệ trưng bày
✅ Kích thước nhỏ gọn, dễ cầm nắm và trưng bày
✅ Phù hợp làm quà tặng cho bé yêu thích khủng long, khảo cổ, mô hình lắp ráp

Thông tin sản phẩm:

Tên sản phẩm: Mô hình khủng long xương 3D lắp ghép
Chủ đề: Khủng long Brachiosaurus
Màu sắc: Trắng
Chất liệu: Nhựa
Kích thước : 185mm x 185mm
Phù hợp: Bé yêu thích đồ chơi lắp ghép, mô hình khủng long, đồ chơi giáo dục
Ứng dụng: Vui chơi, học tập, trang trí, sưu tầm

Lưu ý: Sản phẩm gồm các chi tiết lắp ghép nhỏ, nên có người lớn hướng dẫn khi bé chơi.

#mohinhkhunglong #dochoikhunglong #mohinhxuongkhunglong #dochoilapghep #khunglong3d #dochoigiaoduc #dochoistem #triceratops #dochoisangtao #quatangchobe #brachiosaurus','[{"n": "Recommended Age", "v": "7 years +"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi khoa học & Công nghệ']::text[],'https://shopee.vn/product/67689883/26145231279') on conflict (id) do nothing;
delete from product_images where product_id='26145231279';
insert into product_images(product_id,url,sort_order) values ('26145231279','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdhrrw991c2ab',0);
insert into product_images(product_id,url,sort_order) values ('26145231279','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdhyvkz12x9dc',1);
insert into product_images(product_id,url,sort_order) values ('26145231279','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdiez07qlu579',2);
insert into product_images(product_id,url,sort_order) values ('26145231279','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdi6wm93wgc6f',3);
insert into product_images(product_id,url,sort_order) values ('26145231279','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdirn7ottse66',4);
delete from product_variants where product_id='26145231279'; delete from product_models where product_id='26145231279'; delete from product_categories where product_id='26145231279';
insert into product_categories values ('26145231279','274115770') on conflict do nothing;
insert into product_categories values ('26145231279','271399347') on conflict do nothing;
delete from reviews where product_id='26145231279' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('54461540311','Đồ Chơi Gỡ Rối Dây Thun Tư Duy Logic Cho Bé, Trò Chơi Trí Tuệ Rèn Luyện Trí Não IQ','do-choi-go-roi-day-thun-tu-duy-logic-cho-be-tro-choi-tri-tue-ren-luyen-tri-nao-i-40311',128250,null,171000,25,null,2,0.00,0,'{0,0,0,0,0}','','Đồ Chơi Gỡ Rối Dây Thun Tư Duy Logic Cho Bé, Trò Chơi Trí Tuệ Rèn Luyện Trí Não IQ
🧠 Đồ Chơi Gỡ Rối Dây Thun là trò chơi tư duy logic hấp dẫn giúp bé và cả gia đình rèn luyện trí não thông qua những thử thách tháo gỡ dây đầy thú vị. Với thiết kế nhiều màu sắc bắt mắt và cách chơi đơn giản nhưng đòi hỏi khả năng suy luận, sản phẩm là đồ chơi cho bé giúp phát triển IQ, tăng khả năng tập trung và nâng cao kỹ năng giải quyết vấn đề trong quá trình vui chơi.
Không chỉ là một đồ chơi trí tuệ, trò chơi gỡ rối dây thun còn giúp bé rèn luyện tư duy phản biện, khả năng quan sát và phối hợp tay mắt. Bé sẽ từng bước tìm ra cách tháo gỡ các sợi dây đan xen, từ đó hình thành tính kiên nhẫn và khả năng tư duy logic một cách tự nhiên. Đây là lựa chọn phù hợp cho trẻ từ 3 tuổi trở lên, có thể chơi cá nhân hoặc cùng bạn bè, gia đình để tăng tính tương tác.
✨ Đặc điểm nổi bật
✔️ Thiết kế đồ chơi gỡ rối dây thun nhiều màu sắc, thu hút sự chú ý của trẻ.
✔️ Giúp phát triển tư duy logic, khả năng suy luận và giải quyết vấn đề.
✔️ Rèn luyện sự tập trung, tính kiên trì và khả năng ghi nhớ.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, an toàn cho trẻ nhỏ.
✔️ Có thể chơi một mình hoặc thi đấu cùng bạn bè, người thân, mang đến những giờ giải trí bổ ích.
📦 Thông tin sản phẩm
Tên sản phẩm: Rope Unravelling Challenge Game
Loại sản phẩm: Đồ chơi trí tuệ – Gỡ rối dây thun
Kích thước: 24 x 24 x 3 cm
Chất liệu: Nhựa ABS cao cấp
Màu sắc: Nhiều màu
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Hình thức chơi: Cá nhân hoặc nhiều người
🎁 Đồ chơi gỡ rối dây thun là món quà ý nghĩa dành cho bé trai và bé gái trong các dịp sinh nhật, Noel, Quốc tế Thiếu nhi hoặc làm phần thưởng học tập. Đây là đồ chơi giáo dục giúp bé phát triển tư duy, rèn luyện trí não, hạn chế thời gian sử dụng điện thoại và tạo cơ hội gắn kết gia đình thông qua những thử thách vui nhộn. Nếu đang tìm một trò chơi tư duy logic vừa giải trí vừa học hỏi, sản phẩm này sẽ là lựa chọn phù hợp cho bé.
💖 Cam kết từ Shop
Sản phẩm mới, giống hình mô tả.
Kiểm tra kỹ trước khi đóng gói.
Đóng gói cẩn thận, giao hàng nhanh chóng.
Hỗ trợ khách hàng tận tình trước và sau khi mua.
#DoChoiGoRoiDayThun #TroChoiTuDuyLogic #DoChoiTriTue #DoChoiIQ #DoChoiChoBe #DoChoiGiaoDuc #DoChoiThongMinh #RenLuyenTriNao #PuzzleGame #BoardGame #QuaTangChoBe #DoChoi3Tuoi #GameTriTue #GameGiaiDo #DoChoiGiaDinh','[{"n": "Custom Product", "v": "No"}, {"n": "Gender", "v": "Unisex"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Khác']::text[],'https://shopee.vn/product/67689883/54461540311') on conflict (id) do nothing;
delete from product_images where product_id='54461540311';
insert into product_images(product_id,url,sort_order) values ('54461540311','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozd2ykn1jim28',0);
insert into product_images(product_id,url,sort_order) values ('54461540311','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozceqtg34zk35',1);
insert into product_images(product_id,url,sort_order) values ('54461540311','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozcmsit9szkaa',2);
insert into product_images(product_id,url,sort_order) values ('54461540311','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozcnf1lyd4x34',3);
insert into product_images(product_id,url,sort_order) values ('54461540311','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozcy6f99mo238',4);
delete from product_variants where product_id='54461540311'; delete from product_models where product_id='54461540311'; delete from product_categories where product_id='54461540311';
insert into product_categories values ('54461540311','271399347') on conflict do nothing;
insert into product_categories values ('54461540311','271742027') on conflict do nothing;
delete from reviews where product_id='54461540311' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('41130641294','Xe Công Trình Mô Hình Hợp Kim 1:36 – Xe Cứu Hộ, Xe Cẩu, Xe Thang, Xe Tên Lửa Mô Hình Cho Bé','xe-cong-trinh-mo-hinh-hop-kim-1-36-xe-cuu-ho-xe-cau-xe-thang-xe-ten-lua-mo-hinh--41294',187110,null,297000,37,null,0,0.00,0,'{0,0,0,0,0}','','🚜 Xe Công Trình Mô Hình Hợp Kim 1:36 – Xe Cứu Hộ, Xe Cẩu, Xe Thang, Xe Tên Lửa Mô Hình Cho Bé
Xe công trình mô hình hợp kim 1:36 là món đồ chơi xe công trình được nhiều bé trai yêu thích. Với thiết kế mô phỏng chân thực, chất liệu xe hợp kim kết hợp nhựa ABS cao cấp, sản phẩm không chỉ mang đến những giờ chơi thú vị mà còn giúp bé phát triển trí tưởng tượng, khả năng quan sát và tư duy sáng tạo. Đây cũng là mẫu xe mô hình hợp kim thích hợp để sưu tầm hoặc làm quà tặng cho bé.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Tỷ lệ xe mô hình 1:36 chân thực, sắc nét.
✔️ Chất liệu hợp kim kết hợp nhựa ABS cao cấp, bền đẹp.
✔️ Thiết kế mô phỏng xe công trình mô hình giống thực tế.
✔️ Bánh xe lăn mượt, dễ dàng di chuyển trên nhiều bề mặt.
✔️ Sơn màu bền đẹp, hạn chế bong tróc.
✔️ Một số chi tiết có thể chuyển động linh hoạt, tăng trải nghiệm vui chơi.
✔️ An toàn cho bé từ 3 tuổi trở lên.
🚒 CÁC MẪU XE
• Xe cứu hộ Rescue.
• Xe cẩu công trình.
• Xe thang cứu hỏa.
• Xe tên lửa quân sự.
📏 THÔNG TIN SẢN PHẨM
Tỷ lệ: 1:36.
Chất liệu: Hợp kim + nhựa ABS.
Đóng gói: Hộp mica trưng bày đẹp mắt.
Kích thước vừa tay bé cầm chơi.
Độ tuổi phù hợp: Từ 3 tuổi trở lên.
🎁 CÔNG DỤNG
Giúp bé phát triển trí tưởng tượng và khả năng sáng tạo.
Rèn luyện kỹ năng phối hợp tay và mắt.
Thích hợp làm đồ chơi bé trai, quà tặng sinh nhật, quà Noel, quà Quốc tế Thiếu nhi.
Có thể dùng làm xe mô hình kim loại để trưng bày trên bàn học, kệ sách hoặc sưu tầm.
💯 CAM KẾT TỪ SHOP
✅ Hình ảnh sản phẩm chụp thực tế 100%.
✅ Đóng gói cẩn thận, chống sốc khi vận chuyển.
✅ Hỗ trợ đổi trả nếu sản phẩm lỗi từ nhà sản xuất.
✅ Giao hàng nhanh trên toàn quốc.
#xecongtrinh #xemohinh #xehopkim #xecongtrinhmohinh #xemohinhhopkim #xehopkim136 #xecuuho #xecau #xecuuhoa #xethangcuuhoa #dochoixecongtrinh #dochoichobe #dochoibetrai #xedochoi #quatangchobe','[{"n": "Material", "v": "ABS"}, {"n": "Country of Origin", "v": "China"}, {"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Custom Product", "v": "No"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Xe đồ chơi']::text[],'https://shopee.vn/product/67689883/41130641294') on conflict (id) do nothing;
delete from product_images where product_id='41130641294';
insert into product_images(product_id,url,sort_order) values ('41130641294','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwo2zqfa58ldc',0);
insert into product_images(product_id,url,sort_order) values ('41130641294','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwo27lya5fpb9',1);
insert into product_images(product_id,url,sort_order) values ('41130641294','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwo1kw0qoskb1',2);
insert into product_images(product_id,url,sort_order) values ('41130641294','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwo0qr0nzlxb2',3);
insert into product_images(product_id,url,sort_order) values ('41130641294','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwo0qr1bv9k52',4);
delete from product_variants where product_id='41130641294'; delete from product_models where product_id='41130641294'; delete from product_categories where product_id='41130641294';
insert into product_variants(product_id,name,options,images) values ('41130641294','Loại Xe',array['Xe Phóng Tên Lửa','Xe Tải Cần Cẩu','Xe Cứu Hoả','Xe Tải Cứu Hộ']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwo0qr1bv9k52','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwo0qr1924o86','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwo0qr0pe6dd2','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwo0qr1agp487']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('41130641294','Xe Tải Cứu Hộ',187110,null,'');
insert into product_models(product_id,name,price,stock,image) values ('41130641294','Xe Phóng Tên Lửa',187110,null,'');
insert into product_models(product_id,name,price,stock,image) values ('41130641294','Xe Tải Cần Cẩu',187110,null,'');
insert into product_models(product_id,name,price,stock,image) values ('41130641294','Xe Cứu Hoả',187110,null,'');
insert into product_categories values ('41130641294','271083241') on conflict do nothing;
insert into product_categories values ('41130641294','271742074') on conflict do nothing;
delete from reviews where product_id='41130641294' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('50361519770','Xe Mô Tô Địa Hình Kéo Rơ Moóc Chở Trực Thăng Cho Bé, Xe Đồ Chơi Hợp Kim Diecast','xe-mo-to-dia-hinh-keo-ro-mooc-cho-truc-thang-cho-be-xe-do-choi-hop-kim-diecast-19770',141620,null,194000,27,null,1,5.00,1,'{0,0,0,0,1}','','🚁 Xe Mô Tô Địa Hình Kéo Rơ Moóc Chở Trực Thăng là đồ chơi cho bé với thiết kế 2 trong 1 độc đáo, kết hợp giữa xe mô tô địa hình ATV mạnh mẽ và rơ moóc chở trực thăng cứu hộ đầy ấn tượng. Mô hình được thiết kế chân thực, màu sắc nổi bật cùng chất liệu hợp kim Diecast cao cấp giúp bé thỏa sức nhập vai, khám phá thế giới phương tiện giao thông và tạo nên những cuộc phiêu lưu hấp dẫn.
Không chỉ là xe mô tô địa hình kéo rơ moóc chở trực thăng đồ chơi, sản phẩm còn là đồ chơi giáo dục giúp bé phát triển trí tưởng tượng, khả năng quan sát và nhận biết các loại phương tiện giao thông. Trong quá trình vui chơi, bé sẽ rèn luyện kỹ năng phối hợp tay mắt, tăng khả năng sáng tạo và xây dựng nhiều tình huống nhập vai thú vị. Chất liệu hợp kim Diecast kết hợp nhựa ABS bền đẹp, bo tròn các góc cạnh, an toàn cho trẻ từ 3 tuổi trở lên.
✨ Đặc điểm nổi bật
✔️ Thiết kế 2 trong 1 gồm xe mô tô địa hình ATV và rơ moóc kéo theo trực thăng cứu hộ.
✔️ Chất liệu hợp kim Diecast kết hợp nhựa ABS cao cấp, bền đẹp và chắc chắn.
✔️ Bánh xe lớn di chuyển mượt mà, dễ dàng chơi trên nhiều bề mặt.
✔️ Màu sắc nổi bật với nhiều phiên bản: Xanh lá, Đỏ và Xanh ngọc (giao theo phân loại).
✔️ Các góc cạnh được bo tròn, an toàn khi bé vui chơi.
🌟 Lợi ích cho bé
Phát triển trí tưởng tượng và khả năng sáng tạo.
Rèn luyện kỹ năng phối hợp tay mắt và vận động tinh.
Giúp bé nhận biết các phương tiện giao thông và phương tiện cứu hộ.
Khuyến khích bé chơi nhập vai, tăng khả năng giao tiếp.
Hạn chế thời gian sử dụng điện thoại và các thiết bị điện tử.
📦 Thông tin sản phẩm
Tên sản phẩm: Xe ATV kéo rơ moóc chở trực thăng
Kích thước hộp: 24 x 10 x 9 cm
Chất liệu: Hợp kim Diecast + Nhựa ABS
Màu sắc: Xanh lá / Đỏ / Xanh ngọc (giao theo phân loại)
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Công dụng: Đồ chơi mô hình, đồ chơi nhập vai, quà tặng cho bé
🎁 Xe mô tô địa hình kéo rơ moóc chở trực thăng là món quà tuyệt vời dành cho bé trai và bé gái yêu thích xe mô hình, trực thăng và các phương tiện cứu hộ. Sản phẩm phù hợp làm quà sinh nhật, Noel, Quốc tế Thiếu nhi hoặc phần thưởng học tập, giúp bé vừa giải trí vừa phát triển tư duy và kỹ năng sáng tạo thông qua những giờ chơi bổ ích.
💖 Cam kết từ Shop
Sản phẩm mới 100%, đúng mô tả.
Kiểm tra kỹ trước khi đóng gói.
Đóng gói cẩn thận, giao hàng nhanh.
Hỗ trợ đổi trả theo chính sách Shopee.
Tư vấn nhiệt tình trước và sau khi mua hàng.
#XeMoToDiaHinh #XeATV #XeKeoRoMooc #TrucThangDoChoi #XeDoChoiChoBe #MoHinhXe #DoChoiHopKim #DiecastModel #DoChoiChoBe #DoChoiGiaoDuc #DoChoiBeTrai #QuaTangChoBe #DoChoi3Tuoi #XeCuuHo #ShopeeVN','[{"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Xe đồ chơi']::text[],'https://shopee.vn/product/67689883/50361519770') on conflict (id) do nothing;
delete from product_images where product_id='50361519770';
insert into product_images(product_id,url,sort_order) values ('50361519770','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moz32woduvik6e',0);
insert into product_images(product_id,url,sort_order) values ('50361519770','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moz2pqg7bwgc0e',1);
insert into product_images(product_id,url,sort_order) values ('50361519770','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moz26tqc7pc292',2);
insert into product_images(product_id,url,sort_order) values ('50361519770','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moz2lazfha0w9f',3);
insert into product_images(product_id,url,sort_order) values ('50361519770','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moz2ph42jh8hc3',4);
delete from product_variants where product_id='50361519770'; delete from product_models where product_id='50361519770'; delete from product_categories where product_id='50361519770';
insert into product_variants(product_id,name,options,images) values ('50361519770','Màu Sẵc',array['Màu Đỏ','Mau Xanh Lá','Màu Xanh Dương']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moz26yjcymtp80','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moz27xv1knb44d','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozd5rff5n9qde']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('50361519770','Màu Xanh Dương',141620,null,'');
insert into product_models(product_id,name,price,stock,image) values ('50361519770','Màu Đỏ',141620,null,'');
insert into product_models(product_id,name,price,stock,image) values ('50361519770','Mau Xanh Lá',141620,null,'');
insert into product_categories values ('50361519770','271399347') on conflict do nothing;
insert into product_categories values ('50361519770','271742074') on conflict do nothing;
delete from reviews where product_id='50361519770' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('50361519770','thaovycupe',5,'Xe mô tô địa hình kéo rơ mooc màu đỏ rất ngầu con ở nhà rất thích chơi','Màu Đỏ','{}'::text[],'Cảm ơn khách iu đã ủng hộ, chúc bạn luôn vui vẻ và hạnh phúc ạ',to_timestamp(1782461795));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('45410371684','Bộ Cờ 5 Trong 1 Cho Bé Cờ Vua Cá Ngựa Cờ Rắn Backgammon Caro Đồ Chơi Trí Tuệ','bo-co-5-trong-1-cho-be-co-vua-ca-ngua-co-ran-backgammon-caro-do-choi-tri-tue-71684',268640,null,368000,27,null,2,0.00,0,'{0,0,0,0,0}','','🎲 BỘ CỜ 5 TRONG 1 CHO BÉ – CỜ VUA, CÁ NGỰA, CỜ RẮN THANG, CARO & BACKGAMMON MINI
Mang đến cho bé và cả gia đình những giờ phút giải trí bổ ích với bộ cờ 5 trong 1 đa năng. Sản phẩm tích hợp cờ vua, cờ cá ngựa, cờ rắn thang, cờ caro và Backgammon mini trong cùng một bộ, giúp bé vừa chơi vừa học, rèn luyện tư duy logic, khả năng quan sát và kỹ năng giao tiếp. Thiết kế bộ cờ du lịch nhỏ gọn, có tay cầm tiện lợi, dễ dàng mang theo khi đi học, du lịch hay dã ngoại.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Tích hợp 5 trò chơi trí tuệ trong 1 bộ: Cờ vua, cờ caro, cờ cá ngựa, cờ rắn thang và Backgammon mini.
✔️ Thiết kế gấp gọn có tay cầm, thuận tiện mang theo mọi nơi.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, an toàn cho trẻ nhỏ.
✔️ Quân cờ chắc chắn, kích thước vừa tay bé, dễ cầm nắm khi chơi.
✔️ Màu sắc tươi sáng, thu hút trẻ và tăng hứng thú khi học tập thông qua trò chơi.
✔️ Phù hợp cho 2–4 người chơi, giúp bé tăng khả năng tương tác với gia đình và bạn bè.
🧠 LỢI ÍCH CHO BÉ
Phát triển tư duy logic và khả năng lập chiến thuật thông qua cờ vua.
Rèn luyện khả năng tính toán, quan sát và phản xạ.
Tăng sự tập trung, kiên nhẫn và kỹ năng giải quyết vấn đề.
Học cách giao tiếp, hợp tác và tuân thủ luật chơi.
Là đồ chơi trí tuệ, đồ chơi giáo dục, đồ chơi thông minh giúp hạn chế thời gian sử dụng điện thoại, tivi.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Bộ trò chơi du lịch 5 trong 1.
Bao gồm: Cờ vua, cờ caro, cờ cá ngựa, cờ rắn thang, Backgammon.
Chất liệu: Nhựa ABS cao cấp.
Kích thước hộp: 28 x 36 x 5 cm.
Độ tuổi phù hợp: Từ 3 tuổi trở lên.
Số lượng người chơi: 2–4 người.
Kiểu dáng: Gấp gọn có tay cầm.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Bộ cờ đa năng là món quà sinh nhật cho bé, quà Noel, Quốc tế Thiếu nhi hay quà thưởng học tập đầy ý nghĩa. Sản phẩm phù hợp cho cả bé trai và bé gái yêu thích cờ vua, cờ cá ngựa, board game, trò chơi trí tuệ, trò chơi gia đình, bộ cờ mini, bộ cờ du lịch và các đồ chơi phát triển tư duy.
💯 CAM KẾT TỪ SHOP
✅ Sản phẩm mới 100%, đúng hình ảnh và mô tả.
✅ Kiểm tra kỹ trước khi đóng gói.
✅ Đóng gói cẩn thận, giao hàng nhanh.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
#covua #covuachobe #cangua #coranthang #backgammon #caro #bochoico #bocovua #bocodanang #bocodulich #boardgame #boardgamechobe #dochoitritue #dochoigiaoduc #dochoithongminh #trochoitritue #trochoigiadinh #dochoichobe #dochoitreem #quatangchobe #quatangsinhnhat #phattrientuduy #phattrientritue #renluyentuduylogic','[{"n": "Recommended Age", "v": "6 - 14 years"}, {"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Manufacturer/trader address", "v": "Updating"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/45410371684') on conflict (id) do nothing;
delete from product_images where product_id='45410371684';
insert into product_images(product_id,url,sort_order) values ('45410371684','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-momw3m4b3eoe23',0);
insert into product_images(product_id,url,sort_order) values ('45410371684','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo52qd7sly4j66',1);
insert into product_images(product_id,url,sort_order) values ('45410371684','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofung0rd2blc4',2);
insert into product_images(product_id,url,sort_order) values ('45410371684','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo533riojmdk43',3);
insert into product_images(product_id,url,sort_order) values ('45410371684','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo52ryua3oci60',4);
delete from product_variants where product_id='45410371684'; delete from product_models where product_id='45410371684'; delete from product_categories where product_id='45410371684';
insert into product_variants(product_id,name,options,images) values ('45410371684','Loại',array['Bộ Cờ Du Lịch 5 in1']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo78lcmue3nkfb']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('45410371684','Bộ Cờ Du Lịch 5 in1',268640,null,'');
insert into product_categories values ('45410371684','271399347') on conflict do nothing;
insert into product_categories values ('45410371684','271742027') on conflict do nothing;
delete from reviews where product_id='45410371684' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('47663573453','Bộ Sticker Mezastar 18 Thuộc Tính Chống Nước Dán Thẻ Game, Phụ Kiện Trang Trí Thẻ Sưu Tầm','bo-sticker-mezastar-18-thuoc-tinh-chong-nuoc-dan-the-game-phu-kien-trang-tri-the-73453',59400,175000,99000,40,null,7,5.00,2,'{0,0,0,0,2}','','🎮 Bộ Sticker Mezastar 18 Thuộc Tính Chống Nước – Phụ Kiện Dán Thẻ Game Trang Trí Thẻ Sưu Tầm Cao Cấp
Nếu bạn là người yêu thích sưu tầm và chơi thẻ game Mezastar thì Bộ Sticker Mezastar 18 Thuộc Tính là phụ kiện không thể thiếu. Bộ sticker được thiết kế chuẩn kích thước, in sắc nét với đầy đủ 18 thuộc tính giúp người chơi dễ dàng phân loại, nhận biết và trang trí thẻ game Mezastar đẹp mắt, chuyên nghiệp hơn. Chất liệu cán màng chống nước, chống bám bẩn và hạn chế bong tróc, mang lại độ bền cao trong quá trình sử dụng.
Ưu điểm nổi bật:
✅ Bộ gồm đầy đủ 18 sticker thuộc tính Mezastar.
✅ Chất liệu chống nước, chống bám bẩn, bền màu.
✅ Keo dán chắc chắn, bám tốt nhưng dễ bóc, không làm hư bề mặt thẻ.
✅ Hình in sắc nét, màu sắc nổi bật, dễ nhận biết từng thuộc tính.
✅ Giúp phân loại, trang trí và cá nhân hóa bộ thẻ game.
✅ Phù hợp cho người chơi, nhà sưu tầm và những ai yêu thích Mezastar.
Thông tin sản phẩm:
Tên sản phẩm: Bộ Sticker Mezastar 18 Thuộc Tính
Số lượng: 18 sticker thuộc tính
Chất liệu: Giấy in cao cấp cán màng bảo vệ
Công dụng: Dán thẻ game Mezastar, phân loại thuộc tính, trang trí và tăng tính thẩm mỹ
Đối tượng sử dụng: Người chơi và người sưu tầm thẻ Mezastar
📌 Lưu ý: Sản phẩm chỉ bao gồm bộ sticker, không bao gồm thẻ game hoặc các phụ kiện khác.
💖 Cam kết từ shop:
✔️ Sản phẩm đúng như hình ảnh và mô tả.
✔️ Kiểm tra kỹ trước khi đóng gói.
✔️ Đóng gói cẩn thận để hạn chế hư hỏng khi vận chuyển.
✔️ Hỗ trợ khách hàng nhanh chóng khi có vấn đề phát sinh.
#Mezastar #StickerMezastar #Sticker18ThuocTinh #StickerDanThe #StickerTheGame #PhuKienMezastar #TheGameMezastar #StickerChongNuoc #TheSuuTam #GamingCards #DoChoiSuuTam #PhuKienGame #StickerTrangTri #StickerAnime #MezastarVietnam','[{"n": "Recommended Age", "v": "> 14 years"}, {"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/47663573453') on conflict (id) do nothing;
delete from product_images where product_id='47663573453';
insert into product_images(product_id,url,sort_order) values ('47663573453','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqek74ky3xtt0e',0);
insert into product_images(product_id,url,sort_order) values ('47663573453','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdd4l9nzrb629',1);
insert into product_images(product_id,url,sort_order) values ('47663573453','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdd4l9ounta74',2);
insert into product_images(product_id,url,sort_order) values ('47663573453','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdd4l9ow2dq7b',3);
insert into product_images(product_id,url,sort_order) values ('47663573453','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdd4l9qsw74b9',4);
delete from product_variants where product_id='47663573453'; delete from product_models where product_id='47663573453'; delete from product_categories where product_id='47663573453';
insert into product_variants(product_id,name,options,images) values ('47663573453','Số Lượng',array['1 Bộ','Combo 5 Bộ']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpxvlh98p6a57d','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpxw1pw3b02718']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('47663573453','1 Bộ',59400,null,'');
insert into product_models(product_id,name,price,stock,image) values ('47663573453','Combo 5 Bộ',175000,null,'');
insert into product_categories values ('47663573453','khac') on conflict do nothing;
delete from reviews where product_id='47663573453' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('47663573453','ngocmttg',5,'Đẹp và có ích cho mấy đứa mắt mờ mờ như tui. Dán lên cái tag cho dễ xem hệ.','1 Bộ','{}'::text[],'Cám ơn bạn đã ủng hộ nữa ! Từ nay chia tay tình trạng rút lựa thẻ mà để lung tung bên ngoài hộp đựng nữa nhé :)',to_timestamp(1784223514));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('47663573453','ngocmttg',5,'','1 Bộ','{}'::text[],'Cảm ơn khách hàng đã ủng hộ ạ, chúc bạn luôn gặp nhiều may mắn nhé♥️',to_timestamp(1784407157));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('27194949242','Đồ Chơi Đối Kháng Hamster Slam Nam Châm Cho Bé, Trò Chơi Rèn Phản Xạ, Tương Tác Gia Đình','do-choi-doi-khang-hamster-slam-nam-cham-cho-be-tro-choi-ren-phan-xa-tuong-tac-gi-49242',254770,null,349000,27,null,2,0.00,0,'{0,0,0,0,0}','','Đồ Chơi Đối Kháng Hamster Slam Nam Châm Cho Bé, Trò Chơi Rèn Phản Xạ, Tương Tác Gia Đình
🐹 Đồ Chơi Đối Kháng Hamster Slam Magnetic là đồ chơi cho bé mang đến những màn so tài vui nhộn giữa hai người chơi. Với cơ chế nam châm đối kháng độc đáo, bé sẽ điều khiển những chú chuột hamster ngộ nghĩnh để thi đấu, giúp rèn luyện phản xạ, tăng khả năng quan sát và phát triển tư duy chiến thuật trong từng ván chơi. Đây là trò chơi đối kháng vừa giải trí vừa giúp bé học hỏi thông qua những giờ chơi đầy hứng khởi.
Không chỉ là một trò chơi chuột hamster nam châm, sản phẩm còn giúp bé tăng khả năng phối hợp tay mắt, cải thiện sự tập trung và rèn luyện kỹ năng xử lý tình huống. Với thiết kế dễ lắp ráp, nhỏ gọn và chất liệu nhựa ABS cao cấp an toàn, đồ chơi tương tác này phù hợp cho trẻ từ 3 tuổi trở lên, có thể chơi cùng anh chị em, bạn bè hoặc bố mẹ để tăng sự gắn kết trong gia đình.
✨ Đặc điểm nổi bật
✔️ Thiết kế chuột hamster dễ thương, màu sắc nổi bật, thu hút sự yêu thích của trẻ.
✔️ Cơ chế nam châm đối kháng tạo nên những màn thi đấu hấp dẫn, tăng tính cạnh tranh và giải trí.
✔️ Giúp bé rèn phản xạ, nâng cao khả năng quan sát, tập trung và phát triển tư duy chiến thuật.
✔️ Là đồ chơi tương tác dành cho 2 người, khuyến khích bé giao tiếp và vui chơi cùng gia đình, bạn bè.
✔️ Chất liệu nhựa ABS cao cấp, bề mặt nhẵn mịn, bền đẹp và an toàn khi sử dụng.
🎮 Cách chơi
Lắp ráp bàn đấu theo hướng dẫn.
Mỗi người điều khiển một chú hamster.
Sử dụng cần điều khiển để tấn công đối thủ.
Người làm đối phương mất thăng bằng hoặc bị đánh bật trước sẽ giành chiến thắng.
📦 Thông tin sản phẩm
Tên sản phẩm: Hamster Slam Magnetic
Mã sản phẩm: NO.10818
Kích thước: 28 x 28 x 6 cm
Số người chơi: 2 người
Chất liệu: Nhựa ABS cao cấp
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Màu sắc: Như hình
🎁 Hamster Slam Magnetic là món quà tuyệt vời dành cho bé trai và bé gái trong các dịp sinh nhật, Noel, Trung Thu hoặc Quốc tế Thiếu nhi. Đây là đồ chơi rèn phản xạ, đồ chơi phát triển kỹ năng và trò chơi gia đình giúp bé vừa giải trí vừa tăng cường khả năng tư duy, hạn chế thời gian sử dụng thiết bị điện tử và tạo nên những khoảnh khắc vui vẻ bên người thân.
💖 Cam kết từ Shop
Hàng mới 100%.
Kiểm tra kỹ trước khi đóng gói.
Hỗ trợ đổi trả theo chính sách Shopee.
Đóng gói cẩn thận, giao hàng nhanh chóng.
Tư vấn nhiệt tình trước và sau khi mua hàng.
#HamsterSlam #DoChoiDoiKhang #DoChoiChoBe #TroChoiChuotHamster #DoChoiNamCham #RenPhanXa #DoChoiTuongTac #DoChoiGiaDinh #DoChoiTreEm #DoChoiGiaoDuc #DoChoiThongMinh #QuaTangChoBe #DoChoi3Tuoi #BoardGame #ShopeeVN','[{"n": "Recommended Age", "v": "< 2 years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Khác']::text[],'https://shopee.vn/product/67689883/27194949242') on conflict (id) do nothing;
delete from product_images where product_id='27194949242';
insert into product_images(product_id,url,sort_order) values ('27194949242','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy4m0fcskqq84',0);
insert into product_images(product_id,url,sort_order) values ('27194949242','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy4702svg9a10',1);
insert into product_images(product_id,url,sort_order) values ('27194949242','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy46uojfx1r01',2);
insert into product_images(product_id,url,sort_order) values ('27194949242','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy46uogv7kd42',3);
insert into product_images(product_id,url,sort_order) values ('27194949242','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy3y9l7o1e6f0',4);
delete from product_variants where product_id='27194949242'; delete from product_models where product_id='27194949242'; delete from product_categories where product_id='27194949242';
insert into product_categories values ('27194949242','271399347') on conflict do nothing;
insert into product_categories values ('27194949242','271742027') on conflict do nothing;
delete from reviews where product_id='27194949242' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('45810510246','Đồ Chơi Đất Nặn Magic Dough Làm Bánh Kem Cho Bé, Bộ Sáng Tạo Kèm Phụ Kiện An Toàn','do-choi-dat-nan-magic-dough-lam-banh-kem-cho-be-bo-sang-tao-kem-phu-kien-an-toan-10246',286890,null,393000,27,null,5,5.00,1,'{0,0,0,0,1}','','🎂 Đồ Chơi Đất Nặn Magic Dough Làm Bánh Kem Cho Bé là đồ chơi cho bé giúp bé hóa thân thành đầu bếp nhí, tự tay làm những chiếc bánh kem, cupcake, bánh donut và nhiều món tráng miệng đầy màu sắc. Với bộ đất nặn Magic Dough mềm mịn cùng nhiều khuôn tạo hình và phụ kiện đi kèm, bé có thể thỏa sức sáng tạo, phát triển trí tưởng tượng và tạo nên những chiếc bánh độc đáo theo sở thích.
Không chỉ là đồ chơi đất nặn, sản phẩm còn là đồ chơi giáo dục giúp bé rèn luyện kỹ năng vận động tinh, tăng khả năng phối hợp tay mắt và học cách nhận biết màu sắc trong quá trình vui chơi. Chất liệu nhựa ABS kết hợp đất nặn an toàn cho bé, dễ tạo hình và dễ vệ sinh, phù hợp với trẻ từ 3 tuổi trở lên.
✨ Ưu điểm nổi bật
✔️ Đất nặn Magic Dough mềm mịn, dẻo, dễ nặn và dễ tạo hình.
✔️ Bộ làm bánh kem cho bé với nhiều màu sắc tươi sáng, kích thích khả năng sáng tạo.
✔️ Kèm nhiều khuôn bánh, dụng cụ ép, dao, muỗng và phụ kiện trang trí sinh động.
✔️ Giúp bé học phối màu, phát triển tư duy thẩm mỹ và trí tưởng tượng phong phú.
✔️ Có thể chơi một mình hoặc cùng bạn bè, bố mẹ để tăng sự gắn kết gia đình.
🍰 Bé có thể sáng tạo
Làm bánh kem nhiều tầng đẹp mắt.
Tạo hình cupcake, bánh donut và các loại bánh ngọt mini.
Trang trí món ăn theo ý tưởng riêng.
Học phối hợp màu sắc và phát triển khả năng sáng tạo mỗi ngày.
📦 Bộ sản phẩm bao gồm
Bộ đất nặn nhiều màu.
Kệ làm bánh trung tâm.
Dụng cụ ép và tạo hình.
Khuôn bánh, dao, muỗng và phụ kiện trang trí.
Hộp đóng gói đẹp mắt.
📋 Thông tin sản phẩm
Tên sản phẩm: Happy Color Mud Gourmet Bread Rack
Kích thước hộp: 30 x 40 x 9 cm
Chất liệu: Nhựa ABS + đất nặn an toàn
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Màu sắc: Nhiều màu
Công dụng: Đồ chơi sáng tạo, đồ chơi giáo dục kỹ năng cho bé.
🎁 Đồ chơi đất nặn Magic Dough làm bánh kem là món quà lý tưởng dành cho bé trai và bé gái trong các dịp sinh nhật, Noel, Quốc tế Thiếu nhi hoặc làm phần thưởng học tập. Đây là đồ chơi sáng tạo giúp bé phát triển tư duy, rèn luyện sự khéo léo, hạn chế thời gian sử dụng điện thoại và mang đến những giờ vui chơi bổ ích cùng gia đình.
💖 Cam kết từ Shop
Sản phẩm mới 100%.
Kiểm tra kỹ trước khi đóng gói.
Đóng gói cẩn thận, giao hàng nhanh.
Hỗ trợ đổi trả theo chính sách Shopee.
Tư vấn tận tình trước và sau khi mua hàng.
#DoChoiDatNan #MagicDough #DatNanChoBe #DoChoiLamBanhKem #DoChoiChoBe #DoChoiSangTao #DoChoiGiaoDuc #SetLamBanh #DoChoiNhaBep #QuaTangChoBe #DoChoi3Tuoi #DoChoiAnToan #DoChoiTreEm #HappyColorMud #ShopeeVN','[{"n": "Material", "v": "ABS"}, {"n": "Recommended Age", "v": "4 - 6 years"}, {"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Manufacturer/trader address", "v": "Updating"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi mỹ thuật & Thủ công']::text[],'https://shopee.vn/product/67689883/45810510246') on conflict (id) do nothing;
delete from product_images where product_id='45810510246';
insert into product_images(product_id,url,sort_order) values ('45810510246','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-momwl9k6kjyl96',0);
insert into product_images(product_id,url,sort_order) values ('45810510246','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofsqxunaw3wed',1);
insert into product_images(product_id,url,sort_order) values ('45810510246','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7z15xixq1095',2);
insert into product_images(product_id,url,sort_order) values ('45810510246','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7z4dxtuoegfe',3);
insert into product_images(product_id,url,sort_order) values ('45810510246','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7z15xhaq6820',4);
delete from product_variants where product_id='45810510246'; delete from product_models where product_id='45810510246'; delete from product_categories where product_id='45810510246';
insert into product_variants(product_id,name,options,images) values ('45810510246','Loại',array['Đất Nặn Làm Bánh Kem']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo8edv8zj7k116']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('45810510246','Đất Nặn Làm Bánh Kem',286890,null,'');
insert into product_categories values ('45810510246','271399347') on conflict do nothing;
delete from reviews where product_id='45810510246' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('45810510246','vynguyen20082003',5,'','Đất Nặn Làm Bánh Kem','{}'::text[],'Cảm ơn bạn đã tặng 5⭐️💋, chúc bạn luôn vui vẽ ạ',to_timestamp(1781854941));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('49811922081','Bộ Đồ Chơi Làm Tóc Cho Bé Gái, An Toàn Cho Bé, Đồ Chơi Cho Bé, Quà Tặng Cho Bé','bo-do-choi-lam-toc-cho-be-gai-an-toan-cho-be-do-choi-cho-be-qua-tang-cho-be-22081',305870,null,419000,27,null,8,5.00,1,'{0,0,0,0,1}','','BÉ THỎA SỨC HÓA THÂN THÀNH NHÀ TẠO MẪU TÓC CHUYÊN NGHIỆP!
Bộ đồ chơi làm tóc Salon Fashion là món quà tuyệt vời dành cho các bé yêu thích làm đẹp và nhập vai. Với đầy đủ phụ kiện như máy sấy tóc, lược, kéo, kẹp tóc và các dụng cụ tạo kiểu, bé có thể tự tin sáng tạo những kiểu tóc đáng yêu cho búp bê, bạn bè hoặc người thân.
ƯU ĐIỂM NỔI BẬT
✨ Thiết kế màu hồng dễ thương, bắt mắt.
✨ Bộ phụ kiện đa dạng giúp bé chơi lâu không nhàm chán.
✨ Chất liệu nhựa an toàn, bề mặt nhẵn mịn.
✨ Kích thước phù hợp với tay cầm của trẻ nhỏ.
✨ Giúp phát triển trí tưởng tượng và khả năng sáng tạo.
✨ Tăng cường kỹ năng giao tiếp thông qua trò chơi nhập vai.
✨ Thích hợp làm quà tặng sinh nhật, lễ Tết hoặc phần thưởng cho bé.
BỘ SẢN PHẨM BAO GỒM
✔️ 01 Máy sấy tóc đồ chơi
✔️ 01 Lược tạo kiểu
✔️ 01 Bàn chải tóc
✔️ 01 Kéo đồ chơi
✔️ 01 Gương mini
✔️ Kẹp tóc và phụ kiện trang trí
✔️ Các dụng cụ làm tóc khác như hình
THÔNG TIN SẢN PHẨM
Kích Thước: 26x40x7 cm
Tên sản phẩm: Bộ Đồ Chơi Salon Làm Tóc Fashion
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Chất liệu: Nhựa ABS an toàn
Màu sắc: Hồng
Chủ đề: Làm đẹp – Salon tóc
Giới tính phù hợp: Bé gái
LỢI ÍCH KHI CHO BÉ CHƠI
🌟 Rèn luyện kỹ năng vận động tay.
🌟 Kích thích tư duy sáng tạo.
🌟 Phát triển khả năng giao tiếp và nhập vai.
🌟 Giúp bé tự tin hơn khi thể hiện bản thân.
🌟 Hạn chế thời gian sử dụng thiết bị điện tử.
🎁 MÓN QUÀ LÝ TƯỞNG CHO BÉ GÁI YÊU THÍCH LÀM ĐẸP VÀ THỜI TRANG!
📦 Shop cam kết đóng gói cẩn thận, hỗ trợ đổi trả theo quy định của Shopee nếu sản phẩm lỗi từ nhà sản xuất
','[{"n": "Material", "v": "ABS"}, {"n": "Gender", "v": "Girl"}, {"n": "Recommended Age", "v": "4 - 6 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/49811922081') on conflict (id) do nothing;
delete from product_images where product_id='49811922081';
insert into product_images(product_id,url,sort_order) values ('49811922081','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp95d8vx3pced7',0);
insert into product_images(product_id,url,sort_order) values ('49811922081','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp94v3q8g0sva3',1);
insert into product_images(product_id,url,sort_order) values ('49811922081','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp94wes3y4u998',2);
insert into product_images(product_id,url,sort_order) values ('49811922081','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp94y5nx58nj05',3);
insert into product_images(product_id,url,sort_order) values ('49811922081','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp94vbi2f6drd8',4);
delete from product_variants where product_id='49811922081'; delete from product_models where product_id='49811922081'; delete from product_categories where product_id='49811922081';
insert into product_categories values ('49811922081','271399347') on conflict do nothing;
delete from reviews where product_id='49811922081' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49811922081','d*****r',5,'Đồ chơi mẫu mã đẹp, chất lượng và phù hợp cho bé, hình ảnh mang tính chất nhận xu','','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop, chúc bạn luôn thành công và gặp nhiều may mắn',to_timestamp(1788934181));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('45562082736','Đồ Chơi Bắn Bóng Chày Mini Shooting Baseball Cho Bé 3+ Rèn Luyện Phản Xạ Tương Tác','do-choi-ban-bong-chay-mini-shooting-baseball-cho-be-3-ren-luyen-phan-xa-tuong-ta-82736',239440,null,328000,27,null,0,0.00,0,'{0,0,0,0,0}','','SHOOTING BASEBALL MINI – ĐỒ CHƠI GIẢI TRÍ VÀ RÈN LUYỆN KỸ NĂNG CHO BÉ
Mang đến những giờ phút vui chơi đầy hứng khởi cùng trò chơi bắn bóng chày mini. Thiết kế sinh động, màu sắc bắt mắt giúp bé vừa giải trí vừa phát triển khả năng phản xạ, sự tập trung và phối hợp tay mắt hiệu quả.
🌟 Ưu điểm nổi bật
✅ Thiết kế mô phỏng sân bóng chày độc đáo, hấp dẫn.
✅ Cơ chế bắn bóng vui nhộn, dễ chơi cho trẻ nhỏ.
✅ Giúp rèn luyện khả năng phản xạ nhanh và sự khéo léo.
✅ Tăng cường tương tác giữa bố mẹ và bé.
✅ Chất liệu nhựa cao cấp, các góc cạnh bo tròn an toàn.
✅ Kích thước nhỏ gọn, dễ dàng mang theo và cất giữ.
🎯 Lợi ích cho bé
Phát triển tư duy quan sát.
Nâng cao khả năng phối hợp tay và mắt.
Rèn luyện sự tập trung và kiên nhẫn.
Tạo thói quen vui chơi lành mạnh, hạn chế thiết bị điện tử.
Thích hợp chơi cá nhân hoặc cùng bạn bè, gia đình.
📦 Thông tin sản phẩm
Kích Thước: 22x25x6 cm
Chất liệu: Nhựa ABS cao cấp
Màu sắc: Xanh lá phối tím nổi bật
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Công dụng: Giải trí, phát triển kỹ năng vận động và phản xạ
Kiểu chơi: Bắn bóng vào các ô điểm số trên sân
🎁 Phù hợp làm quà tặng
✔ Quà sinh nhật cho bé trai và bé gái
✔ Quà tặng lễ, Tết, Quốc tế Thiếu nhi
✔ Đồ chơi tương tác gia đình cuối tuần
Cam kết từ shop
✅ Sản phẩm mới 100%
✅ Kiểm tra kỹ trước khi đóng gói
✅ Hỗ trợ đổi trả theo chính sách Shopee
✅ Tư vấn nhiệt tình trước và sau khi mua hàng
#dochoibongchay #shootingbaseball #dochoichobe #dochoivantdong #dochoituongtac #dochoiphanxa #dochoitreem #dochoigiaitri #quatangchobe #dochoi3tuoi #baseballtoy #shopeevn','[{"n": "Material", "v": "ABS"}, {"n": "Gender", "v": "Unisex"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Khác']::text[],'https://shopee.vn/product/67689883/45562082736') on conflict (id) do nothing;
delete from product_images where product_id='45562082736';
insert into product_images(product_id,url,sort_order) values ('45562082736','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpceku1w0jrf27',0);
insert into product_images(product_id,url,sort_order) values ('45562082736','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpce3r5r4qv658',1);
insert into product_images(product_id,url,sort_order) values ('45562082736','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpce9emy7mkr8a',2);
insert into product_images(product_id,url,sort_order) values ('45562082736','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpce30qfh2wx65',3);
insert into product_images(product_id,url,sort_order) values ('45562082736','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpce9emy680b94',4);
delete from product_variants where product_id='45562082736'; delete from product_models where product_id='45562082736'; delete from product_categories where product_id='45562082736';
insert into product_categories values ('45562082736','271399347') on conflict do nothing;
delete from reviews where product_id='45562082736' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('57410430038','Bộ Đồ Chơi Nhà Bếp Cho Bé, Bộ Nấu Ăn Mini Cao Cấp Có Nồi, Chảo, Ấm Nước, Quà Tặng Cho Bé','bo-do-choi-nha-bep-cho-be-bo-nau-an-mini-cao-cap-co-noi-chao-am-nuoc-qua-tang-ch-30038',286890,null,393000,27,null,0,0.00,0,'{0,0,0,0,0}','','🍳 BỘ ĐỒ CHƠI NHÀ BẾP MINI CHO BÉ YÊU KHÁM PHÁ
Mang đến cho bé những giờ chơi sáng tạo và vui nhộn với Kitchen Play Set – bộ đồ chơi nấu ăn mô phỏng chân thật giúp bé hóa thân thành đầu bếp nhí đáng yêu. Thiết kế đẹp mắt, màu sắc hiện đại cùng nhiều phụ kiện hấp dẫn giúp bé vừa chơi vừa phát triển kỹ năng.
✨ ƯU ĐIỂM NỔI BẬT
✔️ Thiết kế mô phỏng nhà bếp chân thật
✔️ Chất liệu nhựa an toàn cho trẻ nhỏ
✔️ Các chi tiết có thể mở nắp giống thật
✔️ Giúp bé phát triển trí tưởng tượng & kỹ năng giao tiếp
✔️ Phù hợp chơi cùng bạn bè và gia đình
✔️ Màu sắc sang trọng, hiện đại
🎁 BỘ SẢN PHẨM BAO GỒM
1 nồi áp suất mini
1 nồi có nắp
1 ấm đun nước
1 chảo chiên
Dao đồ chơi
Vá, muỗng, dụng cụ nhà bếp
Rau củ & phụ kiện mô phỏng
👶 LỢI ÍCH CHO BÉ
🌟 Rèn luyện khả năng sáng tạo
🌟 Tăng kỹ năng vận động tay mắt
🌟 Giúp bé học cách nhận biết đồ dùng nhà bếp
🌟 Tạo thói quen gọn gàng và yêu thích nấu ăn
🌟 Hỗ trợ phát triển giao tiếp khi chơi cùng bố mẹ, bạn bè
📌 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Kitchen Play Set
Kích thước hộp : 15cm x 27cm x 16cm
Chất liệu: Nhựa ABS an toàn
Độ tuổi phù hợp: Bé từ 3 tuổi trở lên
Màu sắc: Xám bạc hiện đại
Kiểu đồ chơi: Nhà bếp mô phỏng
💝 CAM KẾT TỪ SHOP
✅ Sản phẩm giống hình 100%
✅ Đóng gói cẩn thận trước khi giao
✅ Hỗ trợ đổi trả nếu lỗi từ nhà sản xuất
✅ Tư vấn nhiệt tình, hỗ trợ nhanh chóng
🔥 HASHTAG SHOPEE
#dochoichobe #dochoinhabep #kitchenplayset #dochoinauan #dochoigiaoduc #dochoitreem #quatangchobe #dochoi3tuoi #dochoimohinh #dochoiminitre em




','[{"n": "Country of Origin", "v": "China"}, {"n": "Gender", "v": "Unisex"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/57410430038') on conflict (id) do nothing;
delete from product_images where product_id='57410430038';
insert into product_images(product_id,url,sort_order) values ('57410430038','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-momegcx9epz4bd',0);
insert into product_images(product_id,url,sort_order) values ('57410430038','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo6liol7jv9k60',1);
insert into product_images(product_id,url,sort_order) values ('57410430038','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofoamo5ndale7',2);
insert into product_images(product_id,url,sort_order) values ('57410430038','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo6lw7s6yya026',3);
insert into product_images(product_id,url,sort_order) values ('57410430038','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo6lphjrx3ph8d',4);
delete from product_variants where product_id='57410430038'; delete from product_models where product_id='57410430038'; delete from product_categories where product_id='57410430038';
insert into product_variants(product_id,name,options,images) values ('57410430038','Loại',array['Đồ Chơi Nhà Bếp']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo74wsqzri8027']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('57410430038','Đồ Chơi Nhà Bếp',286890,null,'');
insert into product_categories values ('57410430038','271399347') on conflict do nothing;
insert into product_categories values ('57410430038','271741912') on conflict do nothing;
delete from reviews where product_id='57410430038' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('45512911187','Bộ Sticker Mezastar 18 Thuộc Tính Dán Thẻ Game Chống Nước Phụ Kiện Trang Trí Thẻ Sưu Tầm','bo-sticker-mezastar-18-thuoc-tinh-dan-the-game-chong-nuoc-phu-kien-trang-tri-the-11187',59400,175000,99000,40,null,12,5.00,5,'{0,0,0,0,5}','','🎮 BỘ STICKER MEZASTAR 18 THUỘC TÍNH – PHỤ KIỆN DÁN THẺ GAME CHỐNG NƯỚC CAO CẤP ✨
Nâng cấp bộ sưu tập của bạn với Bộ Sticker Mezastar 18 Thuộc Tính, phụ kiện không thể thiếu dành cho người chơi và sưu tầm thẻ game Mezastar. Thiết kế chuẩn kích thước, giúp nhận biết thuộc tính nhanh chóng, đồng thời tăng tính thẩm mỹ và độ chuyên nghiệp cho bộ thẻ của bạn.
Đây là sticker dán thẻ Mezastar chất lượng cao, hỗ trợ người chơi phân loại và trang trí thẻ dễ dàng, mang lại trải nghiệm sưu tầm thú vị hơn.
🌟 ƯU ĐIỂM NỔI BẬT
✔️ Chống nước, chống bụi, hạn chế bong tróc trong quá trình sử dụng
✔️ Keo dán chắc chắn nhưng dễ tháo, không làm hư bề mặt thẻ
✔️ In sắc nét, màu sắc rõ ràng từng thuộc tính
✔️ Hiển thị biểu tượng thuộc tính trực quan, dễ nhận biết
✔️ Thiết kế gọn gàng, đẹp mắt, phù hợp sưu tầm lâu dài
✔️ Dễ dàng thay thế khi cần cập nhật hoặc đổi bộ sticker
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Bộ Sticker Thuộc Tính Mezastar
• Số lượng: 18 thuộc tính
• Chất liệu: Giấy in cán màng bảo vệ
• Màu sắc: Nhiều màu theo từng thuộc tính
• Công dụng: Trang trí thẻ, phân loại thuộc tính, tăng thẩm mỹ bộ sưu tập
📌 Lưu ý: Sản phẩm chỉ bao gồm sticker, không kèm thẻ game.
🎯 CÔNG DỤNG SẢN PHẨM
🎮 Trang trí và cá nhân hóa thẻ Mezastar
🎮 Phân biệt thuộc tính nhanh chóng khi chơi
🎮 Tăng tính thẩm mỹ cho bộ sưu tập thẻ
🎮 Hỗ trợ người chơi quản lý thẻ dễ dàng hơn
💖 CAM KẾT TỪ SHOP
✔️ Hình ảnh đúng sản phẩm
✔️ Đóng gói cẩn thận trước khi giao hàng
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi gửi
#Mezastar #StickerMezastar #StickerThuocTinh #StickerTheGame #PhuKienMezastar #StickerDanThe #StickerChongNuoc #StickerChongTray #BoStickerMezastar #TheGameMezastar #DoChoiSuuTam #GamingCards #StickerDep #PhuKienGame #StickerAnime','[{"n": "Recommended Age", "v": "6 - 14 years"}, {"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/45512911187') on conflict (id) do nothing;
delete from product_images where product_id='45512911187';
insert into product_images(product_id,url,sort_order) values ('45512911187','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpxttlbfl0cs06',0);
insert into product_images(product_id,url,sort_order) values ('45512911187','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpxxe9hjl91c33',1);
insert into product_images(product_id,url,sort_order) values ('45512911187','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpxuph7btwcs45',2);
insert into product_images(product_id,url,sort_order) values ('45512911187','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpxte4v2jw97a5',3);
insert into product_images(product_id,url,sort_order) values ('45512911187','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpxu20ua1fr6ef',4);
delete from product_variants where product_id='45512911187'; delete from product_models where product_id='45512911187'; delete from product_categories where product_id='45512911187';
insert into product_variants(product_id,name,options,images) values ('45512911187','Số Lượng',array['1 Bộ','Combo 5 Bộ']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpxvlh98p6a57d','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpxw1pw3b02718']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('45512911187','Combo 5 Bộ',175000,null,'');
insert into product_models(product_id,name,price,stock,image) values ('45512911187','1 Bộ',59400,null,'');
insert into product_categories values ('45512911187','272906965') on conflict do nothing;
insert into product_categories values ('45512911187','271399347') on conflict do nothing;
delete from reviews where product_id='45512911187' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('45512911187','dangnhapdellduoc',5,'Hộp đẹp đóng không bị cấn như hộp nhựa kia','Combo 5 Bộ','{}'::text[],'Chân thành cảm ơn bạn đã ủng hộ shop ạ, chúc bạn luôn gặp nhiều may mắn ♥️',to_timestamp(1783311603));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('45512911187','haodoanvu',5,'','Combo 5 Bộ','{}'::text[],'Chân thành cảm ơn khách iu đã luôn ủng hộ shop, chúc bạn luôn vui vẻ và gặp nhiều may mắn ♥️',to_timestamp(1782727611));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('45512911187','theba712',5,'','Combo 5 Bộ','{}'::text[],'Cảm ơn khách iu đã ủng hộ shop, chúc bạn luôn thành công và gặp nhiều may mắn nhé♥️',to_timestamp(1783873600));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('45512911187','thaonb01',5,'','Combo 5 Bộ','{}'::text[],'Cảm ơn khách iu đã luôn ủng hộ shop, chúc bạn luôn vui vẻ và gặp nhiều may mắn nhé ♥️',to_timestamp(1783496727));
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('45512911187','lunarwolf1992',5,'','1 Bộ','{}'::text[],'Cảm ơn bạn đã ủng hộ, chúc bạn luôn may mắn và thành công ạ♥️',to_timestamp(1784039280));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('50911430177','Đồ Chơi Robot Biến Hình 3in1 Panlos Brick, Lắp Ráp Xe Đua Robot Khủng Long Cho Bé','do-choi-robot-bien-hinh-3in1-panlos-brick-lap-rap-xe-dua-robot-khung-long-cho-be-30177',282510,null,387000,27,null,0,0.00,0,'{0,0,0,0,0}','','🤖 Đồ Chơi Robot Biến Hình 3in1 Panlos Brick Mecha Elite là đồ chơi cho bé kết hợp giữa lắp ráp, sáng tạo và khám phá công nghệ. Chỉ với một bộ sản phẩm, bé có thể biến đổi linh hoạt thành robot chiến binh, xe đua tốc độ hoặc khủng long cơ khí, mang đến nhiều cách chơi thú vị và không gây nhàm chán. Đây là đồ chơi lắp ráp sáng tạo giúp bé vừa giải trí vừa phát triển tư duy trong quá trình tự tay hoàn thiện mô hình.
Không chỉ là đồ chơi robot biến hình, sản phẩm còn là đồ chơi STEM giúp rèn luyện tư duy logic, khả năng quan sát, kỹ năng giải quyết vấn đề và phát triển trí tưởng tượng. Các mảnh ghép được làm từ nhựa ABS cao cấp, lắp ráp chắc chắn, tương thích với nhiều dòng gạch lắp ráp phổ biến, phù hợp cho bé từ 6 tuổi trở lên.
✨ Điểm nổi bật
✔️ Thiết kế Robot Biến Hình 3in1 với ba mô hình gồm robot chiến binh, xe đua và khủng long cơ khí.
✔️ Các khớp chuyển động linh hoạt, dễ dàng tạo nhiều tư thế chiến đấu và trưng bày.
✔️ Màu sắc xanh dương – xanh lá – vàng nổi bật, thiết kế cơ khí hiện đại và mạnh mẽ.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, an toàn cho trẻ nhỏ.
✔️ Tương thích với nhiều loại gạch lắp ráp phổ biến, giúp bé mở rộng khả năng sáng tạo.
🌟 Lợi ích cho bé
Phát triển tư duy không gian và tư duy logic.
Rèn luyện khả năng tập trung, tính kiên nhẫn và sự khéo léo.
Tăng khả năng phối hợp tay mắt và kỹ năng lắp ráp.
Khơi dậy niềm yêu thích khoa học, kỹ thuật và sáng tạo.
Hạn chế thời gian sử dụng điện thoại, máy tính bảng và thiết bị điện tử.
📦 Thông tin sản phẩm
Tên sản phẩm: Mecha Elite Panlos Brick
Mã sản phẩm: 626004B
Dòng sản phẩm: Robot biến hình 3 trong 1
Chủ đề: Robot chiến binh – Xe đua – Khủng long cơ khí
Kích thước hộp: 21 x 33 x 6 cm
Chất liệu: Nhựa ABS cao cấp
Màu sắc: Xanh dương – Xanh lá – Vàng
Độ tuổi phù hợp: Từ 6 tuổi trở lên
Thương hiệu: Panlos Brick
🎁 Đồ chơi Robot Biến Hình 3in1 là món quà tuyệt vời dành cho bé trai yêu thích robot, xe đua và khủng long cơ khí. Đây là đồ chơi giáo dục kết hợp lắp ráp và sáng tạo, giúp bé phát triển tư duy, khám phá thế giới kỹ thuật và mang đến những giờ vui chơi bổ ích. Sản phẩm thích hợp làm quà sinh nhật, Noel, Quốc tế Thiếu nhi hoặc quà thưởng học tập.
💖 Cam kết từ Shop
Sản phẩm mới 100%, đúng mô tả.
Kiểm tra kỹ trước khi giao hàng.
Đóng gói cẩn thận, chống va đập.
Hỗ trợ đổi trả theo chính sách Shopee.
Tư vấn nhiệt tình trước và sau khi mua.
#RobotBienHinh #Robot3in1 #PanlosBrick #MechaElite #DoChoiLapRap #DoChoiSTEM #RobotLapRap #XeDuaLapRap #KhungLongCoKhi #DoChoiChoBe #DoChoiGiaoDuc #DoChoiSangTao #QuaTangChoBe #DoChoi6Tuoi #ShopeeVN','[{"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Manufacturer/trader address", "v": "Updating"}, {"n": "Country of Origin", "v": "China"}, {"n": "Material", "v": "ABS"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/50911430177') on conflict (id) do nothing;
delete from product_images where product_id='50911430177';
insert into product_images(product_id,url,sort_order) values ('50911430177','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mow5p3qczmdrf2',0);
insert into product_images(product_id,url,sort_order) values ('50911430177','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mow5eof4xjb6f9',1);
insert into product_images(product_id,url,sort_order) values ('50911430177','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mow54wohfcwb5a',2);
insert into product_images(product_id,url,sort_order) values ('50911430177','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mow5csvt09aab9',3);
insert into product_images(product_id,url,sort_order) values ('50911430177','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mow5cxgpqolp85',4);
delete from product_variants where product_id='50911430177'; delete from product_models where product_id='50911430177'; delete from product_categories where product_id='50911430177';
insert into product_categories values ('50911430177','271399347') on conflict do nothing;
insert into product_categories values ('50911430177','271741642') on conflict do nothing;
insert into product_categories values ('50911430177','271742074') on conflict do nothing;
delete from reviews where product_id='50911430177' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('49711449667','Đồ Chơi Cho Bé, Bóng Rổ Treo Tường Kèm Lưới Và Bóng Mini, Khung Sắt Sơn Tĩnh Điện Cao Cấp','do-choi-cho-be-bong-ro-treo-tuong-kem-luoi-va-bong-mini-khung-sat-son-tinh-dien--49667',319010,null,437000,27,null,4,0.00,0,'{0,0,0,0,0}','','BỘ VÀNH RỔ BÓNG RỔ TREO TƯỜNG CHO BÉ VÀ GIA ĐÌNH

Mang sân bóng rổ đến ngay ngôi nhà của bạn với bộ vành rổ bóng rổ mini chắc chắn, phù hợp cho trẻ em, thanh thiếu niên và người lớn luyện tập mỗi ngày. Sản phẩm giúp rèn luyện thể chất, tăng khả năng vận động, phản xạ và tạo những giờ phút giải trí thú vị cùng gia đình.

ƯU ĐIỂM NỔI BẬT


✅ Vành rổ bằng thép cứng cáp, chịu lực tốt


✅ Sơn tĩnh điện chống gỉ, bền màu theo thời gian


✅ Lưới bóng rổ 3 màu nổi bật, đẹp mắt


✅ Dễ dàng lắp đặt trên tường hoặc bảng rổ


✅ Phù hợp sân chơi gia đình, trường học, câu lạc bộ


✅ Giúp trẻ tăng cường vận động, hạn chế sử dụng thiết bị điện tử


THÔNG TIN SẢN PHẨM
Kích thước :32x38x7 cm



Loại sản phẩm: Vành rổ bóng rổ


Chất liệu vành: Thép sơn tĩnh điện


Màu sắc: Đỏ


Tỷ lệ: 1:1.36


Phù hợp: Trẻ em, học sinh, thanh thiếu niên, người lớn


Vị trí lắp đặt: Trong nhà và ngoài trời



BỘ SẢN PHẨM BAO GỒM


✔️ 01 Vành rổ bóng rổ


✔️ 01 Lưới bóng rổ 3 màu


✔️ 01 Bóng rổ mini


✔️ 01 Bơm hơi cầm tay


✔️ 04 Ốc vít nở lắp đặt



LỢI ÍCH KHI SỬ DỤNG


🏆 Rèn luyện sức khỏe và thể lực


🏆 Tăng khả năng phối hợp tay – mắt


🏆 Giúp trẻ phát triển kỹ năng vận động


🏆 Tạo không gian vui chơi lành mạnh tại nhà


🏆 Thích hợp làm quà tặng cho bé trai, bé gái yêu thích thể thao



CAM KẾT TỪ SHOP


✅ Hàng mới 100%


✅ Kiểm tra kỹ trước khi đóng gói


✅ Hỗ trợ khách hàng nhanh chóng


✅ Đổi trả theo chính sách Shopee nếu sản phẩm lỗi từ nhà sản xuất



Hashtag 

#bangrobongro #vanhrobongro #robongrotreotuong #bongromini #dochoithethao #dochoichobe #basketballhoop #basketballboard #robongrochobe #thethaotreem #quatangchobe #dochoingoaitroi #vanhrobongrothep #basketballset #robongrogiadinh
','[{"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi vận động & Ngoài trời','Đồ chơi thể thao']::text[],'https://shopee.vn/product/67689883/49711449667') on conflict (id) do nothing;
delete from product_images where product_id='49711449667';
insert into product_images(product_id,url,sort_order) values ('49711449667','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowmfixvolxe2b',0);
insert into product_images(product_id,url,sort_order) values ('49711449667','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowlthkivojyce',1);
insert into product_images(product_id,url,sort_order) values ('49711449667','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowlq2eiquq421',2);
insert into product_images(product_id,url,sort_order) values ('49711449667','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowlzv74ehhp15',3);
insert into product_images(product_id,url,sort_order) values ('49711449667','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowlvg6r69e50f',4);
delete from product_variants where product_id='49711449667'; delete from product_models where product_id='49711449667'; delete from product_categories where product_id='49711449667';
insert into product_categories values ('49711449667','271399347') on conflict do nothing;
insert into product_categories values ('49711449667','271742027') on conflict do nothing;
delete from reviews where product_id='49711449667' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('44131338759','Máy Thổi Bong Bóng Cho Bé, Đồ Chơi Phun Bong Bóng Tự Động Kèm Âm Thanh Vui Nhộn, Quà Tặng Bé Gái Bé','may-thoi-bong-bong-cho-be-do-choi-phun-bong-bong-tu-dong-kem-am-thanh-vui-nhon-q-38759',268640,null,368000,27,null,0,0.00,0,'{0,0,0,0,0}','','BUBBLE MICROPHONE – ĐỒ CHƠI THỔI BONG BÓNG SIÊU HOT CHO BÉ
Mang đến cho bé những giờ phút vui chơi đầy hứng khởi với Máy Thổi Bong Bóng Bubble Microphone thiết kế độc đáo hình loa cầm tay đáng yêu. Chỉ cần bật công tắc, hàng trăm bong bóng xà phòng sẽ được tạo ra liên tục, giúp bé vui chơi ngoài trời, trong các buổi tiệc sinh nhật, dã ngoại hoặc hoạt động gia đình.
✨ Điểm nổi bật của sản phẩm
✔️ Thiết kế hình micro độc đáo, màu sắc nổi bật thu hút bé.
✔️ Tạo bong bóng liên tục với số lượng lớn.
✔️ Chất liệu nhựa ABS an toàn, bền đẹp.
✔️ Cầm nắm dễ dàng, phù hợp với bàn tay trẻ nhỏ.
✔️ Giúp bé vận động, tăng khả năng tương tác và sáng tạo.
✔️ Thích hợp làm quà tặng sinh nhật, lễ Tết cho bé.
THÔNG TIN SẢN PHẨM
Kích thước: 21x21x15 cm
📌 Tên sản phẩm: Máy Thổi Bong Bóng Bubble Microphone
📌 Chất liệu: Nhựa ABS cao cấp
📌 Màu sắc: Hồng phối đỏ dễ thương
📌 Độ tuổi phù hợp: Từ 3 tuổi trở lên
📌 Công dụng: Tạo bong bóng xà phòng vui nhộn cho bé
LỢI ÍCH KHI SỬ DỤNG
🌈 Giúp bé hạn chế thời gian sử dụng điện thoại, TV.
🌈 Tăng cường vận động và hoạt động ngoài trời.
🌈 Tạo không khí vui vẻ trong các buổi tiệc và sự kiện.
🌈 Kích thích trí tưởng tượng và khả năng khám phá của trẻ.
CAM KẾT TỪ SHOP
✅ Sản phẩm mới 100%, kiểm tra kỹ trước khi giao.
✅ Hình ảnh thực tế giống mô tả.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu lỗi từ nhà sản xuất.
✅ Tư vấn nhiệt tình, hỗ trợ khách hàng nhanh chóng.
GỢI Ý TEXT THUMBNAIL SHOPEE THU HÚT
🔥 SIÊU HOT 2026
🫧 THỔI HÀNG TRĂM BONG BÓNG
🎁 QUÀ TẶNG BÉ YÊU
⭐ AN TOÀN – DỄ CHƠI
máy thổi bong bóng, đồ chơi bong bóng cho bé, bubble microphone, súng bong bóng cho bé gái, đồ chơi ngoài trời trẻ em, đồ chơi tạo bong bóng, quà tặng sinh nhật cho bé, đồ chơi vận động trẻ em, máy phun bong bóng tự động, đồ chơi trẻ em cao cấp.





','[{"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi vận động & Ngoài trời','Khác']::text[],'https://shopee.vn/product/67689883/44131338759') on conflict (id) do nothing;
delete from product_images where product_id='44131338759';
insert into product_images(product_id,url,sort_order) values ('44131338759','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxjimhls6bxcb',0);
insert into product_images(product_id,url,sort_order) values ('44131338759','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxiswkgl8um28',1);
insert into product_images(product_id,url,sort_order) values ('44131338759','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxix7ewmtq9ea',2);
insert into product_images(product_id,url,sort_order) values ('44131338759','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxirzdqwuf500',3);
insert into product_images(product_id,url,sort_order) values ('44131338759','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxivcs732tpd0',4);
delete from product_variants where product_id='44131338759'; delete from product_models where product_id='44131338759'; delete from product_categories where product_id='44131338759';
insert into product_categories values ('44131338759','271399347') on conflict do nothing;
insert into product_categories values ('44131338759','271742027') on conflict do nothing;
delete from reviews where product_id='44131338759' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('56012034573','Đồ Chơi Bắn Bi, Đồ Chơi Cho Bé','do-choi-ban-bi-do-choi-cho-be-34573',394200,null,540000,27,null,0,0.00,0,'{0,0,0,0,0}','','MARBLES SHOOTING – TRÒ CHƠI BẮN BI CỰC VUI CHO CẢ GIA ĐÌNH
Mang đến những giờ phút giải trí sôi động cùng gia đình và bạn bè với bộ Marbles Shooting. Người chơi sử dụng cần bắn để phóng các viên bi, hạ gục mục tiêu trên bàn chơi và giành chiến thắng.
Không chỉ là món đồ chơi giải trí, sản phẩm còn giúp bé phát triển khả năng phản xạ, phối hợp tay mắt và kỹ năng tương tác xã hội.
⭐ ĐẶC ĐIỂM NỔI BẬT
✅ Thiết kế màu sắc bắt mắt, thu hút trẻ nhỏ.
✅ Chất liệu nhựa ABS cao cấp, an toàn cho bé.
✅ Hỗ trợ từ 2 - 4 người cùng chơi.
✅ Giúp rèn luyện:
Phản xạ nhanh
Khả năng tập trung
Sự khéo léo của đôi tay
Tư duy quan sát
✅ Phù hợp cho các buổi vui chơi gia đình, sinh nhật, tụ họp bạn bè.
🎮 CÁCH CHƠI
Lắp đặt bàn chơi theo hướng dẫn.
Đặt các mục tiêu lên vị trí quy định.
Mỗi người sử dụng cần bắn để phóng bi.
Người hạ được nhiều mục tiêu nhất sẽ chiến thắng.
📦 THÔNG TIN SẢN PHẨM
Kích Thước: 23x41x9 cm
Chất liệu: Nhựa ABS cao cấp
Màu sắc: Nhiều màu
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Số người chơi: 2 - 4 người
Công dụng: Giải trí, rèn luyện phản xạ và kỹ năng vận động
🎁 MÓN QUÀ Ý NGHĨA CHO BÉ
🎉 Thích hợp làm quà tặng:
Sinh nhật
Quốc tế Thiếu nhi
Noel
Tết
Các dịp khen thưởng bé
Giúp bé hạn chế thời gian sử dụng điện thoại, tăng cường vận động và gắn kết với gia đình.
Góc trái trên:
🔥 HOT TREND 2026
Góc phải trên:
🎯 BẮN BI CỰC VUI
Góc trái dưới:
👨‍👩‍👧‍👦 2-4 NGƯỜI CHƠI
Góc phải dưới:
🎁 QUÀ TẶNG BÉ YÊU
🏆 MARBLES SHOOTING – THỬ THÁCH PHẢN XẠ CỰC ĐỈNH! ','[{"n": "Material", "v": "ABS"}, {"n": "Gender", "v": "Unisex"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Khác']::text[],'https://shopee.vn/product/67689883/56012034573') on conflict (id) do nothing;
delete from product_images where product_id='56012034573';
insert into product_images(product_id,url,sort_order) values ('56012034573','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbzsibczk0cf4',0);
insert into product_images(product_id,url,sort_order) values ('56012034573','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbzik8p4s2452',1);
insert into product_images(product_id,url,sort_order) values ('56012034573','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbzi29nigp906',2);
insert into product_images(product_id,url,sort_order) values ('56012034573','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbzbbr81qfjd9',3);
insert into product_images(product_id,url,sort_order) values ('56012034573','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbzdmu3y4ujf6',4);
delete from product_variants where product_id='56012034573'; delete from product_models where product_id='56012034573'; delete from product_categories where product_id='56012034573';
insert into product_categories values ('56012034573','271399347') on conflict do nothing;
delete from reviews where product_id='56012034573' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('28194989296','Bộ Sưu Tập Trò Chơi Thợ Sửa Ống Nước Cho Bé & Gia Đình ,Phiêu Lưu Vui Nhộn, Phát Triển Tư Duy, Đồ Chơi Cho Bé','bo-suu-tap-tro-choi-tho-sua-ong-nuoc-cho-be-gia-dinh-phieu-luu-vui-nhon-phat-tri-89296',378140,null,518000,27,null,0,0.00,0,'{0,0,0,0,0}','','SUPER MARIO DELUXE – TRÒ CHƠI GIA ĐÌNH HẤP DẪN, GIẢI TRÍ CỰC VUI!
Mang thế giới Mario đầy màu sắc vào những buổi họp mặt gia đình với bộ trò chơi Super Mario Deluxe Board Game. Thiết kế sinh động cùng các nhân vật quen thuộc như Mario, Yoshi và những thử thách thú vị giúp bé và cả gia đình có những giờ phút giải trí vui vẻ bên nhau.
⭐ ƯU ĐIỂM NỔI BẬT
✅ Thiết kế chủ đề Super Mario bắt mắt, sinh động.
✅ Giúp rèn luyện tư duy logic, tính toán và kỹ năng ra quyết định.
✅ Tăng khả năng giao tiếp, tương tác giữa các thành viên trong gia đình.
✅ Chất liệu bền đẹp, màu sắc sắc nét.
✅ Thích hợp chơi cùng bạn bè, gia đình trong các dịp cuối tuần, lễ tết.
🎯 LỢI ÍCH CHO BÉ
Phát triển tư duy chiến lược.
Rèn luyện kỹ năng giao tiếp.
Học cách lập kế hoạch và quản lý tài nguyên trong trò chơi.
Giảm thời gian sử dụng điện thoại, máy tính bảng.
📦 THÔNG TIN SẢN PHẨM
Kích Thước: 31x23x5
Chủ đề: Mario Adventure
Độ tuổi phù hợp: Từ 6 tuổi trở lên
Số lượng người chơi: 2 - 6 người
Chất liệu: Nhựa & giấy cao cấp
Màu sắc: Nhiều màu sắc sinh động
🎁 PHÙ HỢP LÀM QUÀ TẶNG
✔ Quà sinh nhật cho bé trai, bé gái.
✔ Quà tặng lễ Noel, Quốc tế Thiếu nhi.
✔ Quà tặng cho người yêu thích nhân vật Mario.
CAM KẾT TỪ SHOP
💯 Sản phẩm được kiểm tra trước khi đóng gói.
📦 Đóng gói cẩn thận, giao hàng nhanh chóng.
☎️ Hỗ trợ khách hàng nhiệt tình trong suốt quá trình sử dụng.
Hashtag Shopee
#BoardGame #CoTyPhu #TroChoiGiaDinh #DoChoiTreEm #QuaTangChoBe #DoChoiThongMinh #DoChoiGiaiTri','[{"n": "Recommended Age", "v": "6 - 14 years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/28194989296') on conflict (id) do nothing;
delete from product_images where product_id='28194989296';
insert into product_images(product_id,url,sort_order) values ('28194989296','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp6a2rb1zb4d79',0);
insert into product_images(product_id,url,sort_order) values ('28194989296','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp6a22xjwphdab',1);
insert into product_images(product_id,url,sort_order) values ('28194989296','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp6a22y19s7ffb',2);
insert into product_images(product_id,url,sort_order) values ('28194989296','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp6a22z59kazf5',3);
insert into product_images(product_id,url,sort_order) values ('28194989296','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp6a1rvsyjnw77',4);
delete from product_variants where product_id='28194989296'; delete from product_models where product_id='28194989296'; delete from product_categories where product_id='28194989296';
insert into product_categories values ('28194989296','271399347') on conflict do nothing;
delete from reviews where product_id='28194989296' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('56362061467','Bộ Thẻ Học Thông Minh Cho Bé Đồ Chơi Giáo Dục Phát Triển Tư Duy Nhận Biết Sớm','bo-the-hoc-thong-minh-cho-be-do-choi-giao-duc-phat-trien-tu-duy-nhan-biet-som-61467',180310,null,247000,27,null,0,0.00,0,'{0,0,0,0,0}','','COGNITIVE CARDS – BỘ THẺ HỌC THÔNG MINH GIÚP BÉ HỌC MÀ CHƠI, CHƠI MÀ HỌC
Ba mẹ đang tìm kiếm một món đồ chơi vừa giải trí vừa giúp bé phát triển trí tuệ? Bộ Cognitive Cards là lựa chọn hoàn hảo giúp trẻ nhận biết nghề nghiệp, rèn luyện khả năng quan sát, ghi nhớ và tư duy logic thông qua các câu hỏi hình ảnh sinh động.
ƯU ĐIỂM NỔI BẬT
✅ Phát triển tư duy nhận thức và khả năng ghi nhớ
✅ Giúp bé nhận biết các nghề nghiệp quen thuộc trong cuộc sống
✅ Tăng khả năng quan sát và phản xạ nhanh
✅ Thiết kế học mà chơi, kích thích sự tập trung
✅ Chất liệu gỗ và thẻ cứng an toàn cho trẻ nhỏ
✅ Góc cạnh được mài nhẵn, an toàn khi sử dụng
✅ Phù hợp cho bé từ 3 tuổi trở lên
CÁCH CHƠI
🔹 Chọn một thẻ câu hỏi và đặt vào khung trò chơi
🔹 Bé quan sát hình ảnh và đọc câu hỏi
🔹 Dùng que chỉ để chọn đáp án A, B, C hoặc D
🔹 Kiểm tra kết quả và tiếp tục thử thách mới
Trò chơi giúp bé vừa học kiến thức vừa rèn luyện kỹ năng tư duy độc lập.
THÔNG TIN SẢN PHẨM
📦 Kích Thước: 22x26x5 cm
📦 Độ tuổi phù hợp: Từ 3 tuổi trở lên
📦 Bộ sản phẩm gồm:
Khung trò chơi bằng gỗ
Bộ thẻ học chủ đề nghề nghiệp
Que chỉ đáp án
Các phụ kiện đi kèm
📦 Màu sắc: Như hình
LỢI ÍCH CHO BÉ
🌟 Tăng khả năng nhận biết và phân loại thông tin
🌟 Rèn luyện tư duy logic
🌟 Hỗ trợ phát triển ngôn ngữ và vốn từ vựng
🌟 Tăng cường tương tác giữa ba mẹ và bé
🌟 Hạn chế thời gian sử dụng điện thoại, tivi
CAM KẾT
✔️ Hàng mới 100%
✔️ Kiểm tra kỹ trước khi giao
✔️ Đóng gói cẩn thận
✔️ Hỗ trợ khách hàng nhanh chóng
#TheHocThongMinh #CognitiveCards #DoChoiGiaoDuc #DoChoiMontessori #DoChoiTreEm #DoChoiTriTue #DoChoiPhatTrienTuDuy #TheHocChoBe #DoChoi3Tuoi #QuaTangChoBe #HocMaChoiChoiMaHoc #DoChoiGoChoBe #DoChoiThongMinh #MontessoriBaby #DoChoiMamNon','[{"n": "Custom Product", "v": "No"}, {"n": "Gender", "v": "Unisex"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Khác']::text[],'https://shopee.vn/product/67689883/56362061467') on conflict (id) do nothing;
delete from product_images where product_id='56362061467';
insert into product_images(product_id,url,sort_order) values ('56362061467','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpcf14dfnk0272',0);
insert into product_images(product_id,url,sort_order) values ('56362061467','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpceq3f2u60w0a',1);
insert into product_images(product_id,url,sort_order) values ('56362061467','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpcf14d9zvnk6b',2);
insert into product_images(product_id,url,sort_order) values ('56362061467','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpcf1syf15amaf',3);
insert into product_images(product_id,url,sort_order) values ('56362061467','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpceopao9qtp41',4);
delete from product_variants where product_id='56362061467'; delete from product_models where product_id='56362061467'; delete from product_categories where product_id='56362061467';
insert into product_categories values ('56362061467','271399347') on conflict do nothing;
delete from reviews where product_id='56362061467' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('55411433812','Đồ Chơi Xe Lắp Ráp 320 Mảnh KIYLI, Mô Hình Xe Đua Thể Thao Cho Bé 6+, Đồ Chơi STEM','do-choi-xe-lap-rap-320-manh-kiyli-mo-hinh-xe-dua-the-thao-cho-be-6-do-choi-stem-33812',254770,null,349000,27,null,4,0.00,0,'{0,0,0,0,0}','','Đồ Chơi Xe Lắp Ráp 320 Mảnh KIYLI, Mô Hình Xe Đua Thể Thao Cho Bé 6+, Đồ Chơi STEM
🏎️ Đồ Chơi Xe Lắp Ráp 320 Mảnh KIYLI Speed Racing Sport là đồ chơi cho bé giúp trẻ tự tay lắp ráp mô hình xe đua thể thao mạnh mẽ với thiết kế khí động học hiện đại và màu đỏ nổi bật. Bộ lắp ráp gồm 320 mảnh ghép chắc chắn, mang đến trải nghiệm xây dựng hấp dẫn, giúp bé vừa giải trí vừa khám phá thế giới tốc độ và cơ khí.
Không chỉ là mô hình xe đua thể thao cho bé, sản phẩm còn là đồ chơi lắp ráp STEM giúp phát triển tư duy logic, khả năng sáng tạo và kỹ năng giải quyết vấn đề. Trong quá trình lắp ráp, bé sẽ rèn luyện sự tập trung, tính kiên nhẫn, khả năng phối hợp tay mắt và tư duy không gian. Chất liệu nhựa ABS cao cấp bền đẹp, an toàn cho trẻ, phù hợp với bé từ 6 tuổi trở lên.
✨ Đặc điểm nổi bật
✔️ Thiết kế xe đua thể thao hiện đại với màu đỏ phối đen mạnh mẽ, đẹp mắt.
✔️ Bộ đồ chơi xe lắp ráp 320 mảnh mang đến trải nghiệm lắp ghép thú vị và đầy thử thách.
✔️ Các mảnh ghép chắc chắn, độ hoàn thiện cao, dễ thao tác.
✔️ Là đồ chơi giáo dục STEM giúp phát triển tư duy logic, khả năng sáng tạo và kỹ năng giải quyết vấn đề.
✔️ Có thể dùng làm mô hình trưng bày sau khi hoàn thành.
🌟 Lợi ích cho bé
Rèn luyện sự tập trung và tính kiên nhẫn.
Phát triển tư duy logic, tư duy không gian và khả năng sáng tạo.
Nâng cao kỹ năng vận động tinh và phối hợp tay mắt.
Khơi gợi niềm yêu thích xe đua, kỹ thuật và mô hình lắp ráp.
Giúp bé hạn chế thời gian sử dụng điện thoại và các thiết bị điện tử.
📦 Thông tin sản phẩm
Thương hiệu: KIYLI
Dòng sản phẩm: Speed Racing Sport
Mã sản phẩm: H8903A
Kích thước hộp: 18 x 24 x 6 cm
Số lượng chi tiết: 320 PCS
Chủ đề: Xe đua thể thao
Chất liệu: Nhựa ABS cao cấp
Màu sắc: Đỏ phối đen
Độ tuổi phù hợp: Từ 6 tuổi trở lên
🎁 Đồ chơi xe lắp ráp KIYLI 320 mảnh là món quà tuyệt vời dành cho bé trai và bé gái yêu thích xe đua, mô hình xe thể thao và đồ chơi lắp ráp. Sản phẩm phù hợp làm quà sinh nhật, Noel, Quốc tế Thiếu nhi hoặc quà thưởng học tập, giúp bé vừa học vừa chơi, phát triển tư duy và khám phá niềm đam mê kỹ thuật.
💖 Cam kết từ Shop
Sản phẩm mới 100%, đúng mô tả.
Kiểm tra kỹ trước khi đóng gói.
Đóng gói cẩn thận, giao hàng nhanh.
Hỗ trợ đổi trả theo chính sách Shopee.
Tư vấn nhiệt tình trước và sau khi mua hàng.
#XeLapRap #DoChoiXeLapRap #MoHinhXeDua #XeDuaTheThao #DoChoiChoBe #DoChoiLapRap #DoChoiSTEM #DoChoiGiaoDuc #KIYLI #SpeedRacingSport #BuildingBlocks #QuaTangChoBe #DoChoi6Tuoi #XeTheThao #ShopeeVN','[{"n": "Block Type", "v": "Bricks & Parts"}, {"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/55411433812') on conflict (id) do nothing;
delete from product_images where product_id='55411433812';
insert into product_images(product_id,url,sort_order) values ('55411433812','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowoieqdw0lnd0',0);
insert into product_images(product_id,url,sort_order) values ('55411433812','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowo6fu81vya00',1);
insert into product_images(product_id,url,sort_order) values ('55411433812','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowo9nmi8a9s95',2);
insert into product_images(product_id,url,sort_order) values ('55411433812','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowobhbbecxt8b',3);
insert into product_images(product_id,url,sort_order) values ('55411433812','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowo70i810ch89',4);
delete from product_variants where product_id='55411433812'; delete from product_models where product_id='55411433812'; delete from product_categories where product_id='55411433812';
insert into product_categories values ('55411433812','271399347') on conflict do nothing;
insert into product_categories values ('55411433812','271741642') on conflict do nothing;
insert into product_categories values ('55411433812','271742074') on conflict do nothing;
delete from reviews where product_id='55411433812' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('41432502371','Mô Hình Robot Chiến Binh Lắp Ráp, Đồ Chơi Xếp Hình Phát Triển Tư Duy Cho Bé,Đồ Chơi Cho Bé','mo-hinh-robot-chien-binh-lap-rap-do-choi-xep-hinh-phat-trien-tu-duy-cho-be-do-ch-02371',438000,null,584000,25,null,1,0.00,0,'{0,0,0,0,0}','','Khám phá mô hình robot chiến binh lắp ráp với thiết kế mạnh mẽ, nhiều chi tiết cơ khí và phối màu cam – xám nổi bật. Sản phẩm phù hợp cho bé yêu thích đồ chơi xếp hình, mô hình robot và đồ chơi lắp ghép sáng tạo.
Quá trình tự tay hoàn thiện mô hình giúp bé rèn luyện khả năng quan sát, tính kiên nhẫn, tư duy không gian và sự phối hợp linh hoạt giữa tay và mắt.
Đặc điểm nổi bật
Thiết kế robot chiến binh hiện đại, tạo hình mạnh mẽ và bắt mắt
Nhiều chi tiết lắp ghép, mang lại trải nghiệm khám phá thú vị
Mô hình có cánh, vũ khí và các chi tiết mô phỏng cơ khí
Phối màu cam, xám và đen nổi bật, thích hợp trưng bày
Giúp phát triển tư duy logic, khả năng tập trung và sáng tạo
Phù hợp làm quà tặng sinh nhật, quà thưởng hoặc đồ chơi sưu tầm
Thông tin sản phẩm
Kích Thước: 30x46x6 cm
Loại sản phẩm: Mô hình robot lắp ráp
Chủ đề: Robot chiến binh cơ khí
Màu sắc: Cam – xám – đen
Kích thước sau khi lắp theo thông tin trên bao bì: cao khoảng 27cm, ngang khoảng 23,5cm
Công dụng: Lắp ráp, vui chơi, trang trí và trưng bày
Đối tượng phù hợp: Trẻ yêu thích mô hình, xếp hình và đồ chơi sáng tạo
Lưu ý
Sản phẩm có nhiều chi tiết nhỏ, nên sử dụng dưới sự hướng dẫn của người lớn.
Màu sắc thực tế có thể chênh lệch nhẹ do ánh sáng và thiết bị hiển thị.
Kích thước được đo thủ công nên có thể có sai số nhỏ.
Vui lòng kiểm tra kỹ phân loại và thông tin sản phẩm trước khi đặt hàng.
Mô hình robot lắp ráp, đồ chơi xếp hình, robot chiến binh, đồ chơi lắp ghép, mô hình robot cho bé, đồ chơi phát triển tư duy, đồ chơi sáng tạo, mô hình cơ khí, quà tặng cho bé.
Hashtag#morobotlaprap #robotchienbinh #dochoixephinh #dochoilapghep #mohinhrobot #dochoichobe #dochoiphattrientuduy #dochoisangtao #mohinhcokhi #quatangchobe #dochoigiaoduc #lapraprobot','[{"n": "Material", "v": "ABS"}, {"n": "Recommended Age", "v": "6 - 8 Years"}, {"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi Robot']::text[],'https://shopee.vn/product/67689883/41432502371') on conflict (id) do nothing;
delete from product_images where product_id='41432502371';
insert into product_images(product_id,url,sort_order) values ('41432502371','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj6tr3k28ln28',0);
insert into product_images(product_id,url,sort_order) values ('41432502371','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj6m5nwzmdebd',1);
insert into product_images(product_id,url,sort_order) values ('41432502371','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj6kd4h6z28c6',2);
insert into product_images(product_id,url,sort_order) values ('41432502371','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj6kn4jqsy3a5',3);
insert into product_images(product_id,url,sort_order) values ('41432502371','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj6ngbycfm73b',4);
delete from product_variants where product_id='41432502371'; delete from product_models where product_id='41432502371'; delete from product_categories where product_id='41432502371';
insert into product_categories values ('41432502371','271399347') on conflict do nothing;
insert into product_categories values ('41432502371','271741642') on conflict do nothing;
delete from reviews where product_id='41432502371' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('46713548366','Mô hình Lắp Ghép Kit Card Khủng Long Triceratops, Đồ Chơi Khảo Cổ, Đồ Chơi Giáo Dục, Quà Tặng Cho Bé','mo-hinh-lap-ghep-kit-card-khung-long-triceratops-do-choi-khao-co-do-choi-giao-du-48366',137500,null,250000,45,null,0,0.00,0,'{0,0,0,0,0}','','Mô Hình Khủng Long Xương 3D Lắp Ghép Triceratops là món đồ chơi giáo dục thú vị dành cho bé yêu thích thế giới khủng long, khám phá khoa học và lắp ráp mô hình. Sản phẩm có thiết kế dạng bộ xương khủng long màu trắng, các chi tiết được cắt ghép tinh tế giúp bé vừa chơi vừa rèn luyện khả năng quan sát, tư duy logic và sự khéo léo của đôi tay.

Mô hình phù hợp để bé sưu tầm, trang trí góc học tập, bàn làm việc hoặc dùng làm món quà nhỏ cho các bạn nhỏ yêu thích khủng long và khám phá tiền sử.

Điểm nổi bật của sản phẩm:

✅ Thiết kế mô hình xương khủng long Triceratops độc đáo, bắt mắt
✅ Dạng lắp ghép 3D giúp bé tăng khả năng tư duy và tập trung
✅ Màu trắng nổi bật, phù hợp trang trí bàn học, kệ trưng bày
✅ Kích thước nhỏ gọn, dễ cầm nắm và trưng bày
✅ Phù hợp làm quà tặng cho bé yêu thích khủng long, khảo cổ, mô hình lắp ráp

Thông tin sản phẩm:

Tên sản phẩm: Mô hình khủng long xương 3D lắp ghép
Chủ đề: Khủng long Triceratops
Màu sắc: Trắng
Chất liệu: Nhựa
Kích thước : 185mm x 185mm
Phù hợp: Bé yêu thích đồ chơi lắp ghép, mô hình khủng long, đồ chơi giáo dục
Ứng dụng: Vui chơi, học tập, trang trí, sưu tầm

Lưu ý: Sản phẩm gồm các chi tiết lắp ghép nhỏ, nên có người lớn hướng dẫn khi bé chơi.

#mohinhkhunglong #dochoikhunglong #mohinhxuongkhunglong #dochoilapghep #khunglong3d #dochoigiaoduc #dochoistem #triceratops #dochoisangtao #quatangchobe','[{"n": "Recommended Age", "v": "7 years +"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi khoa học & Công nghệ']::text[],'https://shopee.vn/product/67689883/46713548366') on conflict (id) do nothing;
delete from product_images where product_id='46713548366';
insert into product_images(product_id,url,sort_order) values ('46713548366','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqcvykfjxa179a',0);
insert into product_images(product_id,url,sort_order) values ('46713548366','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqcz4q2b33m71c',1);
insert into product_images(product_id,url,sort_order) values ('46713548366','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqcz73bqyossca',2);
insert into product_images(product_id,url,sort_order) values ('46713548366','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqczla55dqf467',3);
insert into product_images(product_id,url,sort_order) values ('46713548366','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqcyclia6vppa1',4);
delete from product_variants where product_id='46713548366'; delete from product_models where product_id='46713548366'; delete from product_categories where product_id='46713548366';
insert into product_categories values ('46713548366','274115770') on conflict do nothing;
insert into product_categories values ('46713548366','271399347') on conflict do nothing;
delete from reviews where product_id='46713548366' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('55662224829','Trò Chơi Cân Bằng Tổ Ong Xếp Khối Cho Bé Đồ Chơi Trí Tuệ Phát Triển Tư Duy Giáo Dục','tro-choi-can-bang-to-ong-xep-khoi-cho-be-do-choi-tri-tue-phat-trien-tu-duy-giao--24829',180310,null,247000,27,null,2,0.00,0,'{0,0,0,0,0}','','🧩 TRÒ CHƠI CÂN BẰNG TỔ ONG XẾP KHỐI – ĐỒ CHƠI TRÍ TUỆ CHO BÉ & GIA ĐÌNH 🎲
Mang đến những phút giây giải trí hấp dẫn với trò chơi cân bằng tổ ong xếp khối, nơi bé phải khéo léo đặt từng khối màu sắc lên giá đỡ sao cho công trình vẫn giữ được sự thăng bằng. Chỉ cần một thao tác sai, toàn bộ mô hình có thể đổ sập, tạo nên sự kịch tính và vui nhộn trong từng lượt chơi.
Đây là đồ chơi trí tuệ cho bé giúp rèn luyện tư duy logic, khả năng quan sát và sự tập trung, đồng thời tăng tương tác giữa các thành viên trong gia đình.
🌟 ƯU ĐIỂM NỔI BẬT
✔️ Thiết kế tổ ong nhiều màu sắc bắt mắt, thu hút trẻ nhỏ
✔️ Rèn luyện tư duy logic và khả năng quan sát
✔️ Phát triển sự khéo léo và phối hợp tay – mắt
✔️ Tăng khả năng tập trung và tính kiên nhẫn
✔️ Phù hợp chơi cá nhân hoặc nhóm nhiều người
✔️ Chất liệu bền đẹp, bo tròn an toàn cho trẻ nhỏ
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Trò chơi cân bằng tổ ong xếp khối
• Kích thước: 18 x 23 x 5 cm
• Chủ đề: Tổ ong nhiều màu sắc
• Độ tuổi phù hợp: Từ 5 tuổi trở lên
• Hình thức chơi: Cá nhân hoặc nhóm
• Công dụng: Giải trí, giáo dục, phát triển tư duy
🎯 LỢI ÍCH CHO BÉ
🧠 Phát triển tư duy logic và khả năng giải quyết vấn đề
🧠 Tăng khả năng tập trung và kiên nhẫn
🧠 Rèn luyện kỹ năng phối hợp tay – mắt
🧠 Khuyến khích giao tiếp và tương tác xã hội
🧠 Hạn chế thời gian sử dụng thiết bị điện tử
🎁 MÓN QUÀ Ý NGHĨA CHO BÉ
Trò chơi cân bằng tổ ong xếp khối là món quà phù hợp cho bé trai và bé gái trong các dịp sinh nhật, lễ Tết, Quốc tế Thiếu nhi hoặc phần thưởng học tập, giúp bé vừa học vừa chơi hiệu quả.
💖 CAM KẾT TỪ SHOP
✔️ Sản phẩm đúng mô tả 100%
✔️ Đóng gói cẩn thận trước khi giao hàng
✔️ Hỗ trợ đổi trả nếu có lỗi từ nhà sản xuất
✔️ Tư vấn nhanh chóng trước & sau khi mua hàng
#TroChoiCanBang #DoChoiCanBang #ToOngXepKhoi #DoChoiTriTue #DoChoiGiaoDuc #DoChoiChoBe #DoChoiPhatTrienTuDuy #GameCanBang #DoChoiGiaDinh #DoChoiTreEm #DoChoi5Tuoi #DoChoiThongMinh #DoChoiSangTao #DoChoiTuDuy #QuaTangChoBe','[{"n": "Recommended Age", "v": "4 - 6 years"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi xếp hình']::text[],'https://shopee.vn/product/67689883/55662224829') on conflict (id) do nothing;
delete from product_images where product_id='55662224829';
insert into product_images(product_id,url,sort_order) values ('55662224829','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mphixcy3pr0s76',0);
insert into product_images(product_id,url,sort_order) values ('55662224829','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mphii173pf653e',1);
insert into product_images(product_id,url,sort_order) values ('55662224829','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mphii170qo0c1e',2);
insert into product_images(product_id,url,sort_order) values ('55662224829','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mphii16xf9qm61',3);
insert into product_images(product_id,url,sort_order) values ('55662224829','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mphii16y5yj32f',4);
delete from product_variants where product_id='55662224829'; delete from product_models where product_id='55662224829'; delete from product_categories where product_id='55662224829';
insert into product_categories values ('55662224829','271399347') on conflict do nothing;
delete from reviews where product_id='55662224829' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('50312005589','Bộ Lắp Ráp Robot Biến Hình, Đồ Chơi Cho Bé, Phát Triển Tư Duy Cho Bé','bo-lap-rap-robot-bien-hinh-do-choi-cho-be-phat-trien-tu-duy-cho-be-05589',348940,null,478000,27,null,0,0.00,0,'{0,0,0,0,0}','','ROBOT BIẾN HÌNH CÔN TRÙNG CƠ KHÍ 6 TRONG 1 – THỎA SỨC SÁNG TẠO, KHÁM PHÁ THẾ GIỚI ROBOT
Bạn đang tìm một món đồ chơi vừa giải trí vừa giúp bé phát triển tư duy? Bộ lắp ráp Robot Biến Hình Côn Trùng Cơ Khí chính là lựa chọn hoàn hảo dành cho bé yêu.
⭐ ĐẶC ĐIỂM NỔI BẬT
✅ Thiết kế mô phỏng côn trùng cơ khí độc đáo, cực ngầu.
✅ Có thể lắp ráp và biến hình thành nhiều mẫu robot khác nhau.
✅ Giúp bé rèn luyện tư duy logic, khả năng sáng tạo và tính kiên nhẫn.
✅ Các chi tiết ghép nối chắc chắn, dễ thao tác.
✅ Chất liệu nhựa ABS cao cấp, bền đẹp, an toàn cho trẻ em.
✅ Màu sắc nổi bật, thu hút sự chú ý của bé.
🎯 LỢI ÍCH CHO BÉ
✔️ Phát triển tư duy STEM.
✔️ Tăng khả năng quan sát và giải quyết vấn đề.
✔️ Rèn luyện kỹ năng vận động tinh cho đôi tay.
✔️ Giảm thời gian tiếp xúc với điện thoại, tivi.
✔️ Kích thích trí tưởng tượng và sáng tạo không giới hạn.
📦 THÔNG TIN SẢN PHẨM
Kích Thước: 26x38x6 cm
Tên sản phẩm: Robot Biến Hình Côn Trùng Cơ Khí
Loại: Đồ chơi lắp ráp sáng tạo
Chất liệu: Nhựa ABS cao cấp
Màu sắc: Nhiều màu nổi bật
Độ tuổi phù hợp: Từ 6 tuổi trở lên
Đóng gói: Hộp quà cao cấp như hình
🎁 PHÙ HỢP LÀM QUÀ TẶNG
🎂 Sinh nhật
🎄 Noel
🎁 Quốc tế Thiếu nhi
🏆 Phần thưởng khuyến khích học tập
CAM KẾT TỪ SHOP
✅ Sản phẩm mới 100%
✅ Đóng gói cẩn thận trước khi giao
✅ Hỗ trợ đổi trả nếu sản phẩm lỗi do nhà sản xuất
✅ Tư vấn nhiệt tình trước và sau khi mua hàng
#RobotBienHinh #DoChoiLapRap #DoChoiSTEM #RobotCoKhi #DoChoiSangTao #DoChoiTreEm #QuaTangChoBe #RobotLapRap #DoChoiGiaoDuc #RobotConTrung #DoChoiThongMinh #DoChoiChoBeTrai #QuaSinhNhatChoBe #Robot6in1 #DoChoiPhatTrienTuDuy','[{"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/50312005589') on conflict (id) do nothing;
delete from product_images where product_id='50312005589';
insert into product_images(product_id,url,sort_order) values ('50312005589','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpawnrwfncw12a',0);
insert into product_images(product_id,url,sort_order) values ('50312005589','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpaw9747zlsfd3',1);
insert into product_images(product_id,url,sort_order) values ('50312005589','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpawdvnvsydpbd',2);
insert into product_images(product_id,url,sort_order) values ('50312005589','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpaw6cl1ov0u5a',3);
insert into product_images(product_id,url,sort_order) values ('50312005589','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpawe18zzkzw1b',4);
delete from product_variants where product_id='50312005589'; delete from product_models where product_id='50312005589'; delete from product_categories where product_id='50312005589';
insert into product_categories values ('50312005589','271399347') on conflict do nothing;
insert into product_categories values ('50312005589','271741642') on conflict do nothing;
delete from reviews where product_id='50312005589' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('42431589874','Bộ Cờ Cá Ngựa 2 Trong 1 Kèm Bắn Bi - Đồ Chơi Trí Tuệ Cho Bé, Đồ Chơi Cho Bé','bo-co-ca-ngua-2-trong-1-kem-ban-bi-do-choi-tri-tue-cho-be-do-choi-cho-be-89874',389090,null,533000,27,null,0,0.00,0,'{0,0,0,0,0}','','BOARD GAME 2 TRONG 1 – VỪA CHƠI CỜ CÁ NGỰA, VỪA BẮN BI GIẢI TRÍ!
Mang đến những giờ phút vui chơi đầy tiếng cười cho cả gia đình với bộ Board Game 2in1 kết hợp giữa cờ cá ngựa truyền thống và trò chơi bắn bi mini hấp dẫn. Thiết kế nhỏ gọn, dễ sử dụng, phù hợp cho trẻ em và người lớn cùng tham gia.
⭐ ƯU ĐIỂM NỔI BẬT
✅ 2 trò chơi trong 1 sản phẩm
Cờ cá ngựa cổ điển 4 màu.
Trò chơi bắn bi mini đầy kịch tính.
✅ Tăng tương tác gia đình
Phù hợp từ 2 – 4 người chơi.
Gắn kết cha mẹ và con cái.
✅ Phát triển tư duy
Rèn luyện khả năng quan sát.
Học cách lập kế hoạch và tư duy chiến thuật.
Tăng khả năng tập trung và phản xạ.
✅ Chất liệu nhựa bền đẹp
Bo tròn các góc an toàn cho trẻ.
Màu sắc tươi sáng, bắt mắt.
✅ Dễ mang theo
Thiết kế nhỏ gọn.
Phù hợp mang đi du lịch, dã ngoại hoặc chơi tại nhà.
📦 BỘ SẢN PHẨM BAO GỒM
01 Bàn cờ Board Game 2in1
Bộ quân cờ 4 màu
Xúc xắc
Bi mini
Phụ kiện trò chơi đầy đủ như hình
📏 THÔNG TIN SẢN PHẨM
Kích Thước: 34x34x8 cm
Tên sản phẩm: Board Game 2in1
Chất liệu: Nhựa cao cấp
Màu sắc: Nhiều màu
Độ tuổi phù hợp: Từ 6 tuổi trở lên
Số lượng người chơi: 2 – 4 người
🎁 PHÙ HỢP LÀM QUÀ TẶNG
✔ Quà sinh nhật cho bé
✔ Quà tặng lễ Tết
✔ Hoạt động vui chơi gia đình cuối tuần
✔ Trò chơi giải trí trong lớp học
CAM KẾT TỪ SHOP
✅ Hàng mới 100%
✅ Kiểm tra kỹ trước khi giao
✅ Đóng gói cẩn thận, chống sốc
✅ Hỗ trợ đổi trả theo chính sách Shopee
🔥 Đặt mua ngay hôm nay để cả gia đình cùng tận hưởng những giờ phút giải trí vui vẻ và bổ ích! 🎲🎉
#BoardGame #CoCaNgua #DoChoiTriTue #TroChoiGiaDinh #BoardGame2in1 #DoChoiTreEm #QuaTangChoBe #DoChoiGiaiTri #GameGiaDinh #DoChoi6Tuoi','[{"n": "Recommended Age", "v": "6 - 14 years"}, {"n": "Manufacturer/trader address", "v": "Updating"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Sở thích & Sưu tầm','Đồ chơi - Giải trí','Đồ chơi thẻ bài & boardgame']::text[],'https://shopee.vn/product/67689883/42431589874') on conflict (id) do nothing;
delete from product_images where product_id='42431589874';
insert into product_images(product_id,url,sort_order) values ('42431589874','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpak3e34b5e40d',0);
insert into product_images(product_id,url,sort_order) values ('42431589874','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpajp5hroob307',1);
insert into product_images(product_id,url,sort_order) values ('42431589874','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpajzez210r08f',2);
insert into product_images(product_id,url,sort_order) values ('42431589874','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpajzjsm7h1ecb',3);
insert into product_images(product_id,url,sort_order) values ('42431589874','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpajodk7gtfvdb',4);
delete from product_variants where product_id='42431589874'; delete from product_models where product_id='42431589874'; delete from product_categories where product_id='42431589874';
insert into product_categories values ('42431589874','271399347') on conflict do nothing;
insert into product_categories values ('42431589874','271742027') on conflict do nothing;
delete from reviews where product_id='42431589874' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('56360414478','Đồ Chơi Bồn Rửa Chén Có Nước Chảy Cho Bé, Bộ Đồ Chơi Nhà Bếp Mini Kèm Rau Củ & Phụ Kiện Cho Bé','do-choi-bon-rua-chen-co-nuoc-chay-cho-be-bo-do-choi-nha-bep-mini-kem-rau-cu-phu--14478',341640,null,468000,27,null,1,0.00,0,'{0,0,0,0,0}','','🌟 BỘ ĐỒ CHƠI BỒN RỬA CHÉN MINI CHO BÉ – VỪA HỌC VỪA CHƠI SIÊU THÚ VỊ 🌟
Giúp bé hóa thân thành đầu bếp nhí với bộ đồ chơi bồn rửa chén có nước chảy cực sinh động. Thiết kế mô phỏng nhà bếp thật giúp bé phát triển tư duy, kỹ năng vận động và tạo thói quen gọn gàng ngay từ nhỏ.
🎁 Thông tin sản phẩm
Tên sản phẩm: Family Wash Basin
Thương hiệu: Xinkele
Độ tuổi phù hợp: Bé từ 3 tuổi trở lên
Kích thước hộp : 18cm x 24cm x 14cm
Chất liệu: Nhựa ABS cao cấp an toàn cho bé
Màu sắc: Hồng phối đỏ dễ thương
Kiểu hoạt động: Có vòi nước tuần hoàn mô phỏng thật
✨ Đặc điểm nổi bật
✔️ Vòi nước có thể chảy như thật giúp bé thích thú khi chơi
✔️ Bộ phụ kiện đa dạng: chén, dĩa, rau củ, dụng cụ ăn uống…
✔️ Giúp bé rèn luyện kỹ năng sống và khả năng sáng tạo
✔️ Thiết kế bo góc an toàn, chất liệu nhựa chắc chắn
✔️ Màu sắc tươi sáng kích thích thị giác của bé
✔️ Phù hợp chơi một mình hoặc cùng bạn bè, gia đình
📦 Bộ sản phẩm bao gồm
1 bồn rửa mini
1 vòi nước
Bộ chén dĩa mô phỏng
Rau củ đồ chơi
Ly, muỗng, nĩa và nhiều phụ kiện khác
🎯 Lợi ích cho bé
🌈 Phát triển trí tưởng tượng và khả năng nhập vai
🌈 Tăng khả năng giao tiếp và tương tác
🌈 Giúp bé học cách sắp xếp và giữ vệ sinh
🌈 Hạn chế thời gian sử dụng điện thoại, TV
💖 Cam kết từ shop
✅ Sản phẩm giống hình 100%
✅ Kiểm tra kỹ trước khi giao
✅ Đóng gói cẩn thận
✅ Hỗ trợ đổi trả nếu lỗi từ nhà sản xuất
#dochoichobe #bonruachen #dochoinhabep #dochoigiaoduc #dochoitreem #dochoimohinh #dochoi3tuoi #shopeevietnam #xinkele #familywashbasin




','[{"n": "Country of Origin", "v": "China"}, {"n": "Material", "v": "ABS"}, {"n": "Gender", "v": "Unisex"}, {"n": "Recommended Age", "v": "3 - 4 years"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/56360414478') on conflict (id) do nothing;
delete from product_images where product_id='56360414478';
insert into product_images(product_id,url,sort_order) values ('56360414478','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mon2hnxmy6mm54',0);
insert into product_images(product_id,url,sort_order) values ('56360414478','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo6kk80eq9dwe8',1);
insert into product_images(product_id,url,sort_order) values ('56360414478','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofplk7uzda9fd',2);
insert into product_images(product_id,url,sort_order) values ('56360414478','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo6ksz76j1fm4b',3);
insert into product_images(product_id,url,sort_order) values ('56360414478','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo6kltkjv6yqbc',4);
delete from product_variants where product_id='56360414478'; delete from product_models where product_id='56360414478'; delete from product_categories where product_id='56360414478';
insert into product_variants(product_id,name,options,images) values ('56360414478','Loại',array['Đồ Chơi Bồn Rửa Chén']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo754odn3sw3db']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('56360414478','Đồ Chơi Bồn Rửa Chén',341640,null,'');
insert into product_categories values ('56360414478','271399347') on conflict do nothing;
insert into product_categories values ('56360414478','271741912') on conflict do nothing;
delete from reviews where product_id='56360414478' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('50212224674','Bộ Thẻ Học Tư Duy Cho Bé Thẻ Nhận Biết Động Vật Đồ Chơi Giáo Dục Phát Triển Trí Não','bo-the-hoc-tu-duy-cho-be-the-nhan-biet-dong-vat-do-choi-giao-duc-phat-trien-tri--24674',180310,null,247000,27,null,0,0.00,0,'{0,0,0,0,0}','','BỘ THẺ HỌC TƯ DUY CHO BÉ – VỪA HỌC VỪA CHƠI HIỆU QUẢ
Giúp bé phát triển khả năng nhận biết, tư duy logic, ghi nhớ hình ảnh và làm quen với chữ cái thông qua bộ thẻ học thông minh nhiều chủ đề hấp dẫn.
✨ Ưu điểm nổi bật
✅ Thiết kế sinh động với hình ảnh động vật nhiều màu sắc
✅ Giúp bé nhận biết sự vật, tăng khả năng quan sát và ghi nhớ
✅ Rèn luyện tư duy logic và phản xạ nhanh
✅ Kết hợp học chữ cái, từ vựng và nhận diện hình ảnh
✅ Chất liệu an toàn, bo góc thân thiện với trẻ nhỏ
✅ Phù hợp cho bé học tại nhà hoặc tương tác cùng bố mẹ
📦 Thông tin sản phẩm
Kích Thước: 22x26x5 cm
Số lượng: 30 thẻ học + phụ kiện đi kèm
Chủ đề: Động vật
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Chất liệu: Gỗ và thẻ in màu
Công dụng: Học tập, phát triển tư duy, tăng khả năng nhận biết
🎯 Lợi ích cho bé
✔ Phát triển tư duy nhận thức
✔ Tăng khả năng tập trung
✔ Rèn luyện trí nhớ hình ảnh
✔ Học từ vựng cơ bản qua trò chơi
✔ Tăng tương tác giữa bố mẹ và bé
#TheHocTuDuy #TheHocChoBe #DoChoiGiaoDuc #DoChoiMontessori #TheHocDongVat #FlashcardChoBe #DoChoiTriTue #HocQuaChoi #DoChoiTreEm #PhatTrienTuDuy #DoChoiGo #QuaTangChoBe','[{"n": "Custom Product", "v": "No"}, {"n": "Gender", "v": "Unisex"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Khác']::text[],'https://shopee.vn/product/67689883/50212224674') on conflict (id) do nothing;
delete from product_images where product_id='50212224674';
insert into product_images(product_id,url,sort_order) values ('50212224674','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mphih57xr0gca6',0);
insert into product_images(product_id,url,sort_order) values ('50212224674','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mphhzatr8irzb2',1);
insert into product_images(product_id,url,sort_order) values ('50212224674','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mphi180kdl34cb',2);
insert into product_images(product_id,url,sort_order) values ('50212224674','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mphi3e5620b1cb',3);
insert into product_images(product_id,url,sort_order) values ('50212224674','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mphhybrv8gek0a',4);
delete from product_variants where product_id='50212224674'; delete from product_models where product_id='50212224674'; delete from product_categories where product_id='50212224674';
insert into product_categories values ('50212224674','271399347') on conflict do nothing;
delete from reviews where product_id='50212224674' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('48658871069','Bộ Đồ Chơi Cát Động Lực Dynamic Sand Pepedo - Kèm Vali Cao Cấp, Khuôn Tạo Hình Bánh Kem & Dụng Cụ Cho Bé Tập Làm Bếp','bo-do-choi-cat-dong-luc-dynamic-sand-pepedo-kem-vali-cao-cap-khuon-tao-hinh-banh-71069',258930,null,411000,37,null,0,0.00,0,'{0,0,0,0,0}','',' KHƠI NGUỒN SÁNG TẠO - KHÔNG LO VẤY BẨN CÙNG CÁT ĐỘNG LỰC DYNAMIC SAND PEPEDO 🌟
Bạn đang tìm kiếm một món quà vừa giúp bé rời xa màn hình điện thoại, vừa phát triển trí tuệ và sự khéo léo? Bộ đồ chơi Cát động lực Dynamic Sand phiên bản Vali chủ đề Tiệc Bánh Ngọt chính là lựa chọn hoàn hảo nhất!
✨ Đặc điểm nổi bật:
Chất liệu an toàn 100%: Cát được xử lý đặc biệt, mềm mịn, không dính tay và không bao giờ bị khô. Đạt tiêu chuẩn an toàn cho trẻ nhỏ.
Thiết kế Vali tiện lợi: Tất cả cát và phụ kiện được đựng trong vali nhựa cứng cáp có quai xách. Bé có thể chơi trực tiếp trong khay và thu dọn gọn gàng sau khi chơi, dễ dàng mang đi du lịch hoặc về quê.
Màu sắc bắt mắt: Cát nhiều màu sắc tươi sáng giúp kích thích thị giác và khả năng nhận biết màu sắc của bé.
Bộ phụ kiện đa dạng: Bao gồm các khuôn tạo hình bánh kem, bánh cupcake, con lăn và xẻng xúc giúp bé thỏa sức sáng tạo thế giới bánh ngọt của riêng mình.
🧠 Lợi ích tuyệt vời cho bé:
Phát triển kỹ năng vận động tinh: Việc nhào nặn, xúc cát giúp đôi tay bé trở nên khéo léo hơn.
Kích thích trí tưởng tượng: Bé đóng vai đầu bếp nhí, tự tay thiết kế những mẫu bánh độc đáo.
Giảm căng thẳng: Cảm giác chạm vào cát mềm mịn giúp bé thư giãn và tăng khả năng tập trung.
📦 Thông tin chi tiết:
Thương hiệu: Pepedo / Dynamic Sand.
Độ tuổi khuyến nghị: Từ 3 tuổi trở lên.
Kích thước hộp : 24cm x 37cm x 7cm
Trọn bộ bao gồm: 1 Vali đựng cao cấp, Cát động lực nhiều màu, Bộ khuôn bánh kem, Dụng cụ lăn/xúc..
🛡️ Cam kết từ Shop:
Sản phẩm giống y hệt hình ảnh và mô tả.
Hàng chính hãng, chất liệu nhựa và cát an toàn tuyệt đối.
Đổi trả miễn phí nếu có lỗi từ nhà sản xuất.
🛒 Bấm "MUA NGAY" để tặng bé những giờ chơi bổ ích và đầy sáng tạo mẹ nhé!
#CatDongLuc #DynamicSand #DoChoiTreEm #DoChoiSangTao #Pepedo #DoChoiDiy #QuaTangChoBe #CatMaThuat #DoChoiGiaoDuc #ValiCatDongLuc','[{"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Manufacturer/trader address", "v": "Updating"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi mỹ thuật & Thủ công']::text[],'https://shopee.vn/product/67689883/48658871069') on conflict (id) do nothing;
delete from product_images where product_id='48658871069';
insert into product_images(product_id,url,sort_order) values ('48658871069','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mohvvo9d2l1rb1',0);
insert into product_images(product_id,url,sort_order) values ('48658871069','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mn2g11dygtmq00',1);
insert into product_images(product_id,url,sort_order) values ('48658871069','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mn2g11e5an0m5a',2);
insert into product_images(product_id,url,sort_order) values ('48658871069','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mn2g11e5x43pbb',3);
delete from product_variants where product_id='48658871069'; delete from product_models where product_id='48658871069'; delete from product_categories where product_id='48658871069';
insert into product_variants(product_id,name,options,images) values ('48658871069','Màu',array['Hồng']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mny24ajy87wk69']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('48658871069','Hồng',258930,null,'');
insert into product_categories values ('48658871069','271083241') on conflict do nothing;
insert into product_categories values ('48658871069','271742027') on conflict do nothing;
delete from reviews where product_id='48658871069' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('47412006568','Bộ Lắp Ráp Xe Kem, Đồ Chơi Xếp Hình Xe Bán Kem Sáng Tạo, Quà Tặng Cho Bé, Đồ Chơi Cho Bé','bo-lap-rap-xe-kem-do-choi-xep-hinh-xe-ban-kem-sang-tao-qua-tang-cho-be-do-choi-c-06568',249660,null,342000,27,null,2,0.00,0,'{0,0,0,0,0}','','Bộ Lắp Ráp Xe Kem Street View Car L33011 – Món quà lý tưởng giúp bé vừa chơi vừa học
Mang đến cho bé những giờ phút vui chơi đầy sáng tạo với bộ lắp ráp xe kem Street View Car. Thiết kế mô phỏng chiếc xe bán kem đầy màu sắc, kết hợp nhiều chi tiết trang trí độc đáo giúp bé thỏa sức khám phá và phát triển tư duy logic thông qua hoạt động lắp ghép.
ƯU ĐIỂM NỔI BẬT
✅ Thiết kế xe kem dễ thương, màu sắc tươi sáng thu hút bé.
✅ Các chi tiết lắp ghép sắc nét, khớp nối chắc chắn.
✅ Giúp phát triển tư duy logic, khả năng quan sát và sáng tạo.
✅ Rèn luyện sự khéo léo của đôi tay và khả năng tập trung.
✅ Chất liệu nhựa an toàn, bề mặt nhẵn mịn.
✅ Phù hợp cho bé trai và bé gái yêu thích lắp ráp mô hình.
✅ Có thể trưng bày làm mô hình trang trí sau khi hoàn thiện.
THÔNG TIN SẢN PHẨM
Kích Thước: 24x35x5 cm
Tên sản phẩm: Street View Car L33011
Chủ đề: Xe bán kem đường phố
Loại: Đồ chơi lắp ráp xếp hình
Chất liệu: Nhựa ABS cao cấp
Màu sắc: Hồng, xanh phối nhiều chi tiết trang trí
Độ tuổi phù hợp: Từ 6 tuổi trở lên
Giới tính: Bé trai và bé gái
LỢI ÍCH KHI CHO BÉ CHƠI ĐỒ CHƠI LẮP RÁP
🌟 Phát triển tư duy logic và khả năng giải quyết vấn đề.
🌟 Tăng khả năng tập trung và tính kiên nhẫn.
🌟 Kích thích trí tưởng tượng và óc sáng tạo.
🌟 Hạn chế thời gian sử dụng điện thoại, tivi.
🌟 Tăng cường tương tác giữa bố mẹ và bé.
CAM KẾT
✔️ Sản phẩm mới 100%
✔️ Kiểm tra kỹ trước khi đóng gói
✔️ Đóng gói cẩn thận, giao hàng nhanh chóng
✔️ Hỗ trợ đổi trả theo chính sách Shope
#XeKemLapRap #StreetViewCar #DoChoiLapRap #DoChoiTreEm #XeBanKem #XepHinhSangTao #DoChoiGiaoDuc #QuaTangChoBe #DoChoiBeTrai #DoChoiBeGai #L33011 #DoChoiThongMinh #MoHinhLapRap #BuildingBlocks','[{"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/47412006568') on conflict (id) do nothing;
delete from product_images where product_id='47412006568';
insert into product_images(product_id,url,sort_order) values ('47412006568','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpawge6h6g3z41',0);
insert into product_images(product_id,url,sort_order) values ('47412006568','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpakyhnn1s7h26',1);
insert into product_images(product_id,url,sort_order) values ('47412006568','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpal2zd633sw16',2);
insert into product_images(product_id,url,sort_order) values ('47412006568','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpakwcfg0utq16',3);
insert into product_images(product_id,url,sort_order) values ('47412006568','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpal133wzu9ub1',4);
delete from product_variants where product_id='47412006568'; delete from product_models where product_id='47412006568'; delete from product_categories where product_id='47412006568';
insert into product_categories values ('47412006568','271399347') on conflict do nothing;
insert into product_categories values ('47412006568','271741642') on conflict do nothing;
insert into product_categories values ('47412006568','271742074') on conflict do nothing;
delete from reviews where product_id='47412006568' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('48610375792','Bộ Đồ Chơi Nhà Bếp Baby Rabbit Kitchen Toys Cho Bé, Đồ Chơi Bếp Mini, Đồ Chơi Nấu Ăn Cho Bé','bo-do-choi-nha-bep-baby-rabbit-kitchen-toys-cho-be-do-choi-bep-mini-do-choi-nau--75792',311710,null,427000,27,null,1,0.00,0,'{0,0,0,0,0}','','🐰 Bộ Đồ Chơi Nhà Bếp Baby Rabbit Kitchen Toys Siêu Dễ Thương Cho Bé
Mang đến cho bé những giờ chơi sáng tạo và bổ ích với bộ đồ chơi nhà bếp Baby Rabbit phong cách dễ thương màu tím pastel. Sản phẩm giúp bé nhập vai đầu bếp nhí, tăng khả năng tư duy và phát triển kỹ năng vận động ngay từ nhỏ.
✨ Ưu điểm nổi bật
✅ Thiết kế thỏ Baby Rabbit cực đáng yêu
✅ Màu sắc pastel nhẹ nhàng, thu hút bé
✅ Bộ phụ kiện đầy đủ: bếp, nồi, chảo, dao, thớt, muỗng, kẹp gắp, chai gia vị…
✅ Giúp bé phát triển tư duy sáng tạo và kỹ năng giao tiếp
✅ Chất liệu nhựa an toàn, bề mặt bo tròn hạn chế trầy xước
✅ Phù hợp cho bé trai và bé gái từ 3 tuổi trở lên
📦 Bộ sản phẩm bao gồm
1 bếp đồ chơi mini
1 nồi có nắp
1 chảo
Dao & thớt đồ chơi
Muỗng, vá, kẹp thức ăn
Chai gia vị mô phỏng
Các phụ kiện nấu ăn khác
🌟 Lợi ích khi cho bé chơi
🎯 Rèn luyện khả năng phối hợp tay mắt
🎯 Phát triển trí tưởng tượng và sáng tạo
🎯 Tăng kỹ năng giao tiếp khi chơi cùng bạn bè hoặc gia đình
🎯 Giúp bé làm quen với hoạt động nấu ăn thực tế
📌 Thông tin sản phẩm
Tên sản phẩm: Baby Rabbit Kitchen Toys
Độ tuổi phù hợp: 3+ tuổi
Chất liệu: Nhựa ABS an toàn
Kích thước hộp : 39cm x 39cm x 7cm
Màu sắc: Tím pastel
Chủ đề: Đồ chơi nấu ăn – nhập vai nhà bếp
🎁 Phù hợp làm quà tặng
Sản phẩm thích hợp làm quà sinh nhật, quà Noel, quà thưởng cho bé yêu với thiết kế đẹp mắt và tính giáo dục cao.
🔥 Cam kết từ shop
✔️ Hàng mới 100%
✔️ Đóng gói cẩn thận
✔️ Hỗ trợ đổi trả nếu lỗi từ nhà sản xuất
✔️ Tư vấn nhanh chóng và nhiệt tình
#dochoichobe #dochoinauan #kitchentoys #babyrabbit #dochoigiaoduc #dochoinhabep #dochoibe3tuoi #dochoibetrai #dochoibegai #quatangchobe




','[{"n": "Country of Origin", "v": "China"}, {"n": "Material", "v": "ABS"}, {"n": "Gender", "v": "Unisex"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/48610375792') on conflict (id) do nothing;
delete from product_images where product_id='48610375792';
insert into product_images(product_id,url,sort_order) values ('48610375792','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mon0wimf8yksc1',0);
insert into product_images(product_id,url,sort_order) values ('48610375792','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofu16y0or9pff',1);
insert into product_images(product_id,url,sort_order) values ('48610375792','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo572askr6ysca',2);
insert into product_images(product_id,url,sort_order) values ('48610375792','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo5786647fuwed',3);
insert into product_images(product_id,url,sort_order) values ('48610375792','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo56y8kjwop207',4);
delete from product_variants where product_id='48610375792'; delete from product_models where product_id='48610375792'; delete from product_categories where product_id='48610375792';
insert into product_variants(product_id,name,options,images) values ('48610375792','Loại',array['Baby Rabbit Kitchen']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7467s5wbnob9']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('48610375792','Baby Rabbit Kitchen',311710,null,'');
insert into product_categories values ('48610375792','271399347') on conflict do nothing;
insert into product_categories values ('48610375792','271741912') on conflict do nothing;
delete from reviews where product_id='48610375792' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('55761906025','Bộ Rút Gỗ Jenga 72 Thanh Trò Chơi Trí Tuệ Cho Bé & Gia Đình Phát Triển Tư Duy Thông Minh','bo-rut-go-jenga-72-thanh-tro-choi-tri-tue-cho-be-gia-dinh-phat-trien-tu-duy-thon-06025',319740,null,438000,27,null,1,5.00,1,'{0,0,0,0,1}','','🪵 BỘ RÚT GỖ JENGA 72 THANH – TRÒ CHƠI TRÍ TUỆ CHO BÉ & GIA ĐÌNH 🎲
Mang đến những phút giây giải trí vui nhộn cùng Bộ rút gỗ Jenga 72 thanh nhiều màu sắc, trò chơi kinh điển giúp bé và cả gia đình vừa chơi vừa phát triển tư duy. Người chơi lần lượt rút từng thanh gỗ và đặt lên đỉnh tháp mà không làm đổ cấu trúc, tạo nên sự kịch tính và hấp dẫn trong từng lượt chơi.
Đây là đồ chơi trí tuệ cho bé giúp rèn luyện khả năng tập trung, tư duy logic và sự khéo léo thông qua hoạt động tương tác vui nhộn.
🌟 ƯU ĐIỂM NỔI BẬT
✔️ Gồm 72 thanh gỗ nhiều màu sắc nổi bật, bắt mắt
✔️ Giúp rèn luyện tư duy logic và khả năng phản xạ
✔️ Tăng khả năng phối hợp tay – mắt cho trẻ
✔️ Phù hợp chơi 1 người hoặc nhiều người
✔️ Tăng sự gắn kết giữa cha mẹ và bé
✔️ Nhỏ gọn, dễ mang theo khi đi du lịch hoặc dã ngoại
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Bộ rút gỗ Jenga nhiều màu
• Số lượng: 72 thanh gỗ
• Kích thước: 8 x 37 x 8 cm
• Chất liệu: Gỗ sơn màu an toàn
• Màu sắc: Đỏ – Xanh dương – Xanh lá – Vàng
• Độ tuổi phù hợp: Từ 3 tuổi trở lên
• Công dụng: Trò chơi trí tuệ, giải trí và giáo dục
🎯 LỢI ÍCH CHO BÉ
🧠 Phát triển tư duy logic và khả năng quan sát
🧠 Rèn luyện sự tập trung và tính kiên nhẫn
🧠 Tăng khả năng phối hợp tay – mắt
🧠 Học cách làm việc nhóm và tương tác xã hội
🧠 Giảm thời gian sử dụng điện thoại, TV
🎮 CÁCH CHƠI
🪵 Xếp 72 thanh gỗ thành tháp cân bằng
🪵 Lần lượt rút từng thanh bất kỳ
🪵 Đặt thanh vừa rút lên đỉnh tháp
🪵 Người làm đổ tháp sẽ thua cuộc
🎁 MÓN QUÀ Ý NGHĨA CHO BÉ
Bộ rút gỗ Jenga 72 thanh là món quà lý tưởng cho bé trai và bé gái trong các dịp sinh nhật, Noel, Quốc tế Thiếu nhi hoặc phần thưởng học tập, giúp bé vừa chơi vừa học hiệu quả.
💖 CAM KẾT TỪ SHOP
✔️ Hàng đúng mô tả 100%
✔️ Đóng gói cẩn thận chống va đập
✔️ Hỗ trợ đổi trả nếu có lỗi từ nhà sản xuất
✔️ Tư vấn nhanh chóng trước & sau khi mua
#Jenga #RutGoJenga #DoChoiTriTue #DoChoiGo #DoChoiChoBe #DoChoiGiaDinh #TroChoiTuDuy #DoChoiGiaoDuc #QuaTangChoBe #DoChoi72Thanh #DoChoiThongMinh #DoChoiPhatTrienTuDuy #GameGiaDinh #DoChoiTreEm #DoChoiAnToan','[{"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Material", "v": "Wood"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi xếp hình']::text[],'https://shopee.vn/product/67689883/55761906025') on conflict (id) do nothing;
delete from product_images where product_id='55761906025';
insert into product_images(product_id,url,sort_order) values ('55761906025','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp93soa9iwwf6f',0);
insert into product_images(product_id,url,sort_order) values ('55761906025','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp93c4nvvmrw68',1);
insert into product_images(product_id,url,sort_order) values ('55761906025','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp93ncdjwmbv31',2);
insert into product_images(product_id,url,sort_order) values ('55761906025','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp93c4nula1bc7',3);
insert into product_images(product_id,url,sort_order) values ('55761906025','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp93e1ao2pzf0b',4);
delete from product_variants where product_id='55761906025'; delete from product_models where product_id='55761906025'; delete from product_categories where product_id='55761906025';
insert into product_variants(product_id,name,options,images) values ('55761906025','Chất Lượng',array['Hộp Mới 100%']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpqoov2puzgrd9']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('55761906025','Hộp Mới 100%',319740,null,'');
insert into product_categories values ('55761906025','271399347') on conflict do nothing;
insert into product_categories values ('55761906025','271742027') on conflict do nothing;
delete from reviews where product_id='55761906025' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('55761906025','thaonguyen.nnt',5,'','','{}'::text[],'Cảm ơn bạn đã tặng 5⭐️, chúc bạn thật nhiều sức khoẻ ạ',to_timestamp(1781618254));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('50462045699','Kệ Chữ A Treo Đồ Chơi Musical Play Gym Cho Bé Sơ Sinh 0-12 Tháng Phát Triển Giác Quan','ke-chu-a-treo-do-choi-musical-play-gym-cho-be-so-sinh-0-12-thang-phat-trien-giac-45699',583270,null,799000,27,null,1,0.00,0,'{0,0,0,0,0}','','KỆ CHỮ A TREO ĐỒ CHƠI MUSICAL PLAY GYM CHO BÉ SƠ SINH
Giúp bé vui chơi, vận động và phát triển giác quan ngay từ những tháng đầu đời. Bộ đồ chơi treo gồm nhiều món đồ đầy màu sắc giúp bé quan sát, cầm nắm và khám phá thế giới xung quanh một cách tự nhiên.
ƯU ĐIỂM NỔI BẬT
✅ Thiết kế nhiều đồ chơi treo sinh động, màu sắc bắt mắt
✅ Kích thích phát triển thị giác, thính giác và khả năng nhận biết
✅ Giúp bé tập với, cầm nắm và phối hợp tay mắt
✅ Khung chữ A chắc chắn, dễ dàng lắp ráp
✅ Chất liệu nhựa an toàn, bề mặt nhẵn mịn
✅ Trọng lượng nhẹ, dễ di chuyển và cất giữ
✅ Phù hợp cho bé sơ sinh và trẻ nhỏ
THÔNG TIN SẢN PHẨM
Kích Thước: 25x51x6 cm
Loại sản phẩm: Kệ chữ A treo đồ chơi cho bé
Chất liệu: Nhựa ABS cao cấp
Màu sắc: Nhiều màu
Độ tuổi phù hợp: 0 - 12 tháng
Công dụng: Phát triển giác quan, vận động sớm cho trẻ
LỢI ÍCH ĐỐI VỚI BÉ
👶 Kích thích khả năng quan sát
👶 Rèn luyện phản xạ tay chân
👶 Hỗ trợ phát triển kỹ năng vận động thô
👶 Tăng khả năng tập trung và nhận biết màu sắc
👶 Tạo không gian vui chơi an toàn cho bé
CAM KẾT SHOP
✔ Hàng mới 100%
✔ Kiểm tra kỹ trước khi đóng gói
✔ Đóng gói cẩn thận chống va đập
✔ Hỗ trợ đổi trả theo chính sách Shopee
#DoChoiSoSinh #PlayGym #KeChuAChoBe #DoChoiTreoNoi #DoChoiPhatTrienGiacQuan #DoChoiChoBe #DoChoiTreEm #DoChoiSoSinh0Thang #MusicalPlayGym #QuaTangChoBe #MeVaBe #DoChoiVanDongSom','[{"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi cho trẻ sơ sinh & trẻ nhỏ','Thảm chơi nhạc']::text[],'https://shopee.vn/product/67689883/50462045699') on conflict (id) do nothing;
delete from product_images where product_id='50462045699';
insert into product_images(product_id,url,sort_order) values ('50462045699','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbys2o58xdu5f',0);
insert into product_images(product_id,url,sort_order) values ('50462045699','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbycryp87biaf',1);
insert into product_images(product_id,url,sort_order) values ('50462045699','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbyrybvswsh1c',2);
insert into product_images(product_id,url,sort_order) values ('50462045699','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbyb1bmocn54d',3);
insert into product_images(product_id,url,sort_order) values ('50462045699','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbyg00rwc26fe',4);
delete from product_variants where product_id='50462045699'; delete from product_models where product_id='50462045699'; delete from product_categories where product_id='50462045699';
insert into product_categories values ('50462045699','271399347') on conflict do nothing;
delete from reviews where product_id='50462045699' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('52161986277','Bộ Lắp Ráp Xe Food Truck Mini Xếp Hình Cho Bé, Xe Bán Đồ Ăn Di Động, Đồ Chơi Sáng Tạo','bo-lap-rap-xe-food-truck-mini-xep-hinh-cho-be-xe-ban-do-an-di-dong-do-choi-sang--86277',249660,null,342000,27,null,1,0.00,0,'{0,0,0,0,0}','','Bộ Lắp Ráp Xe Food Truck Mini Xếp Hình Cho Bé, Xe Bán Đồ Ăn Di Động, Đồ Chơi Sáng Tạo
🚚 Bộ Lắp Ráp Xe Đồ Chơi Xếp Hình Food Truck Mini là đồ chơi cho bé giúp phát triển tư duy logic, khả năng sáng tạo và rèn luyện sự khéo léo thông qua việc tự tay lắp ráp mô hình xe bán đồ ăn di động đầy màu sắc. Với thiết kế mô phỏng chân thực những chiếc xe Food Truck nổi tiếng, bé sẽ được vừa lắp ráp vừa khám phá thế giới ẩm thực thu nhỏ, mang đến những giờ vui chơi bổ ích và đầy hứng khởi.
Không chỉ là bộ lắp ráp xe đồ chơi xếp hình, sản phẩm còn là đồ chơi giáo dục giúp bé phát triển tư duy không gian, khả năng giải quyết vấn đề và tăng tính kiên nhẫn trong từng bước lắp ráp. Các mảnh ghép được làm từ nhựa ABS cao cấp, dễ thao tác, chắc chắn và tương thích với nhiều dòng gạch lắp ráp phổ biến, phù hợp cho bé từ 6 tuổi trở lên.
✨ Đặc điểm nổi bật
✔️ Thiết kế xe Food Truck Mini độc đáo với màu sắc nổi bật, mô phỏng sinh động xe bán đồ ăn lưu động.
✔️ Các chi tiết lắp ráp chắc chắn, dễ ghép nối, giúp bé phát triển tư duy logic và khả năng sáng tạo.
✔️ Là đồ chơi xếp hình giúp rèn luyện kỹ năng phối hợp tay mắt, tăng khả năng tập trung và tính kiên trì.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, an toàn cho trẻ nhỏ.
✔️ Sau khi hoàn thành, mô hình có thể dùng để trưng bày, sưu tầm hoặc kết hợp chơi nhập vai cùng các bộ lắp ráp khác.
📦 Thông tin sản phẩm
Tên sản phẩm: Bộ Lắp Ráp Food Truck Mini
Mã sản phẩm: L3901Z
Chủ đề: Xe bán đồ ăn di động
Kích thước hộp: 24 x 34 x 5 cm
Chất liệu: Nhựa ABS cao cấp
Độ tuổi phù hợp: Từ 6 tuổi trở lên
Màu sắc: Đỏ - Vàng nổi bật
🎁 Bộ lắp ráp xe đồ chơi xếp hình là món quà ý nghĩa dành cho bé trai và bé gái yêu thích mô hình, xe cộ và lắp ráp sáng tạo. Phù hợp làm quà sinh nhật, Noel, Quốc tế Thiếu nhi hoặc phần thưởng học tập. Đây là đồ chơi sáng tạo giúp bé hạn chế thời gian sử dụng điện thoại, phát triển tư duy, khả năng quan sát và mang đến những giờ vui chơi bổ ích cùng gia đình, bạn bè.
💖 Cam kết từ Shop
Hàng mới 100%.
Đóng gói cẩn thận trước khi giao.
Kiểm tra kỹ sản phẩm trước khi xuất kho.
Hỗ trợ đổi trả theo chính sách Shopee.
Tư vấn nhiệt tình trước và sau khi mua hàng.
#BoLapRapXeDoChoi #DoChoiXepHinh #XeFoodTruck #XeBanDoAnDiDong #FoodTruckMini #DoChoiChoBe #DoChoiSangTao #DoChoiGiaoDuc #LapRapMini #XeMoHinh #MiniBlocks #QuaTangChoBe #DoChoi6Tuoi #L3901Z #ShopeeVN','[{"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/52161986277') on conflict (id) do nothing;
delete from product_images where product_id='52161986277';
insert into product_images(product_id,url,sort_order) values ('52161986277','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpakrrmp82ku6f',0);
insert into product_images(product_id,url,sort_order) values ('52161986277','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpakctnzhh57ff',1);
insert into product_images(product_id,url,sort_order) values ('52161986277','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpakh0cclu6la8',2);
insert into product_images(product_id,url,sort_order) values ('52161986277','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpake4scdreq00',3);
insert into product_images(product_id,url,sort_order) values ('52161986277','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpakgiz5ws8xa4',4);
delete from product_variants where product_id='52161986277'; delete from product_models where product_id='52161986277'; delete from product_categories where product_id='52161986277';
insert into product_categories values ('52161986277','271399347') on conflict do nothing;
insert into product_categories values ('52161986277','271741642') on conflict do nothing;
insert into product_categories values ('52161986277','271742074') on conflict do nothing;
delete from reviews where product_id='52161986277' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('54910283518','Bộ Đồ Chơi Đất Nặn Cho Bé Máy Làm Mì Làm Kem Hình Chú Bò Kèm Khuôn Phụ Kiện Đồ Chơi DIY','bo-do-choi-dat-nan-cho-be-may-lam-mi-lam-kem-hinh-chu-bo-kem-khuon-phu-kien-do-c-83518',252580,null,346000,27,null,7,5.00,1,'{0,0,0,0,1}','','🐄 BỘ ĐỒ CHƠI ĐẤT NẶN CHO BÉ – MÁY LÀM MÌ LÀM KEM HÌNH CHÚ BÒ DREAM CLAY DIY KÈM KHUÔN & PHỤ KIỆN 🍦🍜
Mang đến cho bé những giờ phút vui chơi đầy sáng tạo với Bộ Đồ Chơi Đất Nặn Cho Bé hình chú bò ngộ nghĩnh. Bộ máy làm mì làm kem Dream Clay DIY được thiết kế đáng yêu cùng nhiều khuôn tạo hình và phụ kiện, giúp bé tự tay làm mì, kem, bánh ngọt và vô số mô hình ngộ nghĩnh theo trí tưởng tượng.
Đây là đồ chơi giáo dục giúp bé phát triển tư duy sáng tạo, rèn luyện kỹ năng vận động tinh và khả năng phối hợp tay – mắt thông qua hoạt động nặn và tạo hình.
🌟 ƯU ĐIỂM NỔI BẬT
✔️ Thiết kế chú bò sữa đáng yêu, màu sắc bắt mắt, thu hút bé.
✔️ Tay quay dễ sử dụng giúp tạo sợi mì, kem và nhiều hình dạng thú vị.
✔️ Đi kèm nhiều khuôn thay thế để tạo mì sợi, sợi dẹt, kem, bánh và các hình khối ngộ nghĩnh.
✔️ Tích hợp con dấu dưới chân chú bò giúp bé in họa tiết lên đất nặn.
✔️ Kèm nhiều phụ kiện hỗ trợ bé sáng tạo không giới hạn.
✔️ Chất liệu nhựa ABS cao cấp, an toàn và bền đẹp.
✔️ Phù hợp cho cả bé trai và bé gái từ 3 tuổi trở lên.
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Máy Làm Đất Nặn Hình Chú Bò Dream Clay DIY
• Thương hiệu: Dream Clay DIY
• Kích thước hộp: 17 x 25 x 11 cm
• Chất liệu: Nhựa ABS cao cấp
• Độ tuổi phù hợp: Từ 3 tuổi trở lên
• Bộ sản phẩm gồm:
01 Máy nặn hình chú bò
Bộ khuôn thay thế
Các phụ kiện đi kèm (như hình)
🎯 LỢI ÍCH KHI BÉ VUI CHƠI
🧠 Phát triển trí tưởng tượng và khả năng sáng tạo.
🧠 Rèn luyện sự khéo léo của đôi tay và kỹ năng vận động tinh.
🧠 Tăng khả năng phối hợp tay – mắt.
🧠 Giúp bé nhận biết màu sắc, hình khối và kích thích tư duy.
🧠 Hạn chế thời gian sử dụng điện thoại, tivi và các thiết bị điện tử.
🧠 Tạo cơ hội để bố mẹ cùng bé vui chơi và gắn kết.
🎁 MÓN QUÀ Ý NGHĨA DÀNH CHO BÉ
Bộ đồ chơi đất nặn cho bé là món quà tuyệt vời dành cho các bé yêu thích sáng tạo và thủ công. Phù hợp làm quà sinh nhật, Noel, Quốc tế Thiếu nhi, quà thưởng học tập hoặc các dịp đặc biệt.
💖 CAM KẾT TỪ SHOP
✅ Hàng mới 100%, đúng hình mô tả.
✅ Đóng gói cẩn thận trước khi giao hàng.
✅ Hỗ trợ đổi trả nếu sản phẩm lỗi từ nhà sản xuất.
✅ Tư vấn nhiệt tình trước và sau khi mua.
📌 LƯU Ý
• Nên cho bé chơi dưới sự giám sát của người lớn.
• Sau khi chơi xong, bảo quản đất nặn trong hộp kín để tránh bị khô.
#DatNanChoBe #DoChoiDatNan #MayLamDatNan #MayLamMi #MayLamKem #DreamClay #DoChoiChoBe #DoChoiTreEm #DoChoiSangTao #DoChoiDIY #DoChoiGiaoDuc #DoChoiThuCong #DoChoiBeTrai #DoChoiBeGai #QuaTangChoBe #QuaTangSinhNhat #DoChoi3Tuoi #DoChoiPhatTrienTriTue #NhuaABSCaoCap #DoChoiAnToan','[{"n": "Material", "v": "ABS, Clay"}, {"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi mỹ thuật & Thủ công']::text[],'https://shopee.vn/product/67689883/54910283518') on conflict (id) do nothing;
delete from product_images where product_id='54910283518';
insert into product_images(product_id,url,sort_order) values ('54910283518','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mon1xoq4s8w296',0);
insert into product_images(product_id,url,sort_order) values ('54910283518','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofqdsnmg1zfd3',1);
insert into product_images(product_id,url,sort_order) values ('54910283518','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo3kvfi0hybmab',2);
insert into product_images(product_id,url,sort_order) values ('54910283518','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo3kvfhwmw3q36',3);
insert into product_images(product_id,url,sort_order) values ('54910283518','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo3kuhufm684d1',4);
delete from product_variants where product_id='54910283518'; delete from product_models where product_id='54910283518'; delete from product_categories where product_id='54910283518';
insert into product_variants(product_id,name,options,images) values ('54910283518','Loại',array['Đồ Chơi Đất Nặn']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7b6mlh46q06b']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('54910283518','Đồ Chơi Đất Nặn',252580,null,'');
insert into product_categories values ('54910283518','271399347') on conflict do nothing;
delete from reviews where product_id='54910283518' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('54910283518','uyenle989',5,'Sản phẩm tốt, giao đúng mẫu. Đóng gói sản phẩm kỹ . Màu đẹp. Hài lòng','Đồ Chơi Đất Nặn','{}'::text[],'Chân thành cảm ơn bạn đã tin tưởng ủng hộ shop , chúc bạn luôn vui vẻ và gặp nhiều may mắn',to_timestamp(1786609197));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('54212099297','Bộ Vẽ 3D Cho Bé - Bảng Vẽ Phát Sáng Kèm Kính 3D,Đồ Chơi Cho Bé','bo-ve-3d-cho-be-bang-ve-phat-sang-kem-kinh-3d-do-choi-cho-be-99297',268640,null,368000,27,null,0,0.00,0,'{0,0,0,0,0}','','KHƠI DẬY TRÍ TƯỞNG TƯỢNG - VẼ TRANH 3D KỲ DIỆU CHO BÉ! 🌟
Bộ Magic Drawing Board 3D là món đồ chơi giáo dục sáng tạo giúp bé tự tay vẽ nên những hình ảnh phát sáng sống động như thật. Với hiệu ứng 3D độc đáo cùng kính chuyên dụng, bé sẽ được trải nghiệm thế giới nghệ thuật đầy màu sắc và kích thích trí tưởng tượng.
🎁 ƯU ĐIỂM NỔI BẬT
✅ Hiệu ứng tranh vẽ 3D phát sáng độc đáo, cực kỳ thu hút trẻ nhỏ.
✅ Giúp phát triển khả năng sáng tạo, tư duy hình ảnh và kỹ năng hội họa.
✅ Rèn luyện sự tập trung, khéo léo và khả năng phối hợp tay - mắt.
✅ Bảng vẽ có thể xóa và sử dụng nhiều lần, tiết kiệm chi phí.
✅ Chất liệu an toàn, thân thiện với trẻ em.
✅ Phù hợp làm quà tặng sinh nhật, lễ Tết, phần thưởng cho bé.
Kích Thước: 30x34x4 cm
📦 Bộ sản phẩm gồm
01 Bảng vẽ 3D
Bộ bút màu huỳnh quang
01 Kính xem hiệu ứng 3D
Khăn lau bảng
Hướng dẫn sử dụng
👶 Đối tượng sử dụng
Bé trai và bé gái từ 3 tuổi trở lên
Phù hợp chơi tại nhà, trường học hoặc các hoạt động ngoại khóa
💖 Lợi ích dành cho bé
🌈 Kích thích trí tưởng tượng phong phú
🎨 Phát triển năng khiếu hội họa
🧠 Nâng cao khả năng tư duy sáng tạo
👀 Hạn chế thời gian sử dụng điện thoại, TV
🤝 Tăng sự tương tác giữa bố mẹ và bé
Cam kết từ Shop
✔ Sản phẩm đúng hình ảnh mô tả
✔ Kiểm tra kỹ trước khi đóng gói
✔ Hỗ trợ đổi trả theo quy định Shopee
✔ Tư vấn nhiệt tình trong suốt quá trình sử dụng
✨ VẼ TRANH 3D PHÁT SÁNG ✨
4 góc thumbnail:
🔹 Góc trái trên: ĐỒ CHƠI SÁNG TẠO HOT 2026
🔹 Góc phải trên: TẶNG KÈM KÍNH 3D
🔹 Góc trái dưới: PHÁT TRIỂN TƯ DUY
🔹 Góc phải dưới: QUÀ TẶNG BÉ YÊU 🎁
#BangVe3D #DoChoiSangTao #DoChoiThongMinh #DoChoiTreEm #MagicDrawing3D #QuaTangChoBe #BangVePhatSang #DoChoiGiaoDuc #DoChoi3D','[{"n": "Material", "v": "ABS"}, {"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi mỹ thuật & Thủ công']::text[],'https://shopee.vn/product/67689883/54212099297') on conflict (id) do nothing;
delete from product_images where product_id='54212099297';
insert into product_images(product_id,url,sort_order) values ('54212099297','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdp9n6wskr32c',0);
insert into product_images(product_id,url,sort_order) values ('54212099297','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdom0pwfyff0f',1);
insert into product_images(product_id,url,sort_order) values ('54212099297','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdp0x2618nf37',2);
insert into product_images(product_id,url,sort_order) values ('54212099297','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdona2x998ra7',3);
insert into product_images(product_id,url,sort_order) values ('54212099297','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdooke65mo07a',4);
delete from product_variants where product_id='54212099297'; delete from product_models where product_id='54212099297'; delete from product_categories where product_id='54212099297';
insert into product_categories values ('54212099297','271399347') on conflict do nothing;
delete from reviews where product_id='54212099297' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('50613560822','Mô hình Lắp Ghép Kit Card Khủng Long Stegosaurus, Đồ Chơi Khảo Cổ, Đồ Chơi Giáo Dục, Quà Tặng Cho Bé','mo-hinh-lap-ghep-kit-card-khung-long-stegosaurus-do-choi-khao-co-do-choi-giao-du-60822',137500,null,250000,45,null,1,0.00,0,'{0,0,0,0,0}','','Mô Hình Khủng Long Xương 3D Lắp Ghép Stegosaurus là món đồ chơi giáo dục thú vị dành cho bé yêu thích thế giới khủng long, khám phá khoa học và lắp ráp mô hình. Sản phẩm có thiết kế dạng bộ xương khủng long màu trắng, các chi tiết được cắt ghép tinh tế giúp bé vừa chơi vừa rèn luyện khả năng quan sát, tư duy logic và sự khéo léo của đôi tay.

Mô hình phù hợp để bé sưu tầm, trang trí góc học tập, bàn làm việc hoặc dùng làm món quà nhỏ cho các bạn nhỏ yêu thích khủng long và khám phá tiền sử.

Điểm nổi bật của sản phẩm:

✅ Thiết kế mô hình xương khủng long Stegosaurus độc đáo, bắt mắt
✅ Dạng lắp ghép 3D giúp bé tăng khả năng tư duy và tập trung
✅ Màu trắng nổi bật, phù hợp trang trí bàn học, kệ trưng bày
✅ Kích thước nhỏ gọn, dễ cầm nắm và trưng bày
✅ Phù hợp làm quà tặng cho bé yêu thích khủng long, khảo cổ, mô hình lắp ráp

Thông tin sản phẩm:

Tên sản phẩm: Mô hình khủng long xương 3D lắp ghép
Chủ đề: Khủng long Triceratops
Màu sắc: Trắng
Chất liệu: Nhựa
Kích thước : 170mm x 170mm
Phù hợp: Bé yêu thích đồ chơi lắp ghép, mô hình khủng long, đồ chơi giáo dục
Ứng dụng: Vui chơi, học tập, trang trí, sưu tầm

Lưu ý: Sản phẩm gồm các chi tiết lắp ghép nhỏ, nên có người lớn hướng dẫn khi bé chơi.

#mohinhkhunglong #dochoikhunglong #mohinhxuongkhunglong #dochoilapghep #khunglong3d #dochoigiaoduc #dochoistem #stegosaurus #dochoisangtao #quatangchobe','[{"n": "Recommended Age", "v": "7 years +"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi khoa học & Công nghệ']::text[],'https://shopee.vn/product/67689883/50613560822') on conflict (id) do nothing;
delete from product_images where product_id='50613560822';
insert into product_images(product_id,url,sort_order) values ('50613560822','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdaiyydvhn226',0);
insert into product_images(product_id,url,sort_order) values ('50613560822','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdbfth5vgu8d7',1);
insert into product_images(product_id,url,sort_order) values ('50613560822','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdgepfjzndb20',2);
insert into product_images(product_id,url,sort_order) values ('50613560822','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdazhneq8lc42',3);
insert into product_images(product_id,url,sort_order) values ('50613560822','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqdbcl3rkrnk68',4);
delete from product_variants where product_id='50613560822'; delete from product_models where product_id='50613560822'; delete from product_categories where product_id='50613560822';
insert into product_categories values ('50613560822','274115770') on conflict do nothing;
insert into product_categories values ('50613560822','271399347') on conflict do nothing;
delete from reviews where product_id='50613560822' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('28395255741','Đồ Chơi Đập Chuột Thỏ Có Nhạc Có Đèn 2 Búa Phản Xạ Cho Bé,Đồ Chơi Cho Bé','do-choi-dap-chuot-tho-co-nhac-co-den-2-bua-phan-xa-cho-be-do-choi-cho-be-55741',199290,null,273000,27,null,0,0.00,0,'{0,0,0,0,0}','','ĐỒ CHƠI ĐẬP CHUỘT THỎ CÓ NHẠC CÓ ĐÈN – GIÚP BÉ PHẢN XẠ NHANH, VUI CHƠI MỖI NGÀY
Biến mỗi giờ chơi thành một buổi rèn luyện phản xạ và sự tập trung đầy hứng thú. Đồ chơi đập chuột hình chú thỏ dễ thương với hiệu ứng âm thanh sống động, đèn LED bắt mắt và 2 búa mềm giúp bé vừa học vừa chơi an toàn.
⭐ ƯU ĐIỂM NỔI BẬT
✅ Thiết kế hình chú thỏ đáng yêu, màu sắc bắt mắt.
✅ Có âm thanh vui nhộn và đèn LED sinh động.
✅ Kèm 2 búa mềm, bé có thể chơi cùng bạn bè hoặc bố mẹ.
✅ Giúp rèn luyện:
Phản xạ nhanh
Khả năng tập trung
Phối hợp tay và mắt
Kỹ năng vận động tinh
✅ Chất liệu nhựa ABS an toàn, bề mặt bo tròn.
✅ Phù hợp cho bé từ 3 tuổi trở lên.
📦 Bộ sản phẩm gồm
Kích Thước: 27x28x7 cm
01 Máy đập chuột hình thỏ
02 Búa đồ chơi
Hộp đóng gói đẹp, thích hợp làm quà tặng
🎯 Phù hợp cho
Bé trai
Bé gái
Quà sinh nhật
Quà Noel
Quà Quốc tế Thiếu nhi
Quà thưởng cho bé
Lợi ích dành cho bé
Phát triển khả năng phản xạ
Tăng sự tập trung
Giảm thời gian sử dụng điện thoại
Giúp cả gia đình cùng vui chơi
Tăng khả năng phối hợp tay và mắt
Cam kết
✔️ Hàng mới 100%
✔️ Kiểm tra kỹ trước khi giao
✔️ Đóng gói cẩn thận
✔️ Hỗ trợ khách hàng nhanh chóng
đồ chơi đập chuột, đồ chơi phản xạ, đồ chơi có nhạc, đồ chơi có đèn, đồ chơi giáo dục, đồ chơi cho bé 3 tuổi, đồ chơi vận động, đồ chơi tương tác, đồ chơi trẻ em, đồ chơi phát triển trí tuệ, đồ chơi luyện phản xạ, quà tặng cho bé
#DoChoiDapChuot #DoChoiPhanXa #DoChoiTreEm #DoChoiGiaoDuc #DoChoiCoNhac #DoChoiCoDen #QuaTangChoBe #DoChoiVanDong #DoChoiChoBe3Tuoi #DoChoiThongMinh #DoChoiTuongTac #DoChoiBeTrai #DoChoiBeGai #GiaDinhVuiVe #DoChoiAnToan','[{"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Material", "v": "ABS"}, {"n": "Build-in Battery", "v": "Yes"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi âm nhạc']::text[],'https://shopee.vn/product/67689883/28395255741') on conflict (id) do nothing;
delete from product_images where product_id='28395255741';
insert into product_images(product_id,url,sort_order) values ('28395255741','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqgb22afzv9e70',0);
insert into product_images(product_id,url,sort_order) values ('28395255741','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqgaicck3hn22c',1);
insert into product_images(product_id,url,sort_order) values ('28395255741','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqgagmvmuuiz38',2);
insert into product_images(product_id,url,sort_order) values ('28395255741','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqgalg17t34e4b',3);
insert into product_images(product_id,url,sort_order) values ('28395255741','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqgaoow7x5amc4',4);
delete from product_variants where product_id='28395255741'; delete from product_models where product_id='28395255741'; delete from product_categories where product_id='28395255741';
insert into product_categories values ('28395255741','271399347') on conflict do nothing;
insert into product_categories values ('28395255741','271742027') on conflict do nothing;
delete from reviews where product_id='28395255741' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('54361461368','Đồ Chơi Cho Bé Xe Đua Lắp Ráp 292 Mảnh Siêu Xe Thể Thao Đồ Chơi STEM','do-choi-cho-be-xe-dua-lap-rap-292-manh-sieu-xe-the-thao-do-choi-stem-61368',261340,null,358000,27,null,3,0.00,0,'{0,0,0,0,0}','','🏎️ ĐỒ CHƠI CHO BÉ – XE ĐUA LẮP RÁP 292 MẢNH KIYUI H8901A SIÊU XE THỂ THAO CỰC NGẦU 🏎️
Mang đến cho bé những giờ phút vừa học vừa chơi đầy bổ ích với Xe Đua Lắp Ráp 292 Mảnh KIYUI H8901A. Lấy cảm hứng từ những mẫu siêu xe thể thao hiện đại, bộ đồ chơi lắp ráp siêu xe thể thao giúp bé tự tay hoàn thiện mô hình xe đua mạnh mẽ, từ đó phát triển tư duy logic, khả năng sáng tạo và kỹ năng giải quyết vấn đề.
Đây là đồ chơi STEM giáo dục được nhiều phụ huynh lựa chọn, giúp bé rèn luyện sự kiên nhẫn, khả năng tập trung và hạn chế thời gian sử dụng điện thoại, máy tính bảng hay tivi.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Thiết kế mô phỏng siêu xe đua Racing Sport hiện đại, màu xanh phối đen nổi bật.
✔️ Gồm 292 mảnh ghép với độ chính xác cao, dễ lắp ráp.
✔️ Các khớp nối chắc chắn, mô hình hoàn thiện đẹp mắt và bền bỉ.
✔️ Chất liệu nhựa ABS cao cấp, an toàn cho trẻ nhỏ.
✔️ Giúp phát triển tư duy logic, khả năng sáng tạo và kỹ năng giải quyết vấn đề.
✔️ Rèn luyện sự khéo léo, tính kiên trì và khả năng phối hợp tay – mắt.
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Xe Đua Lắp Ráp KIYUI H8901A
• Thương hiệu: KIYUI
• Mã sản phẩm: H8901A
• Chủ đề: Racing Sport
• Số lượng chi tiết: 292 PCS
• Kích thước hộp: 18 x 24 x 7 cm
• Chất liệu: Nhựa ABS cao cấp
• Màu sắc: Xanh phối đen
• Độ tuổi phù hợp: Từ 6 tuổi trở lên
• Đóng gói: Hộp màu đẹp, thích hợp làm quà tặng
🎯 LỢI ÍCH KHI BÉ VUI CHƠI
🧩 Phát triển tư duy logic và khả năng quan sát.
🧩 Rèn luyện tính kiên nhẫn, tỉ mỉ và khả năng tập trung.
🧩 Nâng cao kỹ năng phối hợp tay – mắt.
🧩 Kích thích trí tưởng tượng và óc sáng tạo.
🧩 Giảm thời gian sử dụng điện thoại, tivi và các thiết bị điện tử.
🧩 Mang đến niềm vui khi tự tay hoàn thành mô hình xe đua của riêng mình.
🎁 MÓN QUÀ Ý NGHĨA DÀNH CHO BÉ
Bộ đồ chơi lắp ráp xe đua 292 mảnh là món quà tuyệt vời dành cho các bé yêu thích siêu xe, mô hình lắp ráp và đồ chơi STEM. Phù hợp làm quà sinh nhật, Noel, Quốc tế Thiếu nhi, phần thưởng học tập hoặc quà tặng khuyến khích bé khám phá và sáng tạo.
💖 CAM KẾT TỪ SHOP
✅ Hàng mới 100%, đúng mô tả.
✅ Kiểm tra kỹ trước khi đóng gói.
✅ Đóng gói cẩn thận, hạn chế va đập trong quá trình vận chuyển.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
✅ Tư vấn nhiệt tình trước và sau khi mua hàng.
#DoChoiChoBe #DoChoiLapRap #XeDuaLapRap #XeLapRap292Manh #DoChoiSTEM #DoChoiGiaoDuc #SieuXeTheThao #MoHinhXeDua #XeTheThao #KIYUI #RacingSport #DoChoiBeTrai #DoChoiTreEm #DoChoiThongMinh #LapRapSangTao #QuaTangChoBe #QuaTangSinhNhat #QuaTangBeTrai #DoChoi6Tuoi #NhuaABSCaoCap','[{"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/54361461368') on conflict (id) do nothing;
delete from product_images where product_id='54361461368';
insert into product_images(product_id,url,sort_order) values ('54361461368','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxikme1tkwf36',0);
insert into product_images(product_id,url,sort_order) values ('54361461368','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxi7cc1pjik18',1);
insert into product_images(product_id,url,sort_order) values ('54361461368','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxicnygrqpu0b',2);
insert into product_images(product_id,url,sort_order) values ('54361461368','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxi5mivznd9b3',3);
insert into product_images(product_id,url,sort_order) values ('54361461368','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxi5q06r85of0',4);
delete from product_variants where product_id='54361461368'; delete from product_models where product_id='54361461368'; delete from product_categories where product_id='54361461368';
insert into product_categories values ('54361461368','271399347') on conflict do nothing;
insert into product_categories values ('54361461368','271741642') on conflict do nothing;
insert into product_categories values ('54361461368','271742074') on conflict do nothing;
delete from reviews where product_id='54361461368' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('44612021406','Đồ Chơi Robot Biến Hình 3 Trong 1 War Machine, Lắp Ráp Sáng Tạo Cho Bé','do-choi-robot-bien-hinh-3-trong-1-war-machine-lap-rap-sang-tao-cho-be-21406',287620,null,394000,27,null,3,0.00,0,'{0,0,0,0,0}','','🤖 Đồ Chơi Robot Biến Hình War Machine 3 Trong 1 là đồ chơi cho bé giúp bé khám phá thế giới robot và cơ khí thông qua những màn biến hình đầy hấp dẫn. Với thiết kế thông minh, sản phẩm có thể chuyển đổi linh hoạt từ xe địa hình, robot chiến đấu đến chế độ vũ khí chiến đấu, mang đến trải nghiệm vui chơi sáng tạo và kích thích trí tò mò của trẻ.
Không chỉ là đồ chơi robot biến hình, đây còn là đồ chơi lắp ráp sáng tạo cho bé giúp phát triển tư duy logic, khả năng quan sát và kỹ năng giải quyết vấn đề trong quá trình lắp ráp và biến đổi mô hình. Các khớp nối chắc chắn, thao tác đơn giản cùng chất liệu nhựa ABS cao cấp giúp bé dễ dàng chuyển đổi giữa các chế độ và tạo nên những trận chiến robot đầy kịch tính.
✨ Đặc điểm nổi bật
✔️ Thiết kế Robot Biến Hình 3 Trong 1 độc đáo với nhiều cách chơi sáng tạo.
✔️ Dễ dàng chuyển đổi giữa xe địa hình, robot chiến đấu và chế độ vũ khí chỉ với vài thao tác.
✔️ Màu sắc cam - đen mạnh mẽ, thiết kế hiện đại lấy cảm hứng từ những chiến binh cơ khí.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, an toàn cho trẻ em.
✔️ Các khớp nối linh hoạt, chắc chắn, giúp bé dễ dàng lắp ráp và biến hình.
🌟 Lợi ích cho bé
Phát triển tư duy logic và khả năng sáng tạo.
Rèn luyện kỹ năng vận động tinh và phối hợp tay mắt.
Tăng khả năng tập trung, tính kiên nhẫn và kỹ năng quan sát.
Khơi gợi niềm yêu thích khám phá thế giới robot, xe cơ khí và công nghệ.
Giúp bé hạn chế thời gian sử dụng điện thoại, máy tính bảng và các thiết bị điện tử.
📦 Thông tin sản phẩm
Tên sản phẩm: War Machine Mecha Series
Loại sản phẩm: Đồ chơi robot biến hình
Kích thước hộp: 24 x 35 x 5 cm
Chất liệu: Nhựa ABS cao cấp
Màu sắc: Cam - Đen
Độ tuổi phù hợp: Từ 6 tuổi trở lên
Đóng gói: Hộp màu cao cấp
🎁 Robot Biến Hình War Machine 3 Trong 1 là món quà tuyệt vời dành cho bé trai và bé gái yêu thích robot, xe địa hình và mô hình lắp ráp. Phù hợp làm quà sinh nhật, Noel, Quốc tế Thiếu nhi hoặc quà khen thưởng. Đây là đồ chơi sáng tạo kết hợp giữa lắp ráp và biến hình, giúp bé vừa giải trí vừa phát triển tư duy, khả năng sáng tạo và kỹ năng thực hành.
💖 Cam kết từ Shop
Sản phẩm mới 100%, đúng như hình mô tả.
Kiểm tra kỹ trước khi giao hàng.
Đóng gói cẩn thận, chống va đập.
Hỗ trợ đổi trả theo chính sách Shopee.
Tư vấn nhiệt tình trước và sau khi mua hàng.
#RobotBienHinh #WarMachine #DoChoiRobot #DoChoiLapRap #Robot3Trong1 #DoChoiChoBe #DoChoiSangTao #DoChoiThongMinh #RobotChienDau #XeBienHinh #MechaSeries #QuaTangChoBe #DoChoi6Tuoi #DoChoiBeTrai #ShopeeVN','[{"n": "Material", "v": "ABS"}, {"n": "Recommended Age", "v": "7 years +"}, {"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Manufacturer/trader address", "v": "Updating"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi Robot']::text[],'https://shopee.vn/product/67689883/44612021406') on conflict (id) do nothing;
delete from product_images where product_id='44612021406';
insert into product_images(product_id,url,sort_order) values ('44612021406','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpaz36m69uddb9',0);
insert into product_images(product_id,url,sort_order) values ('44612021406','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpaytd6u7dvv31',1);
insert into product_images(product_id,url,sort_order) values ('44612021406','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpaz30bzlc7j4d',2);
insert into product_images(product_id,url,sort_order) values ('44612021406','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpayqff0p7uz40',3);
insert into product_images(product_id,url,sort_order) values ('44612021406','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpayvdd40u1746',4);
delete from product_variants where product_id='44612021406'; delete from product_models where product_id='44612021406'; delete from product_categories where product_id='44612021406';
insert into product_categories values ('44612021406','271399347') on conflict do nothing;
insert into product_categories values ('44612021406','271741642') on conflict do nothing;
delete from reviews where product_id='44612021406' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('51060288261','Đồ Chơi Nấu Ăn Nhà Bếp Hình Thỏ Hồng Dễ Thương Cho Bé, Mô Hình Thức Ăn & Quà Tặng Cho Bé','do-choi-nau-an-nha-bep-hinh-tho-hong-de-thuong-cho-be-mo-hinh-thuc-an-qua-tang-c-88261',252580,null,346000,27,null,0,0.00,0,'{0,0,0,0,0}','','Bộ đồ chơi nấu ăn Cute Rabbit không chỉ là một món đồ chơi giải trí mà còn là công cụ tuyệt vời giúp bé phát triển trí tưởng tượng, kỹ năng vận động tinh và làm quen với các dụng cụ nhà bếp cơ bản ngay từ nhỏ.
✨ ĐIỂM NỔI BẬT CỦA SẢN PHẨM:
Thiết kế cực kỳ đáng yêu: Với tông màu hồng chủ đạo và hình ảnh chú thỏ ngọc dễ thương, sản phẩm chắc chắn sẽ làm các bé yêu thích ngay từ cái nhìn đầu tiên.
Bộ dụng cụ đa dạng: Bao gồm đầy đủ nồi, chảo, muỗng, nĩa và các loại thực phẩm mô phỏng (tôm, cá, trứng, xúc xích...) giúp bé thỏa sức sáng tạo các "món ăn" độc đáo.
Tích hợp Trạm lưu trữ (Storage Station): Thiết kế thông minh giúp bé rèn luyện thói quen ngăn nắp, thu dọn đồ chơi gọn gàng vào "trạm" sau khi chơi xong.
Chất liệu an toàn: Sản phẩm được làm từ nhựa ABS cao cấp, các góc cạnh được bo tròn mịn màng, không chứa chất độc hại, đảm bảo an toàn tuyệt đối cho làn da của bé.
Màu sắc sinh động: Giúp bé nhận biết màu sắc và các loại thực phẩm một cách trực quan nhất.
📘 THÔNG TIN CHI TIẾT:
Tên sản phẩm: Bộ đồ chơi nhà bếp Cute Rabbit.
Chất liệu: Nhựa ABS an toàn.
Kích thước đóng gói: 33cm x 55cm x 8cm
Độ tuổi khuyến nghị: Bé từ 3 tuổi trở lên.
Quy cách: Đóng vỉ chắc chắn, sang trọng, thích hợp làm quà tặng sinh nhật, lễ tết.
🎁 CHÍNH SÁCH BÁN HÀNG TẠI SHOP:
Cam kết: Sản phẩm giống hình 100%.
Đóng gói: Hàng được kiểm tra kỹ và đóng gói chống sốc cẩn thận trước khi giao.
Hỗ trợ: Đổi trả theo quy định của Shopee nếu có lỗi từ nhà sản xuất.
👉 Nhấn "MUA NGAY" để tặng cho bé yêu món quà thú vị này mẹ nhé!
#dochoinauan #dochoibep #cuterabbit #dochoichobegai #quatangchobe #dochoitritue #nhabepmini #dochoiantoan #shopeevn','[{"n": "Country of Origin", "v": "China"}, {"n": "Gender", "v": "Unisex"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/51060288261') on conflict (id) do nothing;
delete from product_images where product_id='51060288261';
insert into product_images(product_id,url,sort_order) values ('51060288261','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mom8tylvoveq20',0);
insert into product_images(product_id,url,sort_order) values ('51060288261','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo3jemv4ulfp19',1);
insert into product_images(product_id,url,sort_order) values ('51060288261','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofs8y1evjt801',2);
insert into product_images(product_id,url,sort_order) values ('51060288261','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo3jcnwoqn7kbe',3);
insert into product_images(product_id,url,sort_order) values ('51060288261','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo3jcnwomfi92a',4);
delete from product_variants where product_id='51060288261'; delete from product_models where product_id='51060288261'; delete from product_categories where product_id='51060288261';
insert into product_variants(product_id,name,options,images) values ('51060288261','Loại',array['Đồ Chơi Nấu Ăn']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7bepsq9c7487']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('51060288261','Đồ Chơi Nấu Ăn',252580,null,'');
insert into product_categories values ('51060288261','271399347') on conflict do nothing;
insert into product_categories values ('51060288261','271741912') on conflict do nothing;
delete from reviews where product_id='51060288261' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('56561400342','Bộ Đồ Chơi Dụng Cụ Sửa Chữa Cho Bé - Máy Khoan & Bộ Công Cụ Kỹ Sư,','bo-do-choi-dung-cu-sua-chua-cho-be-may-khoan-bo-cong-cu-ky-su-00342',233600,null,320000,27,null,7,5.00,1,'{0,0,0,0,1}','','🔧 BỘ ĐỒ CHƠI DỤNG CỤ SỬA CHỮA GOOD HELPER – GIÚP BÉ HÓA THÂN THÀNH KỸ SƯ NHÍ!


Bạn đang tìm một món đồ chơi vừa giải trí vừa giúp bé phát triển tư duy? Bộ dụng cụ sửa chữa GOOD HELPER với thiết kế chân thực, màu sắc nổi bật sẽ mang đến cho bé những giờ chơi sáng tạo và bổ ích.



⭐ ƯU ĐIỂM NỔI BẬT


✅ Thiết kế mô phỏng bộ dụng cụ sửa chữa thực tế


✅ Máy khoan đồ chơi cầm tay đẹp mắt, dễ sử dụng


✅ Chất liệu nhựa ABS an toàn, bền chắc


✅ Màu sắc nổi bật kích thích thị giác của trẻ


✅ Giúp bé rèn luyện kỹ năng vận động và tư duy sáng tạo


✅ Tăng khả năng nhận biết các dụng cụ sửa chữa cơ bản


✅ Phù hợp cho bé chơi một mình hoặc cùng bố mẹ



📦 BỘ SẢN PHẨM BAO GỒM




01 Máy khoan đồ chơi


01 Kìm cắt


01 Kìm mũi nhọn


02 Cờ lê


01 Tua vít


04 Bu lông mô phỏng


02 Thanh ghép mô phỏng


(Số lượng có thể chênh lệch nhỏ tùy từng lô sản xuất)



🎯 LỢI ÍCH CHO BÉ


🧠 Phát triển khả năng quan sát và ghi nhớ


🧠 Tăng cường tư duy logic và kỹ năng giải quyết vấn đề


🧠 Rèn luyện sự khéo léo của đôi tay


🧠 Khuyến khích bé khám phá thế giới nghề nghiệp


🧠 Tăng sự gắn kết giữa bố mẹ và con thông qua các trò chơi nhập vai



📏 THÔNG TIN SẢN PHẨM

kích thước:31x48x5 cm


Tên sản phẩm: GOOD HELPER Tool Series


Chất liệu: Nhựa ABS cao cấp


Màu sắc: Đỏ - Đen - Cam


Độ tuổi phù hợp: Từ 3 tuổi trở lên


Đóng gói: Vỉ nhựa nguyên bộ



⚠️ LƯU Ý

Không sử dụng gần nguồn nhiệt cao.


Nên có sự giám sát của người lớn đối với trẻ nhỏ.


Bảo quản nơi khô ráo, thoáng mát.','[{"n": "Material", "v": "ABS"}, {"n": "Gender", "v": "Unisex"}, {"n": "Recommended Age", "v": "3 - 4 years"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/56561400342') on conflict (id) do nothing;
delete from product_images where product_id='56561400342';
insert into product_images(product_id,url,sort_order) values ('56561400342','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mq7gedkzur6582',0);
insert into product_images(product_id,url,sort_order) values ('56561400342','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov5b23djpcb0e',1);
insert into product_images(product_id,url,sort_order) values ('56561400342','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov5010miej17f',2);
insert into product_images(product_id,url,sort_order) values ('56561400342','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov4xuivw3dbdd',3);
insert into product_images(product_id,url,sort_order) values ('56561400342','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov5dlih4ikrc3',4);
delete from product_variants where product_id='56561400342'; delete from product_models where product_id='56561400342'; delete from product_categories where product_id='56561400342';
insert into product_categories values ('56561400342','271399347') on conflict do nothing;
insert into product_categories values ('56561400342','271741912') on conflict do nothing;
delete from reviews where product_id='56561400342' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('56561400342','thaonb01',5,'','','{}'::text[],'Chân thành cảm ơn khách iu đã tin tưởng ủng hộ shop ạ, chúc bạn cùng gia đình luôn mạnh khoẻ nhé♥️',to_timestamp(1783496727));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('56211800434','Trò Chơi Xếp Khối Thăng Bằng Balance The Block Kèm Xúc Xắc - Đồ Chơi Trí Tuệ Cho Bé','tro-choi-xep-khoi-thang-bang-balance-the-block-kem-xuc-xac-do-choi-tri-tue-cho-b-00434',273750,null,375000,27,null,0,0.00,0,'{0,0,0,0,0}','','🧩 BALANCE THE BLOCK – TRÒ CHƠI XẾP KHỐI THĂNG BẰNG RÈN TƯ DUY CHO BÉ 🎲
Mang đến những giờ phút giải trí vui nhộn cho bé và cả gia đình với trò chơi xếp khối thăng bằng Balance The Block kèm xúc xắc. Trò chơi giúp bé vừa chơi vừa học, phát triển tư duy logic, sự tập trung và khả năng phối hợp tay mắt.
⭐ ĐIỂM NỔI BẬT
✔️ Thiết kế khối màu sắc bắt mắt, thu hút trẻ nhỏ
✔️ Kết hợp xúc xắc tăng tính may rủi và hấp dẫn
✔️ Rèn luyện khả năng cân bằng và tư duy logic
✔️ Tăng sự khéo léo và phản xạ tay mắt
✔️ Chơi được nhiều người, tăng tương tác gia đình
✔️ Chất liệu nhựa an toàn, bề mặt mịn, không gây nguy hiểm
✔️ Nhỏ gọn, dễ mang theo khi đi chơi, du lịch
🎲 CÁCH CHƠI
✔️ Lắp đế cân bằng cố định
✔️ Đổ xúc xắc để xác định màu/số cần đặt
✔️ Lần lượt xếp các khối lên trụ
✔️ Ai làm đổ tháp sẽ thua cuộc
🎯 LỢI ÍCH CHO BÉ
🧠 Phát triển tư duy logic và chiến lược
🧠 Tăng khả năng quan sát và tập trung
🧠 Rèn luyện sự khéo léo của đôi tay
🧠 Học cách kiên nhẫn và kiểm soát hành động
🧠 Tăng tương tác xã hội khi chơi nhóm
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Balance The Block
• Kích thước: 22 x 27 x 8 cm
• Chất liệu: Nhựa cao cấp an toàn
• Màu sắc: Nhiều màu
• Độ tuổi phù hợp: Từ 3 tuổi trở lên
• Đối tượng: Trẻ em và gia đình
🎁 PHÙ HỢP LÀM QUÀ TẶNG
🎂 Sinh nhật bé trai, bé gái
🎄 Noel, Trung Thu, Tết Thiếu Nhi
👨‍👩‍👧 Trò chơi gắn kết gia đình
🏫 Hoạt động tại lớp học kỹ năng
💖 CAM KẾT TỪ SHOP
✔️ Sản phẩm đúng mô tả 100%
✔️ Đóng gói cẩn thận chống va đập
✔️ Hỗ trợ đổi trả nếu lỗi từ nhà sản xuất
✔️ Tư vấn nhanh chóng trước & sau mua hàng
#BalanceTheBlock #DoChoiCanBang #XepKhoiThongMinh #DoChoiTriTue #DoChoiGiaDinh #DoChoiChoBe #GameTriTue #DoChoiGiaoDuc #DoChoiTreEm #DoChoi3Tuoi #QuaTangChoBe #DoChoiABS #DoChoiPhatTrienTuDuy #ShopeeKids #TroChoiXepKhoi','[{"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi hình khối']::text[],'https://shopee.vn/product/67689883/56211800434') on conflict (id) do nothing;
delete from product_images where product_id='56211800434';
insert into product_images(product_id,url,sort_order) values ('56211800434','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp697kwyo36680',0);
insert into product_images(product_id,url,sort_order) values ('56211800434','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp68s63mi2oeb5',1);
insert into product_images(product_id,url,sort_order) values ('56211800434','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp68vvs01z41d3',2);
insert into product_images(product_id,url,sort_order) values ('56211800434','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp68uqbokqoe8c',3);
insert into product_images(product_id,url,sort_order) values ('56211800434','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp68r28aknwr9f',4);
delete from product_variants where product_id='56211800434'; delete from product_models where product_id='56211800434'; delete from product_categories where product_id='56211800434';
insert into product_categories values ('56211800434','271399347') on conflict do nothing;
insert into product_categories values ('56211800434','271742027') on conflict do nothing;
delete from reviews where product_id='56211800434' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('55062045621','Đồ Chơi Lắp Ráp Robot Biến Hình 3 Trong 1 - War Machine 298 Chi Tiết Robot Mecha Cho Bé','do-choi-lap-rap-robot-bien-hinh-3-trong-1-war-machine-298-chi-tiet-robot-mecha-c-45621',287620,null,394000,27,null,1,0.00,0,'{0,0,0,0,0}','','🤖 ĐỒ CHƠI LẮP RÁP ROBOT BIẾN HÌNH WAR MACHINE 3 TRONG 1 – ROBOT MECHA 298 CHI TIẾT
Đồ chơi lắp ráp Robot biến hình War Machine là đồ chơi lắp ghép 298 chi tiết giúp bé tự tay xây dựng mô hình theo nhiều kiểu khác nhau. Chỉ với một bộ sản phẩm, bé có thể lắp thành robot chiến binh, xe thể thao hoặc robot thú biến hình, mang đến trải nghiệm vừa học vừa chơi đầy thú vị. Đây là đồ chơi robot, đồ chơi lắp ráp, đồ chơi STEM và đồ chơi giáo dục giúp phát triển tư duy logic, khả năng sáng tạo và kỹ năng giải quyết vấn đề.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Thiết kế robot biến hình 3 trong 1, dễ dàng chuyển đổi giữa robot chiến binh, xe thể thao và robot thú.
✔️ Gồm 298 chi tiết lắp ráp với độ hoàn thiện cao, giúp bé trải nghiệm lắp ghép đầy thử thách.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, bề mặt nhẵn mịn, an toàn cho trẻ nhỏ.
✔️ Mô hình Robot Mecha War Machine với màu sắc đen - trắng - cam nổi bật, thiết kế mạnh mẽ và hiện đại.
✔️ Các khớp cử động linh hoạt, có thể tạo nhiều tư thế chiến đấu và trưng bày đẹp mắt.
✔️ Đồ chơi lắp ráp cho bé trai giúp rèn luyện sự kiên nhẫn, tính tỉ mỉ và khả năng tư duy sáng tạo.
🎯 LỢI ÍCH CHO BÉ
Phát triển tư duy logic và khả năng giải quyết vấn đề.
Rèn luyện kỹ năng lắp ghép và vận động tinh.
Tăng khả năng tập trung, quan sát và ghi nhớ.
Khơi dậy trí tưởng tượng khi nhập vai robot chiến đấu.
Hạn chế thời gian sử dụng điện thoại, máy tính bảng và tivi.
Mang lại cảm giác chinh phục sau khi hoàn thành mô hình.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Đồ chơi lắp ráp Robot biến hình War Machine.
Mã sản phẩm: L33005.
Chủ đề: Robot Mecha biến hình.
Số lượng chi tiết: 298 PCS.
Chất liệu: Nhựa ABS cao cấp.
Màu sắc: Đen - Trắng - Cam.
Kích thước hộp: 24 x 34 x 5 cm.
Độ tuổi phù hợp: Từ 6 tuổi trở lên.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Quà sinh nhật cho bé trai.
Quà Noel, Quốc tế Thiếu nhi, Trung Thu.
Quà khuyến khích học tập.
Phù hợp với các bé yêu thích robot biến hình, đồ chơi lắp ráp, robot Mecha, mô hình robot, xe biến hình, đồ chơi STEM, đồ chơi thông minh, đồ chơi giáo dục và đồ chơi phát triển tư duy.
💯 CAM KẾT TỪ SHOP
✅ Sản phẩm mới 100%, đúng hình ảnh và mô tả.
✅ Kiểm tra kỹ trước khi đóng gói và giao hàng.
✅ Đóng gói cẩn thận, chống va đập.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
#robotbienhinh #robotlaprap #dochoilaprap #dochoilapghep #robotmecha #warmachine #mohinhrobot #robotchienbinh #xebienhinh #dochoistem #dochoigiaoduc #dochoisangtao #dochoithongminh #dochoichobe #dochoibetrai #quatangchobe #laprap298chitiet #buildingblocks #mechatoy #robottoy','[{"n": "Material", "v": "ABS"}, {"n": "Recommended Age", "v": "6 - 8 Years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi Robot']::text[],'https://shopee.vn/product/67689883/55062045621') on conflict (id) do nothing;
delete from product_images where product_id='55062045621';
insert into product_images(product_id,url,sort_order) values ('55062045621','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpby8dway9s12f',0);
insert into product_images(product_id,url,sort_order) values ('55062045621','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbxua86l1cb4b',1);
insert into product_images(product_id,url,sort_order) values ('55062045621','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpby8ja88ydqef',2);
insert into product_images(product_id,url,sort_order) values ('55062045621','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbxsw9mk83v30',3);
insert into product_images(product_id,url,sort_order) values ('55062045621','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbxwa5hu7taf6',4);
delete from product_variants where product_id='55062045621'; delete from product_models where product_id='55062045621'; delete from product_categories where product_id='55062045621';
insert into product_categories values ('55062045621','271399347') on conflict do nothing;
insert into product_categories values ('55062045621','271741642') on conflict do nothing;
delete from reviews where product_id='55062045621' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('27794817689','Bộ Đồ Chơi Dụng Cụ Sửa Chữa Cho Bé Kèm Ốc Vít Đồ Chơi Lắp Ráp Kỹ Năng Bé Trai Bé Gái','bo-do-choi-dung-cu-sua-chua-cho-be-kem-oc-vit-do-choi-lap-rap-ky-nang-be-trai-be-17689',201480,null,276000,27,null,1,5.00,1,'{0,0,0,0,1}','','🛠️ BỘ ĐỒ CHƠI DỤNG CỤ SỬA CHỮA CHO BÉ KÈM ỐC VÍT – ĐỒ CHƠI LẮP RÁP KỸ NĂNG CHO BÉ TRAI & BÉ GÁI 🛠️
Giúp bé hóa thân thành kỹ sư nhí với Bộ Đồ Chơi Dụng Cụ Sửa Chữa Cho Bé Kèm Ốc Vít. Bộ đồ chơi gồm nhiều dụng cụ mô phỏng như búa, kìm, cờ lê, tua vít, ốc vít và thanh lắp ráp, giúp bé thỏa sức sáng tạo, lắp ghép các mô hình theo trí tưởng tượng.
Đây là đồ chơi lắp ráp kỹ năng cho bé trai bé gái được thiết kế theo phương pháp học mà chơi, hỗ trợ phát triển tư duy logic, khả năng sáng tạo và kỹ năng vận động tinh. Sản phẩm phù hợp cho cả bé trai và bé gái từ 3 tuổi trở lên.
🌟 ƯU ĐIỂM NỔI BẬT
✔️ Bộ dụng cụ sửa chữa mô phỏng với nhiều chi tiết sinh động và chân thực.
✔️ Bao gồm búa, kìm, cờ lê, tua vít, ốc vít, đai ốc, thanh lắp ráp và nhiều phụ kiện khác.
✔️ Bé có thể tự lắp ráp các mô hình theo trí tưởng tượng, kích thích óc sáng tạo.
✔️ Giúp rèn luyện tư duy logic, khả năng giải quyết vấn đề và sự khéo léo.
✔️ Chất liệu nhựa ABS cao cấp, bề mặt nhẵn mịn, bo tròn an toàn.
✔️ Màu sắc tươi sáng giúp bé nhận biết màu sắc và hình khối hiệu quả.
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Bộ Đồ Chơi Dụng Cụ Sửa Chữa Building Blocks
• Kích thước hộp: 38 x 42 x 3 cm
• Chất liệu: Nhựa ABS an toàn
• Màu sắc: Nhiều màu nổi bật
• Độ tuổi phù hợp: Từ 3 tuổi trở lên
• Công dụng: Đồ chơi giáo dục, phát triển tư duy và kỹ năng vận động
🔧 BỘ SẢN PHẨM BAO GỒM
• 🔨 Búa
• 🔧 Kìm
• 🪛 Tua vít
• 🔩 Ốc vít và đai ốc
• 🧱 Thanh lắp ráp
• 🛠️ Cờ lê
• Cùng nhiều phụ kiện lắp ráp khác
🎯 LỢI ÍCH KHI BÉ VUI CHƠI
🧠 Phát triển tư duy logic và khả năng sáng tạo.
🧠 Rèn luyện kỹ năng vận động tinh và phối hợp tay – mắt.
🧠 Tăng khả năng tập trung, tính kiên nhẫn và sự tỉ mỉ.
🧠 Giúp bé làm quen với các dụng cụ sửa chữa và kỹ năng lắp ráp cơ bản.
🧠 Hạn chế thời gian sử dụng điện thoại, tivi và các thiết bị điện tử.
🎁 MÓN QUÀ Ý NGHĨA DÀNH CHO BÉ
Bộ đồ chơi dụng cụ sửa chữa cho bé là món quà tuyệt vời dành cho cả bé trai và bé gái yêu thích khám phá, lắp ráp và sáng tạo. Phù hợp làm quà sinh nhật, Noel, Quốc tế Thiếu nhi, quà thưởng học tập hoặc các dịp đặc biệt.
💖 CAM KẾT TỪ SHOP
✅ Hàng mới 100%, đúng hình mô tả.
✅ Kiểm tra kỹ trước khi đóng gói.
✅ Đóng gói cẩn thận, hạn chế va đập khi vận chuyển.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
✅ Tư vấn nhiệt tình trước và sau khi mua hàng.
#BoDoChoiSuaChua #DoChoiDungCuSuaChua #DoChoiLapRap #DoChoiKyNang #DoChoiChoBe #DoChoiTreEm #BuildingBlocks #DoChoiGiaoDuc #DoChoiSTEM #DoChoiSangTao #DoChoiBeTrai #DoChoiBeGai #DoChoi3Tuoi #LapRapChoBe #DoChoiPhatTrienTriTue #DoChoiVanDong #QuaTangChoBe #QuaTangSinhNhat #NhuaABSCaoCap #DoChoiAnToan','[{"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}, {"n": "Gender", "v": "Unisex"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/27794817689') on conflict (id) do nothing;
delete from product_images where product_id='27794817689';
insert into product_images(product_id,url,sort_order) values ('27794817689','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mollogoz7xfm33',0);
insert into product_images(product_id,url,sort_order) values ('27794817689','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo8053yiwydkd6',1);
insert into product_images(product_id,url,sort_order) values ('27794817689','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moftcjlbojk9b4',2);
insert into product_images(product_id,url,sort_order) values ('27794817689','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo800x4j0n420e',3);
insert into product_images(product_id,url,sort_order) values ('27794817689','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo800evozeh182',4);
delete from product_variants where product_id='27794817689'; delete from product_models where product_id='27794817689'; delete from product_categories where product_id='27794817689';
insert into product_variants(product_id,name,options,images) values ('27794817689','Loại',array['Bộ Đồ Chơi Sửa Chữa']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo8dzklpnocm27']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('27794817689','Bộ Đồ Chơi Sửa Chữa',201480,null,'');
insert into product_categories values ('27794817689','271399347') on conflict do nothing;
insert into product_categories values ('27794817689','271741912') on conflict do nothing;
delete from reviews where product_id='27794817689' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('27794817689','dangtanbao',5,'Bé nhà mình rất thích','Bộ Đồ Chơi Sửa Chữa','{}'::text[],'cám ơn khách yêu rất nhiều , đã ủng hộ shop ạ ! ',to_timestamp(1779335655));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('25348143316','Bộ Đồ Chơi Bác Sĩ Mini Cho Bé - Quầy Y Tế Đa Năng Có Đèn Nhạc, Giúp Bé Phát Triển Kỹ Năng','bo-do-choi-bac-si-mini-cho-be-quay-y-te-da-nang-co-den-nhac-giup-be-phat-trien-k-43316',418950,null,665000,37,null,0,0.00,0,'{0,0,0,0,0}','','🌟 CHÀO MỪNG BẠN ĐẾN VỚI M&Q HOME TECH - KHÔNG GIAN SÁNG TẠO CHO BÉ 🌟
Bộ đồ chơi Mini Medical Counter (Model NO.660-96) không chỉ là một món đồ chơi giải trí mà còn là công cụ giáo dục tuyệt vời, giúp bé làm quen với thế giới y tế một cách tự nhiên và thú vị.
✨ Đặc Điểm Nổi Bật:
Thiết kế mô phỏng thực tế: Quầy y tế hiện đại với đầy đủ các thiết bị như máy đo nhịp tim, màn hình hiển thị, máy tính tiền, ống nghe và các dụng cụ y tế đi kèm.
Kích thước lớn: Sau khi lắp ráp, sản phẩm có kích thước ấn tượng: Dài 43cm x Rộng 20.5cm x Cao 66.5cm, mang lại trải nghiệm nhập vai chân thực nhất cho bé.
Giáo dục ý thức sức khỏe: Giúp bé hình thành thói quen vệ sinh tốt và nâng cao nhận thức về chăm sóc sức khỏe ngay từ nhỏ.
Phát triển kỹ năng: Khuyến khích bé đóng vai, giao tiếp và rèn luyện tư duy logic thông qua việc sắp xếp các vật dụng y tế.
Chất liệu an toàn: Nhựa cao cấp, bền bỉ, các góc cạnh được bo tròn mịn màng, an toàn tuyệt đối cho trẻ từ 3 tuổi trở lên.
📋 Thông Số Kỹ Thuật:
Thương hiệu: JOLIER
Mã sản phẩm: NO.660-96
Kích thước sản phẩm: 29cm x 39cm x 14cm
Độ tuổi khuyến nghị: 3+ (Trẻ trên 3 tuổi)
Chất liệu: Nhựa ABS an toàn.
🎁 Bộ Sản Phẩm Bao Gồm:
Quầy y tế đa năng.
Các phụ kiện đi kèm: Ống nghe, kéo y tế, kim tiêm, thuốc mô phỏng, bình nước rửa tay, và các bảng điều khiển y tế.
🛡 Chính Sách Bán Hàng Tại M&Q Home Tech:
Cam kết sản phẩm giống hình ảnh và mô tả 100%.
Hỗ trợ đổi trả theo quy định của Shopee nếu có lỗi từ nhà sản xuất.
Đóng gói chắc chắn, giao hàng nhanh chóng.
👉 Hãy đặt hàng ngay hôm nay để cùng bé xây dựng những ước mơ trở thành bác sĩ tương lai!
#dochoibacsi #minimedicalcounter #dochoigiaoduc #jolier #mqhometech #dochoichobe #quatangchobe #dochoivandong #phattrienkynang','[]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/25348143316') on conflict (id) do nothing;
delete from product_images where product_id='25348143316';
insert into product_images(product_id,url,sort_order) values ('25348143316','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mohtzgzwf18u4e',0);
insert into product_images(product_id,url,sort_order) values ('25348143316','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnvgs51yq7sw28',1);
insert into product_images(product_id,url,sort_order) values ('25348143316','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnvgtd1urais41',2);
insert into product_images(product_id,url,sort_order) values ('25348143316','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnvgs520snwj68',3);
insert into product_images(product_id,url,sort_order) values ('25348143316','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnvgt7498jyb90',4);
delete from product_variants where product_id='25348143316'; delete from product_models where product_id='25348143316'; delete from product_categories where product_id='25348143316';
insert into product_variants(product_id,name,options,images) values ('25348143316','Loại',array['Đồ Chơi Bác Sĩ']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mny1c5u2ik1s09']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('25348143316','Đồ Chơi Bác Sĩ',418950,null,'');
insert into product_categories values ('25348143316','271083241') on conflict do nothing;
insert into product_categories values ('25348143316','271741912') on conflict do nothing;
delete from reviews where product_id='25348143316' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('49110358432','Máy Phát Nhạc Karaoke Đồ Chơi Cho Bé, Hỗ Trợ Ghi Âm, Đổi Giọng, Kết Nối Nhạc Ngoài','may-phat-nhac-karaoke-do-choi-cho-be-ho-tro-ghi-am-doi-giong-ket-noi-nhac-ngoai-58432',483990,null,663000,27,null,1,5.00,1,'{0,0,0,0,1}','','🌟 KHƠI DẬY TÀI NĂNG NHÍ VỚI BỘ ĐỒ CHƠI KARAOKE MY MUSIC WORLD 🌟
Giúp bé yêu tự tin tỏa sáng như một ngôi sao thực thụ với bộ sản phẩm Music Decoration Sound Box. Đây không chỉ là một món đồ chơi, mà còn là "người bạn đồng hành" giúp bé phát triển năng khiếu âm nhạc, sự tự tin và khả năng vận động linh hoạt.
💎 ĐIỂM NỔI BẬT CỦA SẢN PHẨM (Dựa trên Gemini_Generated_Image_l0axn4l0axn4l0ax.png):
Bộ 2 Micro Cầm Tay: Thiết kế chuyên nghiệp, cho phép bé song ca cùng bạn bè hoặc người thân.
Đa Chức Năng (Multiple Functional):
Ghi âm & Phát lại (Record): Giúp bé nghe lại giọng hát của chính mình.
Thay đổi giọng nói (Change Voice): Tạo sự thú vị và tiếng cười cho bé khi vui chơi.
Hiệu ứng âm thanh: Tiếng vỗ tay, cổ vũ (Cheers and Applause) tạo cảm giác như đang đứng trên sân khấu thật.
Kết nối MP3 hiện đại: Có cổng kết nối để phát những bài hát yêu thích của bé từ thiết bị ngoài.
Hệ thống Ánh Sáng Cực Cháy: Đèn LED nhấp nháy theo giai điệu, kích thích thị giác và tăng thêm sự phấn khích.
Điều Chỉnh Chiều Cao: Giá đỡ micro có thể thay đổi chiều cao linh hoạt để phù hợp với vóc dáng của bé.
📘 THÔNG SỐ KỸ THUẬT:
Tên sản phẩm: My Music World - Sound Box.
Kích thước hộp : 27cm x 50cm x 10cm
Độ tuổi khuyến nghị: Từ 3 tuổi trở lên (Ages 3+).
Màu sắc: Hồng chủ đạo cực kỳ dễ thương và bắt mắt.
Chất liệu: Nhựa ABS cao cấp, an toàn tuyệt đối cho trẻ nhỏ.
Lợi ích: Cải thiện sự phối hợp tay-mắt, nuôi dưỡng cảm thụ âm nhạc và nhịp điệu từ sớm.
🎁 BỘ SẢN PHẨM BAO GỒM:
1 Máy phát nhạc chính (Sound Box).
2 Micro cầm tay.
1 Chân đế micro có đèn và có thể điều chỉnh độ cao.
🛡 CAM KẾT TỪ SHOP:
Sản phẩm giống mô tả và hình ảnh 100%.
Đóng gói chắc chắn, giao hàng nhanh chóng.
Hỗ trợ đổi trả theo quy định của Shopee nếu có lỗi từ nhà sản xuất.
👉 Hãy nhấn "MUA NGAY" để tặng bé món quà âm nhạc tuyệt vời này bố mẹ nhé!
#dochoiamnhac #karaokechobe #mymusicworld #microchobe #dochoichobegai #phattrientu duy #soundbox #dochoisangtao','[{"n": "Recommended Age", "v": "1 - 3 years"}, {"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi âm nhạc']::text[],'https://shopee.vn/product/67689883/49110358432') on conflict (id) do nothing;
delete from product_images where product_id='49110358432';
insert into product_images(product_id,url,sort_order) values ('49110358432','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mom97tyxkxl9b6',0);
insert into product_images(product_id,url,sort_order) values ('49110358432','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo50klqjcr9d6b',1);
insert into product_images(product_id,url,sort_order) values ('49110358432','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofsf1qxp0jz04',2);
insert into product_images(product_id,url,sort_order) values ('49110358432','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo50py6e2rye24',3);
insert into product_images(product_id,url,sort_order) values ('49110358432','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo50r3fazchu4d',4);
delete from product_variants where product_id='49110358432'; delete from product_models where product_id='49110358432'; delete from product_categories where product_id='49110358432';
insert into product_variants(product_id,name,options,images) values ('49110358432','Loại',array['Karaoke Đồ Chơi']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7an01cmlttf9']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('49110358432','Karaoke Đồ Chơi',483990,null,'');
insert into product_categories values ('49110358432','271399347') on conflict do nothing;
insert into product_categories values ('49110358432','271741912') on conflict do nothing;
delete from reviews where product_id='49110358432' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49110358432','mickeyvngtu',5,'','Karaoke Đồ Chơi','{}'::text[],'Cảm ơn bạn đã tặng 5⭐️ ạ, chúc bạn cùng gia đình luôn vui vẽ và nhiều may mắn.',to_timestamp(1779877241));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('47613683032','Đồ Chơi Máy Làm Mì Đất Nặn Cho Bé, Đồ Chơi Cho Bé','do-choi-may-lam-mi-dat-nan-cho-be-do-choi-cho-be-83032',373030,null,511000,27,null,0,0.00,0,'{0,0,0,0,0}','','ĐỒ CHƠI MÁY LÀM MÌ ĐẤT NẶN DIY CHO BÉ – THỎA SỨC SÁNG TẠO
Biến những khối đất nặn đầy màu sắc thành các sợi mì, bánh và nhiều hình ngộ nghĩnh chỉ với vài thao tác đơn giản. Bộ đồ chơi giúp bé vừa vui chơi vừa phát triển khả năng sáng tạo, tư duy và rèn luyện sự khéo léo của đôi tay.
⭐ Ưu điểm nổi bật
✅ Máy ép mì hoạt động bằng tay quay, dễ sử dụng.
✅ Tạo nhiều kiểu sợi mì đẹp mắt.
✅ Đi kèm nhiều khuôn tạo hình ngộ nghĩnh.
✅ Chất liệu nhựa an toàn, bền đẹp.
✅ Màu sắc tươi sáng, thu hút trẻ nhỏ.
✅ Giúp phát triển tư duy sáng tạo và khả năng phối hợp tay mắt.
✅ Phù hợp cho bé chơi cùng gia đình hoặc bạn bè.
📦 Bộ sản phẩm gồm
01 Máy làm mì đất nặn
Bộ khuôn tạo hình
Dụng cụ cắt và tạo hình
Hũ đất nặn nhiều màu (tùy phiên bản)
Phụ kiện đi kèm như hình
📏 Thông tin sản phẩm
Kích Thước: 27x33x9 cm
Loại sản phẩm: Máy làm mì đất nặn DIY
Chất liệu: Nhựa ABS
Màu sắc: Nhiều màu
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Công dụng: Làm mì, tạo hình đất nặn, phát triển kỹ năng sáng tạo
🌟 Lợi ích cho bé
Phát triển trí tưởng tượng
Luyện kỹ năng vận động tinh
Tăng khả năng tập trung
Rèn luyện sự khéo léo
Giảm thời gian sử dụng thiết bị điện tử
💖 Cam kết
✔ Sản phẩm mới 100%
✔ Kiểm tra kỹ trước khi giao
✔ Đóng gói cẩn thận
✔ Hỗ trợ đổi trả theo chính sách của sàn
máy làm mì đất nặn, đồ chơi đất nặn, bộ đất nặn cho bé, đồ chơi sáng tạo, đồ chơi DIY, máy ép đất nặn, đồ chơi giáo dục, đồ chơi phát triển tư duy, đồ chơi cho bé 3 tuổi, bộ tạo hình đất nặn, đồ chơi thủ công, đồ chơi vận động tinh
#MayLamMiDatNan #DoChoiDatNan #DoChoiDIY #DoChoiSangTao #DoChoiChoBe #DoChoiGiaoDuc #MayEpDatNan #DatNanChoBe #DoChoiPhatTrienTuDuy #QuaTangChoBe #DoChoiMamNon #DoChoiTreEm','[{"n": "Material", "v": "ABS, Clay"}, {"n": "Gender", "v": "Unisex"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/47613683032') on conflict (id) do nothing;
delete from product_images where product_id='47613683032';
insert into product_images(product_id,url,sort_order) values ('47613683032','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqfrlmn6qjnw08',0);
insert into product_images(product_id,url,sort_order) values ('47613683032','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqfrdvtzecy736',1);
insert into product_images(product_id,url,sort_order) values ('47613683032','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqfrcdcwu2gyca',2);
insert into product_images(product_id,url,sort_order) values ('47613683032','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqfqzb5gfwu942',3);
insert into product_images(product_id,url,sort_order) values ('47613683032','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqfradzolcsue3',4);
delete from product_variants where product_id='47613683032'; delete from product_models where product_id='47613683032'; delete from product_categories where product_id='47613683032';
insert into product_categories values ('47613683032','271399347') on conflict do nothing;
delete from reviews where product_id='47613683032' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('50211424920','Đồ Chơi Lắp Ráp Xe Đua Biến Hình Robot 2 Trong 1 - 361 Mảnh STEM Quà Tặng Cho Bé Trai','do-choi-lap-rap-xe-dua-bien-hinh-robot-2-trong-1-361-manh-stem-qua-tang-cho-be-t-24920',316820,null,434000,27,null,0,0.00,0,'{0,0,0,0,0}','','🚗🤖 ĐỒ CHƠI LẮP RÁP XE ĐUA BIẾN HÌNH ROBOT 2IN1 SPEED MECHA 361 MẢNH ⚡
Mang đến cho bé trải nghiệm cực kỳ thú vị với Đồ Chơi Lắp Ráp Xe Đua Biến Hình Robot 2 Trong 1. Sản phẩm có thể biến đổi linh hoạt từ xe đua thể thao tốc độ cao thành robot chiến binh mạnh mẽ, giúp bé vừa chơi vừa phát triển tư duy sáng tạo và kỹ năng lắp ráp.
Với 361 mảnh ghép chi tiết, bộ đồ chơi không chỉ mang tính giải trí mà còn là một dạng đồ chơi STEM giáo dục, giúp trẻ rèn luyện tư duy logic, khả năng giải quyết vấn đề và sự kiên nhẫn trong quá trình hoàn thiện mô hình.
🌟 ƯU ĐIỂM NỔI BẬT
✔️ Thiết kế 2 trong 1: xe đua + robot biến hình cực kỳ độc đáo
✔️ Gồm 361 mảnh ghép chi tiết, tăng khả năng sáng tạo
✔️ Phong cách xe đua thể thao hiện đại, màu sắc nổi bật
✔️ Khớp nối chắc chắn, dễ lắp ráp và tháo rời
✔️ Chất liệu nhựa ABS cao cấp, an toàn cho trẻ nhỏ
✔️ Giúp phát triển tư duy logic, sáng tạo và kỹ năng vận động
✔️ Phù hợp cho bé yêu thích xe đua và robot chiến binh
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Speed Mecha Keep Going
• Mã sản phẩm: BB206
• Số lượng chi tiết: 361 PCS
• Kích thước: 24 x 38 x 6 cm
• Chất liệu: Nhựa ABS cao cấp
• Màu sắc: Trắng – Xanh – Đỏ – Đen
• Chủ đề: Xe đua biến hình robot
• Độ tuổi phù hợp: Từ 6 tuổi trở lên
• Kiểu lắp ráp: Tự lắp ghép STEM
🧠 LỢI ÍCH KHI BÉ VUI CHƠI
🧩 Phát triển tư duy logic và khả năng giải quyết vấn đề
🧩 Tăng khả năng tập trung và tính kiên nhẫn
🧩 Kích thích trí tưởng tượng và sáng tạo
🧩 Rèn luyện kỹ năng phối hợp tay – mắt
🧩 Giảm thời gian sử dụng điện thoại và TV
🧩 Hỗ trợ phát triển tư duy kỹ thuật từ nhỏ
🎁 MÓN QUÀ Ý NGHĨA DÀNH CHO BÉ
Bộ xe đua biến hình robot 361 mảnh là món quà lý tưởng dành cho các bé yêu thích mô hình, robot và xe đua tốc độ. Phù hợp làm quà sinh nhật, Noel, Quốc tế Thiếu nhi, hoặc phần thưởng học tập.
💖 CAM KẾT TỪ SHOP
✔️ Hàng mới 100%
✔️ Đóng gói chống sốc cẩn thận
✔️ Hỗ trợ đổi trả theo quy định Shopee
✔️ Tư vấn nhanh chóng trước & sau mua hàng
#DoChoiLapRap #XeBienHinh #RobotXeDua #SpeedMecha #DoChoiSTEM #DoChoiChoBe #DoChoiTreEm #DoChoiBeTrai #LapRap361Manh #DoChoiSangTao #DoChoiTriTue #XeDuaRobot #QuaTangChoBe #DoChoi6Tuoi #DoChoiABS #DoChoiThongMinh #RobotBienHinh #XeDuaLapRap #DoChoiKyNang #DoChoiGiaoDuc','[{"n": "Block Type", "v": "Sets"}, {"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Manufacturer/trader address", "v": "Updating"}, {"n": "Country of Origin", "v": "China"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/50211424920') on conflict (id) do nothing;
delete from product_images where product_id='50211424920';
insert into product_images(product_id,url,sort_order) values ('50211424920','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mown6czjhdzi73',0);
insert into product_images(product_id,url,sort_order) values ('50211424920','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowmu9qawc8w56',1);
insert into product_images(product_id,url,sort_order) values ('50211424920','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowmxpsjpr0h65',2);
insert into product_images(product_id,url,sort_order) values ('50211424920','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowmudca6nsweb',3);
insert into product_images(product_id,url,sort_order) values ('50211424920','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowmwl2hyrcy88',4);
delete from product_variants where product_id='50211424920'; delete from product_models where product_id='50211424920'; delete from product_categories where product_id='50211424920';
insert into product_variants(product_id,name,options,images) values ('50211424920','Chất Lượng',array['Mới 100%']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpmd0tt3rpccfb']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('50211424920','Mới 100%',316820,null,'');
insert into product_categories values ('50211424920','271399347') on conflict do nothing;
insert into product_categories values ('50211424920','271741642') on conflict do nothing;
insert into product_categories values ('50211424920','271742074') on conflict do nothing;
delete from reviews where product_id='50211424920' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('53810343581','Sách Điện Tử Song Ngữ Cho Bé, Máy Học Tiếng Việt & Tiếng Anh Thông Minh, Đồ Chơi Giáo Dục Cho Trẻ Em','sach-dien-tu-song-ngu-cho-be-may-hoc-tieng-viet-tieng-anh-thong-minh-do-choi-gia-43581',233600,null,320000,27,null,4,0.00,0,'{0,0,0,0,0}','','📚 SÁCH ĐIỆN TỬ SONG NGỮ THÔNG MINH CHO BÉ
Giúp bé vừa học vừa chơi, phát triển tư duy và khả năng ngôn ngữ ngay từ nhỏ với chiếc sách điện tử đa năng đầy màu sắc và âm thanh sinh động.
✨ Thiết kế trực quan, hình ảnh đáng yêu giúp bé hứng thú học tập mỗi ngày!
🌟 ƯU ĐIỂM NỔI BẬT
✔️ Học song ngữ Tiếng Việt & Tiếng Anh
✔️ Âm thanh chuẩn, rõ ràng dễ nghe
✔️ Nhiều chủ đề học tập thú vị cho bé
✔️ Phát triển tư duy, ghi nhớ và phản xạ ngôn ngữ
✔️ Thiết kế bo góc an toàn cho trẻ nhỏ
✔️ Nhỏ gọn – dễ mang theo khi đi chơi hoặc du lịch
📖 NỘI DUNG HỌC TẬP
🔹 Chữ cái
🔹 Con số
🔹 Động vật
🔹 Trái cây
🔹 Phương tiện
🔹 Màu sắc
🔹 Nhận biết đồ vật
🔹 Phát âm tiếng Anh cơ bản
👶 ĐỐI TƯỢNG SỬ DỤNG
Phù hợp cho bé từ 3 tuổi trở lên
Thích hợp làm quà tặng sinh nhật, quà Noel, quà cho bé yêu
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Sách điện tử song ngữ cho bé
Ngôn ngữ: Tiếng Việt + Tiếng Anh
Kích thước hộp : 24cm x 26cm x 2cm
Chất liệu: Nhựa ABS an toàn
Độ tuổi: 3+
Công dụng: Học tập – giải trí – phát triển tư duy
🎁 CAM KẾT TỪ SHOP
✅ Sản phẩm giống hình 100%
✅ Kiểm tra kỹ trước khi giao
✅ Hỗ trợ đổi trả nếu lỗi từ nhà sản xuất
✅ Tư vấn tận tình trước và sau mua hàng
#sachdientu #dochoigiaoduc #dochoitreem #dochoithongminh #sachhoctienganh #dochoichobe #mayhoctapchobe #dochoi3tuoi #sachsongngu #quatangchobe




','[{"n": "Custom Product", "v": "No"}, {"n": "Gender", "v": "Unisex"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Khác']::text[],'https://shopee.vn/product/67689883/53810343581') on conflict (id) do nothing;
delete from product_images where product_id='53810343581';
insert into product_images(product_id,url,sort_order) values ('53810343581','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mon1qmbbv4lq4c',0);
insert into product_images(product_id,url,sort_order) values ('53810343581','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofqqp87u2obfc',1);
insert into product_images(product_id,url,sort_order) values ('53810343581','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo54bc6w6epv4c',2);
insert into product_images(product_id,url,sort_order) values ('53810343581','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo547quy02rn1d',3);
insert into product_images(product_id,url,sort_order) values ('53810343581','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo54a6kbafie1a',4);
delete from product_variants where product_id='53810343581'; delete from product_models where product_id='53810343581'; delete from product_categories where product_id='53810343581';
insert into product_variants(product_id,name,options,images) values ('53810343581','Loại',array['Mới 100%']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mq2s6uauhe6mc5']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('53810343581','Mới 100%',233600,null,'');
insert into product_categories values ('53810343581','271399347') on conflict do nothing;
delete from reviews where product_id='53810343581' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('52461492001','Cờ Thả Capybara Connect 4 Trò Chơi Trí Tuệ Rèn Tư Duy Logic Đồ Chơi Cho Bé','co-tha-capybara-connect-4-tro-choi-tri-tue-ren-tu-duy-logic-do-choi-cho-be-92001',167170,null,229000,27,null,0,0.00,0,'{0,0,0,0,0}','','🧸 CỜ THẢ CAPYBARA CONNECT 4 – TRÒ CHƠI TRÍ TUỆ PHÁT TRIỂN TƯ DUY CHO BÉ 🔥
Mang đến cho bé và cả gia đình những phút giây giải trí vui nhộn với Cờ Thả Capybara Connect 4, trò chơi chiến thuật đơn giản nhưng cực kỳ cuốn hút.
Bé sẽ học cách quan sát, suy luận và xây dựng chiến lược để tạo thành 4 quân liên tiếp, từ đó phát triển tư duy logic một cách tự nhiên thông qua trò chơi.
⭐ ĐIỂM NỔI BẬT
✔️ Thiết kế Capybara dễ thương, màu sắc bắt mắt
✔️ Chất liệu nhựa ABS cao cấp, an toàn cho trẻ
✔️ Bề mặt mịn, bo góc an toàn khi chơi
✔️ Dễ hiểu, dễ chơi cho cả trẻ em và người lớn
✔️ Gấp gọn tiện lợi, dễ mang theo du lịch
✔️ Tăng khả năng tư duy và phản xạ nhanh
🎯 LỢI ÍCH CHO BÉ
🧠 Phát triển tư duy logic và chiến lược
🧠 Tăng khả năng quan sát và tập trung
🧠 Rèn luyện kỹ năng giải quyết vấn đề
🧠 Tăng tương tác xã hội khi chơi cùng bạn bè
🧠 Giảm thời gian sử dụng thiết bị điện tử
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Cờ thả Capybara Connect 4
• Kích thước: 27 x 27 x 5 cm
• Chất liệu: Nhựa ABS cao cấp
• Số người chơi: 2 người
• Độ tuổi phù hợp: Từ 3 tuổi trở lên
• Chủ đề: Capybara dễ thương
🎮 CÁCH CHƠI
✔️ Mỗi người chọn 1 màu quân cờ
✔️ Lần lượt thả quân vào bảng
✔️ Tạo 4 quân liên tiếp ngang/dọc/chéo để thắng
✔️ Chơi lại nhiều ván để luyện chiến thuật
🎁 PHÙ HỢP LÀM QUÀ TẶNG
🎂 Sinh nhật bé trai, bé gái
🎄 Noel, Trung Thu, Tết Thiếu Nhi
👨‍👩‍👧 Trò chơi gắn kết gia đình
🏫 Đồ chơi giáo dục tại nhà
💖 CAM KẾT TỪ SHOP
✔️ Sản phẩm đúng mô tả 100%
✔️ Đóng gói cẩn thận chống hư hỏng
✔️ Hỗ trợ khách hàng nhanh chóng
✔️ Kiểm tra kỹ trước khi giao hàng
#CapybaraConnect4 #CoThaCapybara #DoChoiTriTue #DoChoiGiaDinh #Connect4 #DoChoiTreEm #DoChoiGiaoDuc #GameTriTue #DoChoiChoBe #QuaTangChoBe #DoChoiABS #CapybaraToy #DoChoiThongMinh #DoChoiPhatTrienTuDuy #ShopeeKids','[{"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}, {"n": "Gender", "v": "Unisex"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Khác']::text[],'https://shopee.vn/product/67689883/52461492001') on conflict (id) do nothing;
delete from product_images where product_id='52461492001';
insert into product_images(product_id,url,sort_order) values ('52461492001','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy3uvkvtwcsce',0);
insert into product_images(product_id,url,sort_order) values ('52461492001','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy3f59db8csa0',1);
insert into product_images(product_id,url,sort_order) values ('52461492001','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy3hkh8vrbi35',2);
insert into product_images(product_id,url,sort_order) values ('52461492001','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy3bbkm1a8f66',3);
insert into product_images(product_id,url,sort_order) values ('52461492001','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy3j5ocl3bi38',4);
delete from product_variants where product_id='52461492001'; delete from product_models where product_id='52461492001'; delete from product_categories where product_id='52461492001';
insert into product_categories values ('52461492001','271399347') on conflict do nothing;
insert into product_categories values ('52461492001','271742027') on conflict do nothing;
delete from reviews where product_id='52461492001' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('57710350290','Bộ Đồ Chơi Đất Nặn DIY Hamburger và Gà Rán, Phát Triển Sáng Tạo Cho Bé - An Toàn, Đầy Đủ Phụ Kiện','bo-do-choi-dat-nan-diy-hamburger-va-ga-ran-phat-trien-sang-tao-cho-be-an-toan-da-50290',273020,null,374000,27,null,1,0.00,0,'{0,0,0,0,0}','','💥💥💥 KHƠI DẬY SÁNG TẠO - "LÀM BẾP" CỰC VUI CÙNG BỘ ĐẤT NẶN FAST FOOD CHUYÊN NGHIỆP! 💥💥💥
Bạn đang tìm kiếm một món quà vừa chơi, vừa học, lại cực kỳ an toàn cho bé yêu? Bộ đồ chơi Đất Nặn DIY "Vua Hamburger & Gà Rán" từ thương hiệu Jia Pei Le chính là câu trả lời hoàn hảo!
🛒 Tại sao bố mẹ nên chọn bộ đất nặn này cho bé?
Chủ Đề Fast Food Hấp Dẫn: Trẻ em luôn bị thu hút bởi những món ăn nhanh. Bộ sản phẩm tái hiện sinh động "menu" phổ biến nhất: Hamburger tầng, Đùi gà rán giòn rụm, Khoai tây chiên, Salad... giúp bé hào hứng ngay từ cái nhìn đầu tiên.
Bộ Phụ Kiện Đầy Đủ & Chuyên Nghiệp: Không chỉ có đất nặn màu sắc, bộ sản phẩm còn đi kèm các khuôn mẫu chính xác để tạo hình từng lớp hamburger, đùi gà, khoai tây. Bé sẽ cảm thấy mình như một đầu bếp thực thụ! 
Học Mà Chơi - Phát Triển Toàn Diện:
🧑‍🎨 Phát triển trí tưởng tượng & sáng tạo: Bé có thể tự do phối màu, tạo ra những món ăn theo cách riêng của mình.
🖐️ Rèn luyện kỹ năng vận động tinh: Các thao tác nhào, nặn, cắt, ép giúp đôi tay bé linh hoạt và khéo léo hơn.
🤔 Phát triển tư duy không gian: Hiểu về cấu trúc tầng của hamburger, hình dạng các loại thực phẩm.
🗣️ Tăng cường tương tác xã hội: Khuyến khích bé chơi cùng bạn bè hoặc bố mẹ, cùng nhau "kinh doanh" cửa hàng đồ ăn nhanh.
An Toàn Tuyệt Đối (Dành Cho Bé 3+): Đất nặn được làm từ nguyên liệu an toàn, không độc hại, không gây kích ứng da. Màu sắc tươi sáng, bắt mắt nhưng không lem màu. (Bố mẹ vẫn nên giám sát bé khi chơi).
Dễ Dàng Vệ Sinh & Bảo Quản: Đất nặn có độ dẻo cao, dễ tạo hình và cũng dễ dàng thu dọn sau khi chơi. Hộp đựng tiện lợi.
🌟 Thông Tin Chi Tiết Sản Phẩm:
Tên sản phẩm: Bộ Đồ Chơi Đất Nặn DIY "Vua Hamburger & Gà Rán"
Thương hiệu: Jia Pei Le
Kích thước hộp : 28cm x 37cm x 6cm
Độ tuổi khuyến nghị: 3 tuổi trở lên
Màu sắc: Đa dạng màu sắc tươi sáng (như hình Gemini_Generated_Image_4z6orl4z6orl4z6o.png)
Chất liệu: Đất nặn an toàn, phụ kiện nhựa PP cao cấp
Bộ sản phẩm bao gồm: Các hũ đất nặn màu, khuôn tạo hình hamburger, khuôn gà rán, khuôn khoai tây, dụng cụ cắt và các phụ kiện trang trí khác (tất cả được minh họa trực quan trên bao bì Gemini_Generated_Image_4z6orl4z6orl4z6o.png).
🎁 Ý Nghĩa Món Quà: Đây là món quà sinh nhật, quà Giáng sinh hoặc phần thưởng tuyệt vời cho bé yêu, giúp bé rời xa màn hình điện thoại và tận hưởng những giờ phút sáng tạo bổ ích.
🛒 HÃY BẤM "MUA NGAY" ĐỂ CÙNG BÉ MỞ CỬA HÀNG FAST FOOD TẠI GIA!
Nhà Bán Hàng Cam Kết:
Sản phẩm giống hình 100% (minh họa chi tiết trên hình Gemini_Generated_Image_4z6orl4z6orl4z6o.png).
Hàng chính hãng, an toàn cho bé.
Giao hàng nhanh chóng, đổi trả dễ dàng.
#dochoichobe #datnan #datnanchobe #datnanDIY #datnansangtao #jiapeile #jiapeilecoloringmud #setdatnan #mohinhdoan #hamburger #garan #dochoigiao duc #phattrientritue #quasinhnhatchobe #shopeevietnam #Gemini_Generated_Image_4z6orl4z6orl4z6o.png','[{"n": "Material", "v": "ABS, Clay"}, {"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Custom Product", "v": "No"}, {"n": "Model Name", "v": "DIY Hamburger và Gà Rán"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi mỹ thuật & Thủ công']::text[],'https://shopee.vn/product/67689883/57710350290') on conflict (id) do nothing;
delete from product_images where product_id='57710350290';
insert into product_images(product_id,url,sort_order) values ('57710350290','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mon24afa22o148',0);
insert into product_images(product_id,url,sort_order) values ('57710350290','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo4yp8tz0xdue3',1);
insert into product_images(product_id,url,sort_order) values ('57710350290','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofq60syjx1re3',2);
insert into product_images(product_id,url,sort_order) values ('57710350290','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo4ytncj6m1117',3);
insert into product_images(product_id,url,sort_order) values ('57710350290','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo4yp8ty7fgh0b',4);
delete from product_variants where product_id='57710350290'; delete from product_models where product_id='57710350290'; delete from product_categories where product_id='57710350290';
insert into product_variants(product_id,name,options,images) values ('57710350290','Loại',array['Bộ Đồ Chơi Đất Nặn']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7azgdcbt3991']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('57710350290','Bộ Đồ Chơi Đất Nặn',273020,null,'');
insert into product_categories values ('57710350290','271399347') on conflict do nothing;
delete from reviews where product_id='57710350290' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('58162060048','Đồ Chơi Mê Cung Nam Châm , Đồ Chơi Cho Bé','do-choi-me-cung-nam-cham-do-choi-cho-be-60048',447490,null,613000,27,null,0,0.00,0,'{0,0,0,0,0}','','MAGNETIC MAZE – ĐỒ CHƠI MÊ CUNG NAM CHÂM GIÁO DỤC THÔNG MINH CHO BÉ
Giúp bé vừa chơi vừa học với bộ đồ chơi mê cung nam châm Magnetic Maze. Bé sử dụng bút từ tính để điều khiển các viên bi di chuyển qua mê cung, hoàn thành các thử thách thú vị và phát triển toàn diện các kỹ năng cần thiết trong giai đoạn đầu đời.
🌟 Ưu điểm nổi bật
✅ Rèn luyện tư duy logic và khả năng giải quyết vấn đề
✅ Phát triển khả năng phối hợp tay – mắt
✅ Tăng cường sự tập trung và tính kiên nhẫn
✅ Thiết kế nam châm an toàn, bi được bảo vệ bên trong bảng chơi
✅ Màu sắc sinh động, thu hút sự chú ý của trẻ
✅ Chất liệu nhựa ABS cao cấp, bền đẹp, không chứa chất độc hại
✅ Phù hợp cho bé chơi tại nhà, trường mầm non hoặc các lớp Montessori
🎯 Lợi ích cho bé
🔹 Kích thích trí tưởng tượng và sáng tạo
🔹 Phát triển kỹ năng vận động tinh
🔹 Nâng cao khả năng nhận biết màu sắc và định hướng không gian
🔹 Hạn chế thời gian sử dụng điện thoại, tivi
🔹 Tạo thói quen học tập thông qua trò chơi
📦 Thông tin sản phẩm
Kích Thước: 22x31x6 cm
Loại đồ chơi: Mê cung nam châm giáo dục
Chất liệu: Nhựa ABS cao cấp
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Màu sắc: Nhiều màu
Công dụng: Phát triển tư duy, vận động tinh, khả năng tập trung
🎁 Phù hợp làm quà tặng
🎉 Quà sinh nhật cho bé
🎉 Quà Noel, Quốc tế Thiếu nhi
🎉 Quà thưởng học tập
🎉 Quà tặng giáo dục ý nghĩa cho bé trai và bé gái
💖 Cam kết từ Shop
✔ Sản phẩm đúng mô tả
✔ Kiểm tra kỹ trước khi đóng gói
✔ Hỗ trợ đổi trả theo quy định Shopee
✔ Tư vấn nhiệt tình 24/7
Đồ chơi mê cung nam châm, magnetic maze, đồ chơi Montessori, đồ chơi giáo dục cho bé, đồ chơi phát triển trí tuệ, đồ chơi tư duy logic, đồ chơi STEM cho trẻ em, đồ chơi vận động tinh, quà tặng cho bé 3 tuổi, đồ chơi thông minh cho bé.','[{"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi xếp hình']::text[],'https://shopee.vn/product/67689883/58162060048') on conflict (id) do nothing;
delete from product_images where product_id='58162060048';
insert into product_images(product_id,url,sort_order) values ('58162060048','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpcamecwjg1u94',0);
insert into product_images(product_id,url,sort_order) values ('58162060048','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbzyu4pzle7d6',1);
insert into product_images(product_id,url,sort_order) values ('58162060048','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpc01r4kjk0ebf',2);
insert into product_images(product_id,url,sort_order) values ('58162060048','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpc01w2985qjb4',3);
insert into product_images(product_id,url,sort_order) values ('58162060048','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpbzwip6pekhbb',4);
delete from product_variants where product_id='58162060048'; delete from product_models where product_id='58162060048'; delete from product_categories where product_id='58162060048';
insert into product_categories values ('58162060048','271399347') on conflict do nothing;
delete from reviews where product_id='58162060048' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('48261422212','Robot Ninja Biến Hình 3in1 168 Mảnh Ghép Đồ Chơi Lắp Ráp Trí Tuệ STEM Quà Tặng Cho Bé','robot-ninja-bien-hinh-3in1-168-manh-ghep-do-choi-lap-rap-tri-tue-stem-qua-tang-c-22212',284700,null,390000,27,null,4,0.00,0,'{0,0,0,0,0}','','🥷 ROBOT NINJA BIẾN HÌNH 3IN1 – 168 MẢNH GHÉP ĐỒ CHƠI LẮP RÁP TRÍ TUỆ CHO BÉ 🤖
Khơi dậy niềm đam mê sáng tạo với Robot Ninja Biến Hình 3in1 gồm 168 mảnh ghép. Bé có thể tự tay lắp ráp thành nhiều mô hình khác nhau, trong đó nổi bật là Robot Ninja chiến binh cực ngầu. Đây là đồ chơi lắp ráp trí tuệ cho bé giúp trẻ vừa vui chơi vừa phát triển tư duy logic, khả năng sáng tạo và kỹ năng giải quyết vấn đề.
Sản phẩm thuộc dòng đồ chơi STEM, mang đến trải nghiệm học mà chơi, giúp bé rèn luyện tính kiên nhẫn, sự tập trung và khả năng phối hợp tay – mắt trong quá trình lắp ráp.
🌟 ĐẶC ĐIỂM NỔI BẬT
✅ Thiết kế 3 trong 1, lắp ráp được 3 mô hình độc đáo.
✅ Mô hình Robot Ninja biến hình mạnh mẽ, cá tính.
✅ Gồm 168 mảnh ghép chắc chắn, dễ thao tác.
✅ Màu sắc đỏ – xanh nổi bật, thu hút bé.
✅ Tương thích với nhiều loại gạch lắp ráp phổ biến.
✅ Chất liệu nhựa ABS cao cấp, bền đẹp và an toàn.
✅ Giúp bé phát triển tư duy logic, khả năng sáng tạo và kỹ năng lắp ráp.
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Robot Ninja Biến Hình 3in1
• Kích thước hộp: 27 x 39 x 6 cm
• Số lượng chi tiết: 168 PCS
• Chất liệu: Nhựa ABS cao cấp
• Chủ đề: Ninja – Robot – Chiến binh biến hình
• Kiểu lắp ráp: 3 trong 1
• Độ tuổi phù hợp: Từ 6 tuổi trở lên
🎯 LỢI ÍCH KHI BÉ VUI CHƠI
🧠 Phát triển tư duy logic và khả năng giải quyết vấn đề.
🧠 Rèn luyện khả năng tập trung, tính kiên nhẫn và sự tỉ mỉ.
🧠 Tăng khả năng phối hợp tay – mắt.
🧠 Kích thích trí tưởng tượng và óc sáng tạo.
🧠 Khuyến khích bé khám phá kỹ thuật và mô hình lắp ráp.
🧠 Giảm thời gian sử dụng điện thoại và các thiết bị điện tử.
🎁 MÓN QUÀ Ý NGHĨA DÀNH CHO BÉ
Bộ Robot Ninja Biến Hình 3in1 là món quà lý tưởng dành cho các bé yêu thích robot, ninja và đồ chơi lắp ráp. Phù hợp làm quà sinh nhật, Noel, Quốc tế Thiếu nhi, phần thưởng học tập hoặc quà tặng khuyến khích bé khám phá và sáng tạo.
💖 CAM KẾT TỪ SHOP
✔️ Hàng mới 100%.
✔️ Kiểm tra kỹ sản phẩm trước khi đóng gói.
✔️ Đóng gói cẩn thận, hạn chế va đập khi vận chuyển.
✔️ Hỗ trợ khách hàng nhanh chóng và đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
#RobotNinja #RobotBienHinh #Robot3in1 #DoChoiLapRap #DoChoiSTEM #DoChoiTriTue #DoChoiChoBe #DoChoiTreEm #LapRap168Manh #RobotLapRap #DoChoiBeTrai #DoChoiSangTao #DoChoiGiaoDuc #QuaTangChoBe #QuaTangBeTrai #QuaTangSinhNhat #DoChoi6Tuoi #NinjaRobot #LapRapRobot #NhuaABSCaoCap','[{"n": "Recommended Age", "v": ">=6 years old"}, {"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Material", "v": "ABS"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/48261422212') on conflict (id) do nothing;
delete from product_images where product_id='48261422212';
insert into product_images(product_id,url,sort_order) values ('48261422212','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov7w7lg4bnz79',0);
insert into product_images(product_id,url,sort_order) values ('48261422212','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov7bxr3e1vzc8',1);
insert into product_images(product_id,url,sort_order) values ('48261422212','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov77vizhzb524',2);
insert into product_images(product_id,url,sort_order) values ('48261422212','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mov7aph2nkzmde',3);
insert into product_images(product_id,url,sort_order) values ('48261422212','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mowldjh74lcc58',4);
delete from product_variants where product_id='48261422212'; delete from product_models where product_id='48261422212'; delete from product_categories where product_id='48261422212';
insert into product_categories values ('48261422212','271399347') on conflict do nothing;
insert into product_categories values ('48261422212','271741642') on conflict do nothing;
delete from reviews where product_id='48261422212' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('58163846856','Bàn Bida Mini Cho Bé Kèm Bi, 2 Gậy Và Khung Xếp Bi, Đồ Chơi Cho Bé','ban-bida-mini-cho-be-kem-bi-2-gay-va-khung-xep-bi-do-choi-cho-be-46856',501000,null,668000,25,null,0,0.00,0,'{0,0,0,0,0}','','Bộ đồ chơi bida mini cho bé mô phỏng bàn bida thu nhỏ với đầy đủ phụ kiện, giúp trẻ làm quen với cách ngắm, đánh bi và vui chơi tương tác cùng bạn bè, ba mẹ. Thiết kế màu sắc nổi bật, phù hợp sử dụng tại nhà hoặc làm quà tặng cho bé.
Đặc điểm nổi bật
Mô phỏng bàn bida mini sinh động, dễ chơi.
Bộ phụ kiện gồm bàn chơi, bi màu, bi trắng, 2 gậy đánh bi và khung xếp bi.
Hỗ trợ rèn luyện sự tập trung, khả năng quan sát và phối hợp tay – mắt.
Tạo hoạt động giải trí lành mạnh, tăng tương tác giữa trẻ và gia đình.
Kích thước nhỏ gọn, thuận tiện cất giữ và mang theo.
Phù hợp làm quà sinh nhật, quà lễ hoặc phần thưởng cho bé.
Cách chơi
Xếp các viên bi vào khung tam giác.
Đặt bi trắng tại vị trí bắt đầu.
Dùng gậy ngắm và đánh bi vào các lỗ trên bàn.
Có thể chơi cá nhân hoặc thi đấu cùng bạn bè, người thân.
Thông tin sản phẩm
Kích Thước : 49x30x7 cm
Tên sản phẩm: Bộ đồ chơi bida mini cho bé
Màu sắc: Nhiều màu nổi bật
Độ tuổi tham khảo: Từ 3 tuổi trở lên
Hình thức chơi: Cá nhân, bạn bè hoặc tương tác gia đình
Lưu ý: Sản phẩm có các chi tiết nhỏ, nên sử dụng dưới sự giám sát của người lớn. Màu sắc và một số chi tiết bao bì có thể thay đổi tùy từng đợt hàng
#banbidamini #bộđồchơibida #dochoibidamini #dochoichobe #dochoitreem #trochoigiadinh #dochoigiaoduc #dochoivantdong #renluyenkheoleo #quatangchobe','[{"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi vận động & Ngoài trời','Đồ chơi thể thao']::text[],'https://shopee.vn/product/67689883/58163846856') on conflict (id) do nothing;
delete from product_images where product_id='58163846856';
insert into product_images(product_id,url,sort_order) values ('58163846856','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjysm09s35s34',0);
insert into product_images(product_id,url,sort_order) values ('58163846856','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjygujcn1mz8a',1);
insert into product_images(product_id,url,sort_order) values ('58163846856','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjyj33mzjlu09',2);
insert into product_images(product_id,url,sort_order) values ('58163846856','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjyjxtar4zlb6',3);
insert into product_images(product_id,url,sort_order) values ('58163846856','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjyrn7t76yz5b',4);
delete from product_variants where product_id='58163846856'; delete from product_models where product_id='58163846856'; delete from product_categories where product_id='58163846856';
insert into product_categories values ('58163846856','khac') on conflict do nothing;
delete from reviews where product_id='58163846856' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('52710486522','Bộ Đồ Chơi Nhà Bếp Mini Cho Bé, Bộ Nấu Ăn Đồ Chơi Kèm Nồi Chảo Dụng Cụ Nhà Bếp Cho Bé Trai Bé Gái','bo-do-choi-nha-bep-mini-cho-be-bo-nau-an-do-choi-kem-noi-chao-dung-cu-nha-bep-ch-86522',176660,null,242000,27,null,3,0.00,0,'{0,0,0,0,0}','','🍳 BỘ ĐỒ CHƠI NHÀ BẾP LITTLE CHEF SIÊU DỄ THƯƠNG CHO BÉ
Giúp bé hóa thân thành đầu bếp nhí với đầy đủ dụng cụ nấu ăn sinh động, màu sắc bắt mắt và thiết kế an toàn cho trẻ nhỏ.
✨ Thông tin nổi bật:
✔️ Bộ đồ chơi gồm nhiều phụ kiện nhà bếp mini: nồi, chảo, muỗng, xẻng, thực phẩm giả lập…
✔️ Thiết kế màu sắc nổi bật giúp bé thích thú khi chơi
✔️ Chất liệu nhựa an toàn, bề mặt nhẵn mịn
✔️ Kích thước phù hợp tay cầm của bé
✔️ Giúp bé phát triển trí tưởng tượng và khả năng giao tiếp
🎯 Lợi ích cho bé:
Rèn luyện khả năng sáng tạo và tư duy
Tăng kỹ năng nhận biết đồ vật và màu sắc
Giúp bé vui chơi hạn chế điện thoại, tivi
Phù hợp chơi cùng bạn bè và gia đình
👶 Độ tuổi phù hợp:
Bé từ 3 tuổi trở lên
📦 Bộ sản phẩm bao gồm:
Nồi mini có nắp
Chảo mini
Bộ dụng cụ nấu ăn
Rau củ/thực phẩm đồ chơi
Khay đựng tiện lợi
Kích thước hộp : 20cm x 39cm x 5cm
🎁 Phù hợp làm quà tặng:
Sinh nhật, quà Noel, quà thưởng cho bé trai và bé gái.
💯 Cam kết từ shop:
Hình ảnh thật giống mô tả
Đóng gói cẩn thận
Hỗ trợ đổi trả nếu lỗi từ nhà sản xuất
#dochoichobe #dochoinhabep #littlechef #bodochoinauan #dochoigiaoduc #dochoibetrai #dochoibegai #shopeevietnam




','[]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/52710486522') on conflict (id) do nothing;
delete from product_images where product_id='52710486522';
insert into product_images(product_id,url,sort_order) values ('52710486522','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mom7gqukx4apce',0);
insert into product_images(product_id,url,sort_order) values ('52710486522','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mofuj5ij7pjicc',1);
insert into product_images(product_id,url,sort_order) values ('52710486522','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7zkv3re9s2e3',2);
insert into product_images(product_id,url,sort_order) values ('52710486522','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7zlfl6g9vld0',3);
insert into product_images(product_id,url,sort_order) values ('52710486522','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo7zm14jb4sm2b',4);
delete from product_variants where product_id='52710486522'; delete from product_models where product_id='52710486522'; delete from product_categories where product_id='52710486522';
insert into product_variants(product_id,name,options,images) values ('52710486522','Loại',array['Bộ Đồ Chơi Nhà Bếp']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mo8e8fu7hh4z9a']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('52710486522','Bộ Đồ Chơi Nhà Bếp',176660,null,'');
insert into product_categories values ('52710486522','271399347') on conflict do nothing;
insert into product_categories values ('52710486522','271741912') on conflict do nothing;
delete from reviews where product_id='52710486522' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('57161898034','Đồ Chơi Lâu Đài Lắp Ghép Cho Bé – Phát Triển Tư Duy Sáng Tạo, Đồ Chơi Cho Bé','do-choi-lau-dai-lap-ghep-cho-be-phat-trien-tu-duy-sang-tao-do-choi-cho-be-98034',239440,null,328000,27,null,0,0.00,0,'{0,0,0,0,0}','','LÂU ĐÀI LẮP GHÉP 45 CHI TIẾT – THẾ GIỚI CỔ TÍCH THU NHỎ CHO BÉ
Mang đến cho bé những giờ vui chơi bổ ích với bộ Lâu Đài Lắp Ghép 45PCS được thiết kế đẹp mắt theo phong cách lâu đài hoàng gia. Bé có thể tự tay lắp ráp, sáng tạo và xây dựng không gian cổ tích của riêng mình, giúp phát triển tư duy logic và khả năng khéo léo.
✨ Ưu điểm nổi bật
✅ Thiết kế lâu đài cổ tích sang trọng, màu sắc đẹp mắt.
✅ Gồm 45 chi tiết lắp ghép, dễ dàng tháo lắp và sáng tạo nhiều cách chơi.
✅ Chất liệu nhựa an toàn, bề mặt nhẵn mịn, thân thiện với trẻ nhỏ.
✅ Giúp bé phát triển:
Tư duy logic
Khả năng sáng tạo
Kỹ năng vận động tinh
Sự tập trung và kiên nhẫn
✅ Phù hợp cho bé chơi một mình hoặc cùng bạn bè, gia đình.
📦 Thông tin sản phẩm
Kích Thước: 21x30x10 cm 
Tên sản phẩm: Lâu Đài Lắp Ghép Play House Set
Số lượng chi tiết: 45 PCS
Chất liệu: Nhựa cao cấp
Màu sắc: Nâu kem
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Đóng gói: Hộp màu đẹp mắt, thích hợp làm quà tặng
🎁 Quà tặng ý nghĩa cho bé
Bộ đồ chơi lâu đài lắp ghép là món quà lý tưởng cho các dịp:
🎂 Sinh nhật
🎄 Noel
🎊 Tết thiếu nhi
🎁 Phần thưởng học tập
💖 Cam kết từ shop
✔ Sản phẩm mới 100%
✔ Đóng gói cẩn thận
✔ Hỗ trợ đổi trả theo chính sách Shopee
✔ Tư vấn nhiệt tình trước và sau mua hàng
Hashtag Shopee
#DoChoiLapGhep #LauDaiLapGhep #DoChoiTreEm #DoChoiSangTao #DoChoiPhatTrienTriTue #PlayHouseSet #DoChoiChoBe #QuaTangChoBe #DoChoiDIY #DoChoiLapRap','[{"n": "Recommended Age", "v": "<6 years old"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi lắp ráp']::text[],'https://shopee.vn/product/67689883/57161898034') on conflict (id) do nothing;
delete from product_images where product_id='57161898034';
insert into product_images(product_id,url,sort_order) values ('57161898034','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp94n637yj2924',0);
insert into product_images(product_id,url,sort_order) values ('57161898034','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqatzd6se0w014',1);
insert into product_images(product_id,url,sort_order) values ('57161898034','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqau4ul80xz552',2);
insert into product_images(product_id,url,sort_order) values ('57161898034','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp948caso7ijb7',3);
insert into product_images(product_id,url,sort_order) values ('57161898034','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp94d1ayyz2828',4);
delete from product_variants where product_id='57161898034'; delete from product_models where product_id='57161898034'; delete from product_categories where product_id='57161898034';
insert into product_categories values ('57161898034','271399347') on conflict do nothing;
delete from reviews where product_id='57161898034' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('44861560851','Bộ 8 Xe Ô Tô Mô Hình Kim Loại Die Cast Xe Đua Hợp Kim Đồ Chơi Sưu Tầm Cho Bé','bo-8-xe-o-to-mo-hinh-kim-loai-die-cast-xe-dua-hop-kim-do-choi-suu-tam-cho-be-60851',323390,null,443000,27,null,2,0.00,0,'{0,0,0,0,0}','','🚗 BỘ 8 XE Ô TÔ MÔ HÌNH KIM LOẠI DIE CAST – XE ĐUA HỢP KIM ĐỒ CHƠI CHO BÉ
Bộ 8 xe ô tô mô hình kim loại Die Cast là món đồ chơi xe ô tô được nhiều bé yêu thích nhờ thiết kế thể thao hiện đại, màu sắc nổi bật và chất liệu hợp kim bền chắc. Bộ xe đua đồ chơi kim loại gồm 8 mẫu xe khác nhau, giúp bé thỏa sức sáng tạo những cuộc đua hấp dẫn, đồng thời phù hợp để sưu tầm và trưng bày. Đây là món quà ý nghĩa dành cho các bé yêu thích xe mô hình, xe ô tô đồ chơi và xe hợp kim.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Thân xe được làm từ hợp kim Die Cast kết hợp nhựa ABS cao cấp, chắc chắn, chịu va đập tốt và bền hơn xe nhựa thông thường.
✔️ Bộ gồm 8 xe mô hình kim loại với nhiều màu sắc và kiểu dáng khác nhau, giúp bé tăng thêm hứng thú khi vui chơi.
✔️ Thiết kế xe đua mô hình chân thực, bánh xe lăn mượt, dễ dàng di chuyển trên nhiều bề mặt.
✔️ Bề mặt sơn sắc nét, bo tròn các góc cạnh, an toàn cho trẻ nhỏ.
✔️ Họa tiết ngộ nghĩnh, màu sắc tươi sáng giúp kích thích trí tưởng tượng và khả năng sáng tạo.
✔️ Thích hợp làm xe mô hình sưu tầm, đồ chơi giải trí hoặc trang trí góc học tập.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Bộ 8 Xe Ô Tô Mô Hình Kim Loại Die Cast.
Chất liệu: Hợp kim cao cấp + Nhựa ABS.
Số lượng: 8 xe/hộp.
Kích thước hộp: 19 x 28 x 4 cm.
Trọng lượng: Khoảng 300g.
Độ tuổi phù hợp: Từ 3 tuổi trở lên.
Phân loại: Bộ 8 xe (Hộp).
🎮 CÔNG DỤNG
Giúp bé phát triển trí tưởng tượng và khả năng sáng tạo.
Rèn luyện kỹ năng phối hợp tay mắt và vận động tinh.
Có thể kết hợp với đường đua hoặc các bộ xe ô tô đồ chơi khác để tăng trải nghiệm vui chơi.
Phù hợp làm xe mô hình kim loại sưu tầm cho bé và người yêu thích mô hình xe.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Quà sinh nhật cho bé trai.
Quà Noel, Quốc tế Thiếu nhi, Trung Thu.
Quà khen thưởng hoặc quà tặng cho các bé yêu thích xe đua đồ chơi, xe mô hình hợp kim, ô tô mô hình và đồ chơi xe hơi.
💯 CAM KẾT TỪ SHOP
✅ Hình ảnh sản phẩm đúng thực tế.
✅ Kiểm tra kỹ trước khi giao hàng.
✅ Đóng gói chắc chắn, chống va đập.
✅ Hỗ trợ đổi trả nếu sản phẩm lỗi từ nhà sản xuất theo quy định của Shopee.
#xemohinh #otomohinh #xehopkim #xemohinhkimloai #xemohinhdiecast #diecast #xeduadochoi #otoodochoi #dochoixeoto #dochoichobe #dochoibetrai #xesuutam #xekimloai #quatangchobe #mohinhoto','[{"n": "Material", "v": "ABS"}, {"n": "Country of Origin", "v": "China"}, {"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Xe đồ chơi']::text[],'https://shopee.vn/product/67689883/44861560851') on conflict (id) do nothing;
delete from product_images where product_id='44861560851';
insert into product_images(product_id,url,sort_order) values ('44861560851','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozcytts4ykr30',0);
insert into product_images(product_id,url,sort_order) values ('44861560851','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozaoq10rrilbc',1);
insert into product_images(product_id,url,sort_order) values ('44861560851','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozar994n1mp9b',2);
insert into product_images(product_id,url,sort_order) values ('44861560851','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozaouaj2j2886',3);
insert into product_images(product_id,url,sort_order) values ('44861560851','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mozatxpwx2q431',4);
delete from product_variants where product_id='44861560851'; delete from product_models where product_id='44861560851'; delete from product_categories where product_id='44861560851';
insert into product_categories values ('44861560851','271399347') on conflict do nothing;
insert into product_categories values ('44861560851','271742074') on conflict do nothing;
delete from reviews where product_id='44861560851' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('57112099001','Đồ Chơi Trí Tuệ Cho Bé Ghép Hình Ghi Nhớ Phát Triển Tư Duy Đồ Chơi Giáo Dục Cho Trẻ','do-choi-tri-tue-cho-be-ghep-hinh-ghi-nho-phat-trien-tu-duy-do-choi-giao-duc-cho--99001',180310,null,247000,27,null,1,0.00,0,'{0,0,0,0,0}','','Đồ Chơi Trí Tuệ Cho Bé Ghép Hình Ghi Nhớ là trò chơi giáo dục giúp trẻ phát triển tư duy logic, khả năng ghi nhớ, quan sát và phản xạ thông qua các thử thách ghép hình thú vị. Với thiết kế nhiều hình ảnh sinh động, màu sắc tươi sáng, bé sẽ vừa học vừa chơi, rèn luyện trí não và tăng khả năng tập trung một cách tự nhiên.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Rèn luyện trí nhớ và khả năng tập trung.
✔️ Phát triển tư duy logic, kỹ năng quan sát.
✔️ Tăng khả năng phản xạ nhanh và ghi nhớ hình ảnh.
✔️ Thiết kế màu sắc sinh động, thu hút trẻ nhỏ.
✔️ Chất liệu nhựa an toàn, bền đẹp.
✔️ Phù hợp cho bé chơi cùng gia đình và bạn bè.
📦 BỘ SẢN PHẨM BAO GỒM
• 01 Bảng trò chơi Memory & Match.
• Bộ thẻ hình ảnh nhiều chủ đề.
• Đồng hồ cát tính thời gian.
• Các quân cờ ghép hình.
• Hộp đựng sản phẩm.
🎯 LỢI ÍCH CHO BÉ
• Phát triển tư duy ghi nhớ.
• Tăng khả năng nhận biết hình ảnh.
• Rèn kỹ năng giải quyết vấn đề.
• Học tập thông qua hoạt động vui chơi.
• Giảm thời gian sử dụng thiết bị điện tử.
Kích Thước: 22x22x5 cm
👶 ĐỘ TUỔI PHÙ HỢP
Từ 3 tuổi trở lên.
🎁 MÓN QUÀ Ý NGHĨA
Thích hợp làm quà sinh nhật, quà lễ, quà thưởng cho bé trai và bé gái.
📌 CAM KẾT
✓ Sản phẩm giống hình.
✓ Kiểm tra kỹ trước khi giao hàng.
✓ Hỗ trợ đổi trả theo chính sách Shopee.
#dochoitritue #dochoighephinh #trochoighinho #dochoigiaoduc #dochoichobe #phattrientuduy #renluyentrinho #dochoitreem #quatangchobe #mevabe #shopeevn #dochoi3tuoi
','[{"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi xếp hình']::text[],'https://shopee.vn/product/67689883/57112099001') on conflict (id) do nothing;
delete from product_images where product_id='57112099001';
insert into product_images(product_id,url,sort_order) values ('57112099001','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdo7p16vabv6c',0);
insert into product_images(product_id,url,sort_order) values ('57112099001','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdnw97adm9sea',1);
insert into product_images(product_id,url,sort_order) values ('57112099001','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdoahdmbnyl47',2);
insert into product_images(product_id,url,sort_order) values ('57112099001','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdnwsfsl5or2e',3);
insert into product_images(product_id,url,sort_order) values ('57112099001','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpdo7xht9wy391',4);
delete from product_variants where product_id='57112099001'; delete from product_models where product_id='57112099001'; delete from product_categories where product_id='57112099001';
insert into product_categories values ('57112099001','271399347') on conflict do nothing;
delete from reviews where product_id='57112099001' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('43131350376','Bộ Đồ Chơi Đất Nặn Làm Dimsum 16 Chi Tiết Cho Bé, Khuôn Bánh Bao Há Cảo, Đồ Chơi Sáng Tạo','bo-do-choi-dat-nan-lam-dimsum-16-chi-tiet-cho-be-khuon-banh-bao-ha-cao-do-choi-s-50376',116800,null,160000,27,null,2,5.00,1,'{0,0,0,0,1}','','Bộ Đồ Chơi Đất Nặn Làm Dimsum 16 Chi Tiết Cho Bé, Khuôn Bánh Bao Há Cảo, Đồ Chơi Sáng Tạo
🥟 Bộ Đồ Chơi Đất Nặn Làm Dimsum 16 Chi Tiết là đồ chơi cho bé giúp bé hóa thân thành đầu bếp nhí, tự tay làm những chiếc bánh bao, há cảo và nhiều món dimsum đáng yêu. Bộ đồ chơi đất nặn với đầy đủ khuôn làm bánh, cây lăn, xửng hấp và các dụng cụ nấu ăn mô phỏng mang đến trải nghiệm vừa học vừa chơi đầy thú vị, giúp bé phát triển tư duy sáng tạo và rèn luyện sự khéo léo mỗi ngày.
Được thiết kế theo chủ đề đồ chơi nấu ăn sáng tạo, sản phẩm giúp bé làm quen với thế giới ẩm thực, nhận biết màu sắc, hình khối và tăng khả năng phối hợp tay mắt. Bộ đồ chơi đất nặn làm dimsum được làm từ chất liệu nhựa bền đẹp, các góc cạnh bo tròn an toàn, phù hợp cho bé từ 3 tuổi trở lên.
✨ Đặc điểm nổi bật
✔️ Bộ gồm 16 chi tiết với đầy đủ khuôn làm bánh bao, há cảo, cây lăn, dao cắt an toàn, bát, xửng hấp, đũa và nhiều phụ kiện trang trí món ăn.
✔️ Khuôn làm bánh bao, há cảo giúp bé dễ dàng tạo nên nhiều món dimsum ngộ nghĩnh, kích thích trí tưởng tượng và khả năng sáng tạo.
✔️ Dụng cụ nấu ăn sáng tạo mô phỏng chân thực, giúp bé nhập vai đầu bếp, tăng hứng thú khi vui chơi và khám phá.
✔️ Rèn luyện kỹ năng cầm nắm, vận động tinh, sự khéo léo của đôi tay và khả năng tập trung trong quá trình tạo hình.
📦 Thông tin sản phẩm
Tên sản phẩm: Bộ Đồ Chơi Đất Nặn Làm Dimsum
Chủ đề: Nhà bếp – Làm bánh bao, há cảo
Số lượng: 16 chi tiết (16 PCS)
Kích thước: 18 x 23 x 6 cm
Chất liệu: Nhựa cao cấp
Màu sắc: Nhiều màu sinh động
Độ tuổi phù hợp: Từ 3 tuổi trở lên
🎁 Bộ đồ chơi đất nặn làm dimsum là món quà ý nghĩa dành cho bé trai và bé gái trong các dịp sinh nhật, Noel, Quốc tế Thiếu nhi hoặc làm phần thưởng khuyến khích học tập. Không chỉ là đồ chơi giáo dục, sản phẩm còn giúp bé hạn chế thời gian sử dụng thiết bị điện tử, tăng cường tương tác cùng bố mẹ và bạn bè thông qua những giờ chơi sáng tạo.
💖 Cam kết từ Shop
Hàng mới 100%.
Kiểm tra kỹ trước khi đóng gói.
Hỗ trợ đổi trả nếu sản phẩm lỗi do nhà sản xuất.
Đóng gói cẩn thận, giao hàng nhanh chóng.
#BoDoChoiDatNanLamDimsum #DoChoiDatNan #DatNanChoBe #DoChoiChoBe #DoChoiNauAn #DoChoiNhaBep #KhuonLamBanhBao #KhuonHaCao #DoChoiSangTao #DoChoiGiaoDuc #DoChoi3Tuoi #QuaTangChoBe #DoChoiThongMinh #Montessori #ShopeeVN','[{"n": "Material", "v": "Clay"}, {"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi mỹ thuật & Thủ công']::text[],'https://shopee.vn/product/67689883/43131350376') on conflict (id) do nothing;
delete from product_images where product_id='43131350376';
insert into product_images(product_id,url,sort_order) values ('43131350376','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxksgna1eyq84',0);
insert into product_images(product_id,url,sort_order) values ('43131350376','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxkjcvbqccs97',1);
insert into product_images(product_id,url,sort_order) values ('43131350376','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxkj6fgfs3vea',2);
insert into product_images(product_id,url,sort_order) values ('43131350376','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxkhmix04jzf3',3);
insert into product_images(product_id,url,sort_order) values ('43131350376','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxk7f6ia32le1',4);
delete from product_variants where product_id='43131350376'; delete from product_models where product_id='43131350376'; delete from product_categories where product_id='43131350376';
insert into product_categories values ('43131350376','271399347') on conflict do nothing;
delete from reviews where product_id='43131350376' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('43131350376','nlhoclbo1995',5,'','','{}'::text[],'Chân thành cảm ơn bạn đã tin tưởng ủng hộ shop, chúc bạn luôn gặp nhiều may mắn ạ♥️',to_timestamp(1784193645));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('54761481136','Kính Hiển Vi Đồ Chơi STEM 1200X Cho Bé Bộ Khám Phá Khoa Học Mini Đồ Chơi Giáo Dục','kinh-hien-vi-do-choi-stem-1200x-cho-be-bo-kham-pha-khoa-hoc-mini-do-choi-giao-du-81136',420480,null,576000,27,null,2,0.00,0,'{0,0,0,0,0}','','🔬 KÍNH HIỂN VI ĐỒ CHƠI STEM 1200X – BỘ KHÁM PHÁ KHOA HỌC MINI CHO BÉ
Kính hiển vi đồ chơi STEM 1200X là đồ chơi khoa học giúp bé khám phá thế giới vi mô ngay tại nhà. Với khả năng phóng đại lên đến 1200X, sản phẩm mang đến trải nghiệm quan sát trực quan, giúp trẻ phát triển tư duy khoa học, khả năng quan sát và niềm đam mê khám phá. Đây là đồ chơi giáo dục thông minh, đồ chơi STEM và bộ khám phá khoa học phù hợp cho bé từ 8 tuổi trở lên.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Độ phóng đại lên đến 1200X, giúp bé quan sát lá cây, côn trùng, sợi vải và nhiều vật thể nhỏ một cách rõ nét.
✔️ Thiết kế chủ đề Nexus Robots hiện đại, màu sắc nổi bật, dễ sử dụng cho trẻ.
✔️ Là kính hiển vi cho bé giúp trẻ tiếp cận kiến thức khoa học theo phương pháp STEM, vừa học vừa chơi hiệu quả.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, an toàn cho trẻ nhỏ.
✔️ Thiết kế chắc chắn, dễ thao tác, phù hợp cho bé tự khám phá hoặc học cùng bố mẹ.
✔️ Đồ chơi giáo dục STEM giúp phát triển tư duy logic, khả năng quan sát và kỹ năng tập trung.
🎯 LỢI ÍCH CHO BÉ
Khơi dậy niềm yêu thích khoa học và khám phá thiên nhiên.
Phát triển tư duy logic và khả năng quan sát chi tiết.
Rèn luyện tính kiên nhẫn, tập trung và kỹ năng học tập.
Khuyến khích bé tự tìm hiểu thế giới xung quanh.
Hạn chế thời gian sử dụng điện thoại, máy tính bảng và tivi.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Kính Hiển Vi STEM Nexus Robots.
Loại sản phẩm: Bộ khám phá khoa học mini.
Độ phóng đại: 1200X.
Chất liệu: Nhựa ABS cao cấp.
Nguồn điện: Sử dụng pin.
Chủ đề: Khoa học – Giáo dục STEM.
Kích thước hộp: 25 x 27 x 9 cm.
Độ tuổi phù hợp: Từ 8 tuổi trở lên.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Quà sinh nhật cho bé trai và bé gái.
Quà Noel, Quốc tế Thiếu nhi, Trung Thu.
Quà thưởng học tập.
Phù hợp với các bé yêu thích kính hiển vi đồ chơi, đồ chơi STEM, đồ chơi khoa học, bộ thí nghiệm cho bé, đồ chơi giáo dục, đồ chơi thông minh, bộ khám phá khoa học và các hoạt động học tập sáng tạo.
💯 CAM KẾT TỪ SHOP
✅ Sản phẩm mới 100%, đúng hình ảnh và mô tả.
✅ Kiểm tra kỹ trước khi đóng gói và giao hàng.
✅ Đóng gói cẩn thận, hạn chế va đập khi vận chuyển.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
#kinhhienvi #kinhhienvichobe #kinhhienvistem #dochoikhoahoc #dochoistem #bokhamphakhoahoc #bothinghiemchobe #dochoigiaoduc #dochoithongminh #dochoisangtao #dochoichobe #dochoitreem #stemtoy #nexusrobots #quatangchobe #dochoihoctap #dochoikhampha #dochoi8tuoi #giaoducstem #khoahoctreem','[{"n": "Recommended Age", "v": "7 years +"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi khoa học & Công nghệ']::text[],'https://shopee.vn/product/67689883/54761481136') on conflict (id) do nothing;
delete from product_images where product_id='54761481136';
insert into product_images(product_id,url,sort_order) values ('54761481136','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxwezbkuia369',0);
insert into product_images(product_id,url,sort_order) values ('54761481136','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxw22r55ix8ba',1);
insert into product_images(product_id,url,sort_order) values ('54761481136','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxw5qavlfd7f5',2);
insert into product_images(product_id,url,sort_order) values ('54761481136','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxw47udea6n4e',3);
insert into product_images(product_id,url,sort_order) values ('54761481136','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxw1c6zfnkecc',4);
delete from product_variants where product_id='54761481136'; delete from product_models where product_id='54761481136'; delete from product_categories where product_id='54761481136';
insert into product_categories values ('54761481136','271399347') on conflict do nothing;
delete from reviews where product_id='54761481136' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('49961516736','Đồ Chơi Capybara 3in1 Có Đèn Nhạc Tự Chạy Đồ Chơi Giáo Dục Thông Minh Cho Bé','do-choi-capybara-3in1-co-den-nhac-tu-chay-do-choi-giao-duc-thong-minh-cho-be-16736',114610,null,157000,27,null,1,0.00,0,'{0,0,0,0,0}','','🐹 ĐỒ CHƠI CAPYBARA 3IN1 CÓ ĐÈN NHẠC TỰ CHẠY – ĐỒ CHƠI GIÁO DỤC THÔNG MINH CHO BÉ
Đồ chơi Capybara 3in1 là món đồ chơi thông minh cho bé tích hợp 3 chức năng trong 1 gồm tự chạy, phát nhạc và đèn LED nhiều màu sắc. Với thiết kế Chuột Lang Nước Capybara siêu đáng yêu cùng màu sắc tươi sáng, sản phẩm giúp bé vừa vui chơi vừa phát triển giác quan, khả năng vận động và tư duy khám phá. Đây là đồ chơi giáo dục, đồ chơi có nhạc, đồ chơi phát sáng được nhiều ba mẹ lựa chọn cho bé từ 3 tuổi trở lên.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Thiết kế Capybara ngộ nghĩnh với các góc cạnh bo tròn, an toàn cho trẻ nhỏ.
✔️ Đồ chơi 3in1 tích hợp tự di chuyển + phát nhạc + đèn LED, mang đến trải nghiệm vui chơi sinh động.
✔️ Hiệu ứng âm thanh vui nhộn và ánh sáng bắt mắt giúp kích thích thị giác, thính giác và sự tò mò của bé.
✔️ Chất liệu nhựa ABS cao cấp, bền đẹp, không chứa chất độc hại, an toàn khi sử dụng.
✔️ Kích thước nhỏ gọn, vừa tay bé, thuận tiện mang theo khi đi chơi hoặc du lịch.
✔️ Đồ chơi Capybara có nhạc phù hợp cho cả bé trai và bé gái, giúp bé vừa học vừa chơi hiệu quả.
🎯 LỢI ÍCH CHO BÉ
Phát triển khả năng quan sát và phản xạ.
Rèn luyện kỹ năng phối hợp tay mắt và vận động.
Kích thích tư duy khám phá và trí tưởng tượng.
Giúp bé nhận biết âm thanh, ánh sáng và chuyển động.
Hạn chế thời gian sử dụng điện thoại, máy tính bảng và tivi.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Đồ chơi Capybara 3in1.
Loại sản phẩm: Đồ chơi giáo dục thông minh.
Chất liệu: Nhựa ABS cao cấp.
Chức năng: Tự chạy + Phát nhạc + Đèn LED.
Màu sắc: Nâu vàng Capybara.
Kích thước: 10 x 18 x 9 cm.
Nguồn điện: Sử dụng pin (tùy phiên bản).
Độ tuổi phù hợp: Từ 3 tuổi trở lên.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Quà sinh nhật cho bé trai và bé gái.
Quà Noel, Trung Thu, Quốc tế Thiếu nhi.
Quà thưởng học tập hoặc quà dành cho các bé yêu thích đồ chơi Capybara, đồ chơi có nhạc, đồ chơi phát sáng, đồ chơi thông minh, đồ chơi giáo dục và đồ chơi vận động.
💯 CAM KẾT TỪ SHOP
✅ Sản phẩm mới 100%, đúng hình ảnh và mô tả.
✅ Kiểm tra kỹ trước khi đóng gói và giao hàng.
✅ Đóng gói cẩn thận, hạn chế va đập trong quá trình vận chuyển.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
#dochoicapybara #capybara #chuotlangnuoc #dochoicapybara #dochoicoden #dochoiconhac #dochoitudong #dochoigiaoduc #dochoithongminh #dochoichobe #dochoitreem #dochoivandong #dochoi3tuoi #quatangchobe #quatangbetrai #quatangbegai #dochoiphattrientritue #dochoigiacquan #dochoiantoan #shopee','[{"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Material", "v": "ABS"}, {"n": "Build-in Battery", "v": "Yes"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi âm nhạc']::text[],'https://shopee.vn/product/67689883/49961516736') on conflict (id) do nothing;
delete from product_images where product_id='49961516736';
insert into product_images(product_id,url,sort_order) values ('49961516736','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy36lrniuxb7c',0);
insert into product_images(product_id,url,sort_order) values ('49961516736','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy2o64wfeoc4b',1);
insert into product_images(product_id,url,sort_order) values ('49961516736','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy2t7y1fbbj9c',2);
insert into product_images(product_id,url,sort_order) values ('49961516736','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy2rmph79cd4a',3);
insert into product_images(product_id,url,sort_order) values ('49961516736','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy2lvo2v75tc6',4);
delete from product_variants where product_id='49961516736'; delete from product_models where product_id='49961516736'; delete from product_categories where product_id='49961516736';
insert into product_categories values ('49961516736','271399347') on conflict do nothing;
delete from reviews where product_id='49961516736' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('48713876324','Bộ Đồ Chơi Đất Nặn Làm Đồ Ăn Kèm Khuôn Ép, Phát Triển Sáng Tạo Cho Bé,Đồ Chơi Cho Bé','bo-do-choi-dat-nan-lam-do-an-kem-khuon-ep-phat-trien-sang-tao-cho-be-do-choi-cho-76324',496800,null,690000,28,null,1,0.00,0,'{0,0,0,0,0}','','Bộ đồ chơi đất nặn làm đồ ăn với nhiều màu sắc rực rỡ, giúp bé tự tay tạo hình kem, bánh waffle, sandwich, trái cây và nhiều món ăn ngộ nghĩnh. Sản phẩm kết hợp máy ép đất nặn cùng nhiều khuôn và dụng cụ, mang đến thời gian vui chơi sáng tạo, hạn chế sử dụng thiết bị điện tử.
Điểm nổi bật
Bộ đất nặn gồm 10 màu sắc đa dạng, dễ phối màu và tạo hình.
Chủ đề làm đồ ăn, bánh ngọt, kem và món ăn nhanh sinh động.
Kèm máy ép đất nặn, khuôn waffle, con lăn, dụng cụ cắt và nhiều phụ kiện.
Giúp bé rèn luyện khả năng quan sát, phối hợp tay mắt và vận động tinh.
Khuyến khích trí tưởng tượng, tư duy sáng tạo và khả năng nhận biết màu sắc.
Phù hợp cho bé chơi tại nhà, lớp học hoặc chơi cùng bạn bè.
Thiết kế nhiều chi tiết, tạo được đa dạng mô hình món ăn.
Bộ sản phẩm gồm
Kích Thước :48x36x7 cm
10 hộp đất nặn nhiều màu.
Bộ máy ép và tạo hình đất nặn.
Khuôn làm bánh, kem, trái cây và món ăn.
Con lăn, dụng cụ cắt và các phụ kiện trang trí.
Số lượng và màu sắc chi tiết được đóng gói theo mẫu sản phẩm thực tế.
Độ tuổi phù hợp
Dành cho trẻ từ 3 tuổi trở lên. Phụ huynh nên hướng dẫn và giám sát bé trong quá trình chơi.
Lưu ý sử dụng
Đất nặn và các món ăn tạo hình không dùng để ăn.
Đậy kín hộp đất nặn sau khi chơi để hạn chế bị khô.
Không để sản phẩm gần nguồn nhiệt hoặc ánh nắng trực tiếp.
Hình ảnh, màu sắc và một số phụ kiện có thể thay đổi nhẹ tùy từng đợt hàng.
Đồ chơi đất nặn, bộ đất nặn cho bé, đất nặn làm đồ ăn, đất sét nặn cho bé, đồ chơi làm bánh, đồ chơi sáng tạo, đồ chơi giáo dục, khuôn đất nặn, máy ép đất nặn, quà tặng cho bé.
#dochoidatnan #bodoinan #datnanchobe #datnanlamdoan #dochoilambanh #dochoisangtao #dochoigiaoduc #dochoichobe #khuondatnan #mayepdatnan #quatangchobe #đồchơiđấtnặn #đấtnặnchobé #đồchơisángtạo','[{"n": "Material", "v": "ABS, Clay"}, {"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi mỹ thuật & Thủ công']::text[],'https://shopee.vn/product/67689883/48713876324') on conflict (id) do nothing;
delete from product_images where product_id='48713876324';
insert into product_images(product_id,url,sort_order) values ('48713876324','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjxqwzzicr161',0);
insert into product_images(product_id,url,sort_order) values ('48713876324','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjx9n3l8oowab',1);
insert into product_images(product_id,url,sort_order) values ('48713876324','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjx9n3qgwss85',2);
insert into product_images(product_id,url,sort_order) values ('48713876324','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjxcaqh02yq6e',3);
insert into product_images(product_id,url,sort_order) values ('48713876324','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqjxcwyz0c232b',4);
delete from product_variants where product_id='48713876324'; delete from product_models where product_id='48713876324'; delete from product_categories where product_id='48713876324';
insert into product_categories values ('48713876324','271399347') on conflict do nothing;
delete from reviews where product_id='48713876324' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('47913850405','Bàn Bi Lắc Bóng Đá Mini Cho Bé, Trò Chơi Đối Kháng 2 Người Rèn Phản Xạ,Đồ CHơi Cho Bé','ban-bi-lac-bong-da-mini-cho-be-tro-choi-doi-khang-2-nguoi-ren-phan-xa-do-choi-ch-50405',315980,null,427000,26,null,1,0.00,0,'{0,0,0,0,0}','','BÀN BI LẮC BÓNG ĐÁ MINI – TRÒ CHƠI ĐỐI KHÁNG VUI NHỘN CHO BÉ
Bộ đồ chơi bóng đá bàn mini mang đến những trận đấu sôi động ngay tại nhà. Bé có thể chơi cùng bạn bè, anh chị em hoặc ba mẹ, tạo nên những phút giây giải trí vui vẻ và tăng sự tương tác giữa các thành viên trong gia đình.
Đặc điểm nổi bật
Thiết kế mô phỏng sân bóng đá với các cầu thủ điều khiển bằng thanh xoay.
Phù hợp cho 2 người cùng thi đấu và ghi bàn.
Cách chơi đơn giản, dễ làm quen.
Giúp bé luyện phản xạ, khả năng quan sát và phối hợp tay mắt.
Khuyến khích tinh thần thi đấu, tập trung và tư duy chiến thuật.
Kích thước nhỏ gọn, thuận tiện đặt trên bàn hoặc mang theo khi đi chơi.
Phù hợp làm quà tặng sinh nhật, lễ Tết hoặc phần thưởng cho bé.
Hướng dẫn chơi
Hai người chơi đứng ở hai bên bàn bóng đá.
Điều khiển các thanh xoay để di chuyển cầu thủ.
Chuyền bóng, phòng thủ và sút bóng vào khung thành đối phương.
Người ghi được nhiều bàn thắng hơn sẽ giành chiến thắng.
Đối tượng sử dụng
Trẻ em từ 5 tuổi trở lên.
Bé yêu thích bóng đá và các trò chơi đối kháng.
Phù hợp chơi cùng bạn bè hoặc các thành viên trong gia đình.
Thông tin sản phẩm
Kích Thước: 36x37x6 cm
Tên sản phẩm: Bàn bi lắc bóng đá mini.
Dòng sản phẩm: Đồ chơi thể thao, trò chơi để bàn.
Số người chơi đề xuất: 2 người.
Độ tuổi khuyến nghị: Từ 5 tuổi.
Màu sắc và chi tiết sản phẩm có thể thay đổi nhẹ tùy từng đợt hàng.
Lưu ý: Sản phẩm có các chi tiết nhỏ, nên sử dụng dưới sự giám sát của người lớn.
#banbilac #banbilacmini #bongdaban #dochoibongda #dochoithethao #dochoitreem #dochoichobe #dochoibetra i #trochoidoikhang #trochoi2nguoi #trochoideban #quatangchobe #renphanxa #phattrientuduy #dochoigiaoduc','[{"n": "Recommended Age", "v": "6 - 8 Years"}, {"n": "Material", "v": "ABS"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi vận động & Ngoài trời','Đồ chơi thể thao']::text[],'https://shopee.vn/product/67689883/47913850405') on conflict (id) do nothing;
delete from product_images where product_id='47913850405';
insert into product_images(product_id,url,sort_order) values ('47913850405','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj5rwl9v3f180',0);
insert into product_images(product_id,url,sort_order) values ('47913850405','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj5c647asy439',1);
insert into product_images(product_id,url,sort_order) values ('47913850405','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj5ca4hv47i6d',2);
insert into product_images(product_id,url,sort_order) values ('47913850405','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj5fotrsd1d81',3);
insert into product_images(product_id,url,sort_order) values ('47913850405','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj5gurl7w8w4d',4);
delete from product_variants where product_id='47913850405'; delete from product_models where product_id='47913850405'; delete from product_categories where product_id='47913850405';
insert into product_categories values ('47913850405','271399347') on conflict do nothing;
insert into product_categories values ('47913850405','271742027') on conflict do nothing;
delete from reviews where product_id='47913850405' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('46713842697','Trụ Đấm Bốc Trẻ Em Điều Chỉnh Độ Cao, Bóng Tập Phản Xạ, Đồ Chơi Thể Thao Cho Bé,Đồ Chơi Cho Bé','tru-dam-boc-tre-em-dieu-chinh-do-cao-bong-tap-phan-xa-do-choi-the-thao-cho-be-do-42697',696000,null,928000,25,null,0,0.00,0,'{0,0,0,0,0}','','TRỤ ĐẤM BỐC TRẺ EM – VỪA VUI CHƠI, VỪA TĂNG CƯỜNG VẬN ĐỘNG
Trụ bóng đấm phản xạ dành cho trẻ em từ 6 tuổi, phù hợp để bé vui chơi và vận động ngay tại nhà. Thiết kế bóng đàn hồi kết hợp trụ đứng giúp bé luyện tập thao tác đấm, né và phản ứng theo chuyển động của bóng.
Sản phẩm phù hợp làm quà sinh nhật, quà thưởng hoặc đồ chơi thể thao giúp bé hạn chế thời gian sử dụng thiết bị điện tử.
Đặc điểm nổi bật
Bóng đấm đàn hồi, chuyển động linh hoạt sau mỗi lần tác động.
Trụ có thể điều chỉnh độ cao theo vóc dáng của trẻ.
Thiết kế chân đế dạng bàn đạp, thuận tiện khi luyện tập.
Hỗ trợ rèn luyện phản xạ, khả năng phối hợp tay – mắt và sự nhanh nhẹn.
Khuyến khích bé vận động, giải phóng năng lượng tích cực.
Có thể sử dụng trong phòng khách, phòng chơi hoặc khu vực sân chơi bằng phẳng.
Kiểu dáng thể thao, màu đỏ – đen nổi bật.
Phù hợp cho bé từ 6 tuổi trở lên.
Thông tin sản phẩm
kích Thước:29x67x8 cm
Tên sản phẩm: Trụ đấm bốc trẻ em điều chỉnh độ cao
Dòng sản phẩm: Đồ chơi vận động, bóng tập phản xạ
Độ tuổi tham khảo: Từ 6 tuổi
Màu sắc: Đỏ – đen
Kiểu dáng: Trụ đứng có bóng đàn hồi
Công dụng: Vui chơi, luyện phản xạ và tăng cường vận động
Quy cách: Sản phẩm theo phân loại và hình ảnh của shop
Hướng dẫn sử dụng
Đặt sản phẩm trên bề mặt bằng phẳng, điều chỉnh trụ đến chiều cao phù hợp và kiểm tra các khớp nối trước khi cho bé chơi. Nên cho trẻ sử dụng dưới sự giám sát của người lớn và giữ khoảng cách an toàn với đồ vật xung quanh.
Lưu ý
Màu sắc thực tế có thể chênh lệch nhẹ do ánh sáng và màn hình.
Vui lòng kiểm tra kỹ phân loại, kích thước và phụ kiện trước khi đặt hàng.
Không đặt sản phẩm gần vật sắc nhọn, nguồn nhiệt hoặc khu vực trơn trượt.
Trụ đấm bốc trẻ em, bóng đấm phản xạ, bóng tập phản xạ cho bé, đồ chơi vận động, đồ chơi thể thao trẻ em, trụ boxing trẻ em, đồ chơi rèn luyện phản xạ, quà tặng cho bé 6 tuổi.
#trudamboc #trudambocchobe #bongdamphanxa #bongtapphanxa #dochoivandong #dochoithethao #dochoitreem #boxingtreem #dochoichobe6tuoi #quatangchobe #luyenphanxa #tangcuongvandong



','[{"n": "Recommended Age", "v": "6 - 8 Years"}, {"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi vận động & Ngoài trời','Đồ chơi thể thao']::text[],'https://shopee.vn/product/67689883/46713842697') on conflict (id) do nothing;
delete from product_images where product_id='46713842697';
insert into product_images(product_id,url,sort_order) values ('46713842697','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj57yn5tvy9b4',0);
insert into product_images(product_id,url,sort_order) values ('46713842697','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj4skb2zqpsed',1);
insert into product_images(product_id,url,sort_order) values ('46713842697','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj45xpu2kua9f',2);
insert into product_images(product_id,url,sort_order) values ('46713842697','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj45u2et8un6d',3);
insert into product_images(product_id,url,sort_order) values ('46713842697','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqj4w4qwpa8286',4);
delete from product_variants where product_id='46713842697'; delete from product_models where product_id='46713842697'; delete from product_categories where product_id='46713842697';
insert into product_categories values ('46713842697','271399347') on conflict do nothing;
insert into product_categories values ('46713842697','271742027') on conflict do nothing;
delete from reviews where product_id='46713842697' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('42031365038','Bộ Đồ Chơi Bác Sĩ Thú Cưng Capybara Vali Kéo Kèm Gấu Bông Đồ Chơi Nhập Vai Cho Bé','bo-do-choi-bac-si-thu-cung-capybara-vali-keo-kem-gau-bong-do-choi-nhap-vai-cho-b-65038',254770,null,349000,27,null,1,0.00,0,'{0,0,0,0,0}','','🩺 BỘ ĐỒ CHƠI BÁC SĨ THÚ CƯNG CAPYBARA – VALI KÉO NHẬP VAI CHO BÉ SIÊU ĐÁNG YÊU
Bộ đồ chơi bác sĩ thú cưng Capybara là đồ chơi nhập vai cho bé được thiết kế dưới dạng vali kéo bác sĩ tiện lợi, đi kèm gấu bông Capybara mềm mại và đầy đủ dụng cụ khám chữa bệnh. Bé sẽ hóa thân thành bác sĩ thú y nhí, chăm sóc thú cưng, khám bệnh và điều trị cho những người bạn đáng yêu. Đây là đồ chơi bác sĩ, đồ chơi thú cưng, đồ chơi giáo dục giúp bé phát triển tư duy, kỹ năng giao tiếp và nuôi dưỡng tình yêu động vật.
⭐ ĐẶC ĐIỂM NỔI BẬT
✔️ Thiết kế Capybara đáng yêu với màu sắc tươi sáng, thu hút các bé ngay từ lần đầu nhìn thấy.
✔️ Vali kéo đồ chơi bác sĩ có bánh xe và tay cầm chắc chắn, giúp bé dễ dàng mang theo khi vui chơi.
✔️ Bộ đồ chơi bác sĩ cho bé gồm nhiều phụ kiện mô phỏng chân thực như ống nghe, nhiệt kế, kim tiêm, búa phản xạ, bình thuốc và các dụng cụ khám bệnh khác.
✔️ Tặng kèm gấu bông Capybara mềm mại để bé thực hành khám chữa bệnh và chăm sóc thú cưng.
✔️ Chất liệu nhựa ABS cao cấp kết hợp vải nhồi bông mềm, bề mặt nhẵn mịn, không góc cạnh sắc nhọn, an toàn cho trẻ nhỏ.
✔️ Đồ chơi nhập vai bác sĩ thú y giúp bé vừa học vừa chơi, phát triển trí tưởng tượng và khả năng sáng tạo.
🎯 LỢI ÍCH CHO BÉ
Phát triển trí tưởng tượng và khả năng nhập vai.
Rèn luyện kỹ năng giao tiếp và tương tác với mọi người.
Tăng khả năng quan sát, tư duy logic và giải quyết vấn đề.
Học cách yêu thương, chăm sóc và bảo vệ động vật.
Phát triển vận động tinh thông qua thao tác cầm nắm các dụng cụ bác sĩ.
Giảm thời gian sử dụng điện thoại, máy tính bảng và tivi.
📦 THÔNG TIN SẢN PHẨM
Tên sản phẩm: Bộ đồ chơi bác sĩ thú cưng Capybara.
Loại sản phẩm: Đồ chơi bác sĩ – đồ chơi thú y – đồ chơi nhập vai.
Chất liệu: Nhựa ABS cao cấp + vải nhồi bông.
Màu sắc: Nâu kem Capybara.
Kích thước vali: 14 x 21 x 11 cm.
Kiểu dáng: Vali kéo mini có bánh xe.
Độ tuổi phù hợp: Từ 3 tuổi trở lên.
📦 BỘ SẢN PHẨM BAO GỒM
01 vali kéo bác sĩ.
01 gấu bông Capybara.
01 bộ dụng cụ bác sĩ thú y mô phỏng.
Các phụ kiện khám chữa bệnh đi kèm.
🎁 PHÙ HỢP LÀM QUÀ TẶNG
Quà sinh nhật cho bé trai và bé gái.
Quà Noel, Trung Thu, Quốc tế Thiếu nhi.
Quà thưởng học tập hoặc quà dành cho các bé yêu thích đồ chơi bác sĩ, đồ chơi thú cưng, đồ chơi Capybara, đồ chơi nhập vai, đồ chơi giáo dục, vali bác sĩ đồ chơi và đồ chơi phát triển kỹ năng.
💯 CAM KẾT TỪ SHOP
✅ Sản phẩm mới 100%, đúng hình ảnh và mô tả.
✅ Kiểm tra kỹ trước khi đóng gói và giao hàng.
✅ Đóng gói cẩn thận, chống sốc.
✅ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
#dochoibacsi #dochoibacsichobe #valibacsi #dochoinhapvai #dochoithucung #dochoibacsithuy #capybara #dochoicapybara #gaubongcapybara #dochoigiaoduc #dochoisangtao #dochoichobe #dochoitreem #quatangchobe #dochoi3tuoi','[{"n": "Manufacturer/trader name", "v": "Updating"}, {"n": "Country of Origin", "v": "China"}, {"n": "Gender", "v": "Unisex"}, {"n": "Recommended Age", "v": "3 - 4 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/42031365038') on conflict (id) do nothing;
delete from product_images where product_id='42031365038';
insert into product_images(product_id,url,sort_order) values ('42031365038','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy2ev1hcyrvbf',0);
insert into product_images(product_id,url,sort_order) values ('42031365038','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy1n9e1l8n4de',1);
insert into product_images(product_id,url,sort_order) values ('42031365038','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy24qbm251obd',2);
insert into product_images(product_id,url,sort_order) values ('42031365038','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy23hf57ocu19',3);
insert into product_images(product_id,url,sort_order) values ('42031365038','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moy1ls67rqx759',4);
delete from product_variants where product_id='42031365038'; delete from product_models where product_id='42031365038'; delete from product_categories where product_id='42031365038';
insert into product_categories values ('42031365038','271399347') on conflict do nothing;
delete from reviews where product_id='42031365038' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('45061960648','Đồ Chơi Máy Pinball Cao Cấp Vui Nhộn Cho Bé,Quà Tặng Cho Bé','do-choi-may-pinball-cao-cap-vui-nhon-cho-be-qua-tang-cho-be-60648',525600,null,720000,27,null,0,0.00,0,'{0,0,0,0,0}','','ĐỒ CHƠI MÊ CUNG BI CIRCUS – VỪA CHƠI VỪA RÈN LUYỆN TƯ DUY
Mang đến cho bé những giờ phút giải trí bổ ích với bộ đồ chơi mê cung bi chủ đề Circus đầy màu sắc. Bé sẽ điều khiển viên bi vượt qua các chướng ngại vật, rèn luyện khả năng quan sát, sự khéo léo và tính kiên nhẫn trong quá trình chơi.
🌟 Ưu điểm nổi bật
✅ Thiết kế chủ đề rạp xiếc sinh động, màu sắc bắt mắt.
✅ Giúp bé phát triển tư duy logic và khả năng giải quyết vấn đề.
✅ Rèn luyện sự tập trung và phối hợp tay – mắt hiệu quả.
✅ Kích thước nhỏ gọn, dễ mang theo khi đi chơi hoặc du lịch.
✅ Chất liệu nhựa an toàn, bề mặt bo tròn thân thiện với trẻ nhỏ.
✅ Phù hợp cho bé trai và bé gái từ 3 tuổi trở lên.
📦 Thông tin sản phẩm
Kích THước: 31x47x7 cm
Tên sản phẩm: Đồ chơi mê cung bi Circus
Chủ đề: Rạp xiếc
Chất liệu: Nhựa cao cấp
Độ tuổi phù hợp: Từ 3 tuổi+
Màu sắc: Nhiều màu sắc sinh động
Công dụng: Giải trí, phát triển tư duy, rèn luyện kỹ năng vận động tinh
🎁 Lợi ích dành cho bé
✔ Phát triển tư duy logic và khả năng quan sát.
✔ Tăng cường sự kiên nhẫn và tập trung.
✔ Hạn chế thời gian sử dụng điện thoại, tivi.
✔ Tạo thói quen học mà chơi – chơi mà học.
✔ Là món quà ý nghĩa cho sinh nhật, lễ Tết, Quốc tế Thiếu nhi.
Cam kết từ shop
⭐ Sản phẩm giống hình 100%.
⭐ Đóng gói cẩn thận trước khi giao.
⭐ Hỗ trợ đổi trả theo chính sách Shopee nếu có lỗi từ nhà sản xuất.
⭐ Tư vấn nhiệt tình, hỗ trợ khách hàng nhanh chóng.
Đặt hàng ngay hôm nay để bé có thêm một món đồ chơi vừa vui nhộn vừa giúp phát triển tư duy mỗi ngày! 🎪🎁✨','[{"n": "Recommended Age", "v": "3 - 4 years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi vận động & Ngoài trời','Đồ chơi thể thao']::text[],'https://shopee.vn/product/67689883/45061960648') on conflict (id) do nothing;
delete from product_images where product_id='45061960648';
insert into product_images(product_id,url,sort_order) values ('45061960648','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9jdcoo97v03b',0);
insert into product_images(product_id,url,sort_order) values ('45061960648','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9i2ukin5zfc0',1);
insert into product_images(product_id,url,sort_order) values ('45061960648','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9i7is6vj0rad',2);
insert into product_images(product_id,url,sort_order) values ('45061960648','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9i6hbrvitcec',3);
insert into product_images(product_id,url,sort_order) values ('45061960648','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9i122zvdaae8',4);
delete from product_variants where product_id='45061960648'; delete from product_models where product_id='45061960648'; delete from product_categories where product_id='45061960648';
insert into product_categories values ('45061960648','271399347') on conflict do nothing;
insert into product_categories values ('45061960648','271742027') on conflict do nothing;
delete from reviews where product_id='45061960648' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('54613675084','Bộ Đồ Chơi Đất Nặn Làm Bánh Kem Kèm Máy Ép Khuôn Cho Bé, Đồ Chơi Cho Bé','bo-do-choi-dat-nan-lam-banh-kem-kem-may-ep-khuon-cho-be-do-choi-cho-be-75084',429240,null,588000,27,null,0,0.00,0,'{0,0,0,0,0}','','Bộ Đồ Chơi Đất Nặn Làm Bánh Kem 29 Chi Tiết Kèm Máy Ép Khuôn Cho Bé
Giúp bé phát triển khả năng sáng tạo và rèn luyện sự khéo léo với bộ đồ chơi đất nặn làm bánh kem 29 chi tiết. Bé có thể tự tay tạo ra những chiếc bánh kem, bánh ngọt, kem ly và nhiều món ăn ngộ nghĩnh nhờ bộ khuôn và máy ép đi kèm.
Đây là món quà phù hợp cho các bé yêu thích hoạt động thủ công, vừa chơi vừa học, giúp phát triển tư duy và khả năng phối hợp tay mắt.
⭐ ƯU ĐIỂM NỔI BẬT
✅ Bộ đầy đủ 29 chi tiết đa dạng.
✅ Máy tạo hình bánh kem dễ sử dụng.
✅ Nhiều khuôn tạo hình và dụng cụ làm bánh.
✅ Màu sắc tươi sáng, bắt mắt.
✅ Chất liệu an toàn, bề mặt nhẵn mịn.
✅ Giúp phát triển:
Tư duy sáng tạo
Kỹ năng vận động tinh
Khả năng phối màu
Tính kiên nhẫn
Tương tác giữa cha mẹ và bé
📦 Bộ sản phẩm gồm
01 Máy tạo hình bánh kem
Bộ khuôn tạo hình
Dụng cụ làm bánh
Hộp đất nặn nhiều màu
Các phụ kiện đi kèm
(Số lượng chi tiết theo bộ: 29 PCS)
📏 Thông tin sản phẩm
Tên sản phẩm: Bộ đồ chơi đất nặn làm bánh kem
Kích Thước: 26x39x11 cm
Số chi tiết: 29 PCS
Chủ đề: Làm bánh kem
Độ tuổi phù hợp: Từ 3 tuổi trở lên
Chất liệu: Nhựa ABS + đất nặn an toàn
Màu sắc: Nhiều màu
🎁 Phù hợp làm quà tặng
✔ Quà sinh nhật
✔ Quà lễ, Tết
✔ Phần thưởng cho bé
✔ Đồ chơi giáo dục tại nhà
Cam kết
Hàng mới 100%
Kiểm tra kỹ trước khi giao
Đóng gói cẩn thận
Hỗ trợ khách hàng nhanh chóng
Từ khóa SEO chính
đồ chơi đất nặn
bộ đất nặn cho bé
đất nặn làm bánh
đồ chơi làm bánh
đồ chơi sáng tạo
đồ chơi giáo dục
máy làm bánh đất nặn
bộ đồ chơi làm bánh kem
đồ chơi thủ công cho bé
quà tặng cho bé
#datnan #bodatnan #dochoidatnan #dochoilambanh #mayepdatnan #dochoisangtao #dochoigiaoduc #dochoichobe #quatangchobe #dochoimamnon #lambanhdatnan #dochoithongminh #dochoitreem #dochoihandmade #29chitiet','[{"n": "Gender", "v": "Unisex"}, {"n": "Recommended Age", "v": "3 - 4 years"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/54613675084') on conflict (id) do nothing;
delete from product_images where product_id='54613675084';
insert into product_images(product_id,url,sort_order) values ('54613675084','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqfqkgd35czl48',0);
insert into product_images(product_id,url,sort_order) values ('54613675084','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqfq5352jt369c',1);
insert into product_images(product_id,url,sort_order) values ('54613675084','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqfq31gku03wa1',2);
insert into product_images(product_id,url,sort_order) values ('54613675084','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqfq9wsmxq0x9f',3);
insert into product_images(product_id,url,sort_order) values ('54613675084','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqfqakh99gct8b',4);
delete from product_variants where product_id='54613675084'; delete from product_models where product_id='54613675084'; delete from product_categories where product_id='54613675084';
insert into product_categories values ('54613675084','271399347') on conflict do nothing;
delete from reviews where product_id='54613675084' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('47611501692','Bộ Đất Nặn Làm Sushi Hình Rùa 23 Chi Tiết Đồ Chơi Sáng Tạo Cho Bé An Toàn','bo-dat-nan-lam-sushi-hinh-rua-23-chi-tiet-do-choi-sang-tao-cho-be-an-toan-01692',160600,null,220000,27,null,0,0.00,0,'{0,0,0,0,0}','','🍣 BỘ ĐẤT NẶN LÀM SUSHI HÌNH RÙA 23 CHI TIẾT – ĐỒ CHƠI SÁNG TẠO CHO BÉ 🐢
Mang đến cho bé trải nghiệm vui chơi sáng tạo với bộ đất nặn làm sushi hình rùa dễ thương, giúp bé vừa chơi vừa học, phát triển tư duy và khả năng tưởng tượng thông qua việc tự tay tạo ra những món sushi đầy màu sắc.
✨ ĐIỂM NỔI BẬT
✔️ Thiết kế máy ép hình rùa ngộ nghĩnh, thu hút bé
✔️ Bộ 23 chi tiết đa dạng, tha hồ sáng tạo sushi
✔️ Giúp phát triển tư duy sáng tạo và trí tưởng tượng
✔️ Rèn luyện kỹ năng vận động tinh và khéo léo tay
✔️ Kích thích khả năng phối hợp tay – mắt
✔️ Chất liệu an toàn, phù hợp cho trẻ nhỏ
✔️ Phù hợp cho bé từ 3 tuổi trở lên
🎁 BÉ NHẬN ĐƯỢC GÌ?
• Máy tạo hình sushi hình rùa
• Khuôn tạo hình đa dạng
• Dụng cụ làm sushi mô phỏng
• Đất nặn nhiều màu sắc
• Phụ kiện trang trí đi kèm
🌟 LỢI ÍCH CHO BÉ
🧠 Phát triển tư duy sáng tạo
🧠 Rèn luyện khả năng tập trung
🧠 Tăng kỹ năng vận động tinh
🧠 Hạn chế thời gian dùng thiết bị điện tử
🧠 Tăng tương tác giữa cha mẹ và bé
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Bộ đất nặn làm sushi hình rùa
• Số chi tiết: 23 PCS
• Kích thước: 20 x 23 x 10 cm
• Độ tuổi phù hợp: Từ 3 tuổi trở lên
• Màu sắc: Nhiều màu
• Chủ đề: Đồ chơi làm sushi sáng tạo
💝 PHÙ HỢP LÀM QUÀ TẶNG
🎂 Sinh nhật bé trai, bé gái
🎄 Noel, Trung Thu, Tết Thiếu Nhi
🏫 Đồ chơi giáo dục tại nhà
👨‍👩‍👧 Trò chơi tương tác gia đình
⚠️ LƯU Ý
• Trẻ em nên chơi dưới sự giám sát của người lớn
• Không phù hợp cho trẻ dưới 3 tuổi
💖 CAM KẾT TỪ SHOP
✔️ Sản phẩm đúng mô tả 100%
✔️ Đóng gói cẩn thận
✔️ Hỗ trợ đổi trả nếu lỗi từ nhà sản xuất
✔️ Tư vấn nhanh chóng trước & sau mua hàng
#DoChoiDatNan #DoChoiSangTao #DoChoiChoBe #DatNanSushi #DoChoiGiaDuc #DoChoiTreEm #DoChoi3Tuoi #DoChoiThongMinh #QuaTangChoBe #DoChoiPhatTrienTuDuy #DoChoiABS #DoChoiGiaDinh #ShopeeKids #SushiToy #DoChoiDatNan','[{"n": "Material", "v": "Clay"}, {"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Custom Product", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi mỹ thuật & Thủ công']::text[],'https://shopee.vn/product/67689883/47611501692') on conflict (id) do nothing;
delete from product_images where product_id='47611501692';
insert into product_images(product_id,url,sort_order) values ('47611501692','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxxm5k75kw173',0);
insert into product_images(product_id,url,sort_order) values ('47611501692','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxx6itt97ny16',1);
insert into product_images(product_id,url,sort_order) values ('47611501692','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxxjn7px5or10',2);
insert into product_images(product_id,url,sort_order) values ('47611501692','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxxjtfzm7tb4c',3);
insert into product_images(product_id,url,sort_order) values ('47611501692','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-moxx5h1jo0ln54',4);
delete from product_variants where product_id='47611501692'; delete from product_models where product_id='47611501692'; delete from product_categories where product_id='47611501692';
insert into product_categories values ('47611501692','271399347') on conflict do nothing;
delete from reviews where product_id='47611501692' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('49060030997','Bộ Bàn Vẽ Chiếu Hình Projector Art Cho Bé 3+ – Máy Chiếu Tập Vẽ Kèm Bút Màu & Hình Mẫu Giúp Bé Học Vẽ Sáng Tạo','bo-ban-ve-chieu-hinh-projector-art-cho-be-3-may-chieu-tap-ve-kem-but-mau-hinh-ma-30997',362080,null,496000,27,null,1,0.00,0,'{0,0,0,0,0}','','Bộ Projector Art – Đồ Chơi Học Vẽ Thông Minh Cho Bé
Giúp bé phát triển khả năng hội họa, tư duy sáng tạo và rèn luyện sự khéo léo thông qua việc tập tô và vẽ theo hình chiếu sinh động.
✨ Chỉ cần lắp đĩa hình vào máy chiếu, bật đèn và chiếu hình lên bảng vẽ để bé dễ dàng tô theo cực thú vị!
ƯU ĐIỂM NỔI BẬT
✅ Máy chiếu hình rõ nét, dễ sử dụng
✅ Kèm nhiều hình mẫu giúp bé học vẽ nhanh hơn
✅ Bao gồm bộ bút màu nhiều màu sắc sinh động
✅ Thiết kế bàn vẽ chắc chắn, bo góc an toàn cho bé
✅ Giúp bé tăng khả năng tập trung & sáng tạo
✅ Phù hợp cho bé trai và bé gái từ 3 tuổi trở lên
THÔNG TIN SẢN PHẨM
Tên sản phẩm: Projector Art Drawing Table
Chất liệu: Nhựa ABS an toàn
Kích thước hộp : 29cm x 39cm x 7cm
Độ tuổi phù hợp: Bé từ 3+ tuổi
Màu sắc: Xanh dương
Công dụng: Tập vẽ, tô màu, học nhận biết hình ảnh
Nguồn điện: Pin AA (tùy phiên bản)
BỘ SẢN PHẨM BAO GỒM
📦 1 x Bàn vẽ projector
📦 1 x Máy chiếu mini
📦 Bộ bút màu
📦 Bộ đĩa hình chiếu mẫu
📦 Phụ kiện đi kèm
LỢI ÍCH CHO BÉ
🌈 Kích thích trí tưởng tượng và sáng tạo
🖍️ Rèn kỹ năng cầm bút và phối màu
👶 Hỗ trợ phát triển tư duy hình ảnh từ sớm
👨‍👩‍👧 Tăng thời gian vui chơi tương tác cùng gia đình
CAM KẾT TỪ SHOP
✔️ Sản phẩm đúng mô tả
✔️ Đóng gói cẩn thận
✔️ Hỗ trợ đổi trả nếu lỗi từ nhà sản xuất
✔️ Tư vấn nhiệt tình trước và sau mua hàng
#projectorart #banvehocve #dochoisangtao #dochoitreem #maychieuhocve #bangvehocve #dochoigiaoduc #tapvechobe #dochoi3tuoi #quatangchobe




','[]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi mỹ thuật & Thủ công']::text[],'https://shopee.vn/product/67689883/49060030997') on conflict (id) do nothing;
delete from product_images where product_id='49060030997';
insert into product_images(product_id,url,sort_order) values ('49060030997','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwmiu632nswf9',0);
insert into product_images(product_id,url,sort_order) values ('49060030997','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwmlix8zsox1e',1);
insert into product_images(product_id,url,sort_order) values ('49060030997','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwmneyno26ed4',2);
insert into product_images(product_id,url,sort_order) values ('49060030997','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnwmi7u2rif5df',3);
delete from product_variants where product_id='49060030997'; delete from product_models where product_id='49060030997'; delete from product_categories where product_id='49060030997';
insert into product_variants(product_id,name,options,images) values ('49060030997','Màu',array['Xanh']::text[],array['https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mnxyqiig13ig56']::text[]);
insert into product_models(product_id,name,price,stock,image) values ('49060030997','Xanh',362080,null,'');
insert into product_categories values ('49060030997','271399347') on conflict do nothing;
delete from reviews where product_id='49060030997' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('50313698224','Bộ Đất Sét Tự Nặn Trứng Khủng Long Kèm Mô Hình Sóc, Đồ Chơi Sáng Tạo Cho Bé,Đồ Chơi Cho Bé','bo-dat-set-tu-nan-trung-khung-long-kem-mo-hinh-soc-do-choi-sang-tao-cho-be-do-ch-98224',394560,null,548000,28,null,1,0.00,0,'{0,0,0,0,0}','','BỘ ĐẤT SÉT TỰ NẶN TRỨNG KHỦNG LONG KÈM MÔ HÌNH SÓC 24 CHI TIẾT – ĐỒ CHƠI SÁNG TẠO CHO BÉ
Mang đến cho bé trải nghiệm vừa chơi vừa học đầy thú vị. Bộ đồ chơi gồm đất sét mềm, trứng khủng long và nhiều phụ kiện ngộ nghĩnh giúp bé thỏa sức sáng tạo, rèn luyện sự khéo léo và trí tưởng tượng.
⭐ Ưu điểm nổi bật
Bộ gồm 24 chi tiết đa dạng.
Đất sét mềm, dễ tạo hình.
Có 03 trứng khủng long độc đáo.
Kèm mô hình sóc và nhiều phụ kiện trang trí.
Giúp phát triển tư duy sáng tạo.
Rèn luyện kỹ năng vận động tinh của tay.
Tăng khả năng phối hợp tay và mắt.
Màu sắc bắt mắt, thu hút trẻ nhỏ.
Phù hợp cho bé từ 3 tuổi trở lên.
Thích hợp chơi tại nhà, lớp học hoặc làm quà tặng.
📦 Bộ sản phẩm gồm
01 mô hình sóc.
03 trứng khủng long.
Đất sét tạo hình.
Bộ dụng cụ tạo hình.
Nhiều phụ kiện trang trí trái cây, rau củ và thức ăn.
Hộp đựng đẹp, gọn gàng.
🎯 Công dụng
KÍch Thước: 30x27x13 cm
Phát triển trí tưởng tượng.
Khuyến khích khả năng sáng tạo.
Luyện kỹ năng cầm nắm.
Giảm thời gian sử dụng thiết bị điện tử.
Tăng khả năng tập trung và kiên nhẫn.
👶 Độ tuổi phù hợp
Trẻ từ 3 tuổi trở lên.
💡 Lưu ý
Sử dụng dưới sự giám sát của người lớn đối với trẻ nhỏ.
Bảo quản nơi khô ráo sau khi sử dụng.
Không cho đất sét vào miệng.
đất sét cho bé, bộ đất sét tạo hình, đồ chơi đất sét, đồ chơi sáng tạo, đồ chơi giáo dục, đồ chơi thủ công, đồ chơi phát triển trí tuệ, trứng khủng long, đồ chơi khủng long, quà tặng cho bé, đồ chơi cho bé 3 tuổi, đồ chơi mầm non, bộ nặn đất sét, đồ chơi nghệ thuật, bộ đồ chơi sáng tạo
Có dấu
#datset #đấtsét #botaohinh #đồchơigiáodục #đồchơisángtạo #đồchơichobé #trứngkhủnglong #đồchơikhủnglong #quàtặngchobé #dochoimamnon #dochoitreem #botaohinhdatset
Không dấu
#datsetchobe #botaohinh #dochoisangtao #dochoigiaoduc #trungkhunglong #dochoikhunglong #dochoi3tuoi #quatangchobe #dochoimamnon #dochoitreem #botaohinhdatset #dochoiphattrientritue','[{"n": "Material", "v": "ABS, Clay"}, {"n": "Recommended Age", "v": "3 - 5 years"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi mỹ thuật & Thủ công']::text[],'https://shopee.vn/product/67689883/50313698224') on conflict (id) do nothing;
delete from product_images where product_id='50313698224';
insert into product_images(product_id,url,sort_order) values ('50313698224','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqg9ekzhea6m54',0);
insert into product_images(product_id,url,sort_order) values ('50313698224','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqg8sfnglfyj6a',1);
insert into product_images(product_id,url,sort_order) values ('50313698224','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqg8qif6thj554',2);
insert into product_images(product_id,url,sort_order) values ('50313698224','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqg8ur2d648y85',3);
insert into product_images(product_id,url,sort_order) values ('50313698224','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mqg8xc59o2kudc',4);
delete from product_variants where product_id='50313698224'; delete from product_models where product_id='50313698224'; delete from product_categories where product_id='50313698224';
insert into product_categories values ('50313698224','271399347') on conflict do nothing;
delete from reviews where product_id='50313698224' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('49311939458','Bộ 6 Búp Bê Công Chúa Kèm Phụ Kiện Cao Cấp Búp Bê Thời Trang Đồ Chơi Bé Gái Quà Tặng Cho Bé','bo-6-bup-be-cong-chua-kem-phu-kien-cao-cap-bup-be-thoi-trang-do-choi-be-gai-qua--39458',620500,null,850000,27,null,5,5.00,1,'{0,0,0,0,1}','','👑 BỘ 6 BÚP BÊ CÔNG CHÚA SALLY FASHION PRINCESS – BÚP BÊ THỜI TRANG KÈM PHỤ KIỆN CAO CẤP 👑
Mang đến cho bé một thế giới cổ tích đầy màu sắc với Bộ 6 Búp Bê Công Chúa Sally Fashion Princess. Mỗi nàng công chúa đều sở hữu gương mặt đáng yêu, đôi mắt long lanh cùng những bộ váy thời trang nổi bật, giúp bé thỏa sức sáng tạo những câu chuyện thú vị và phát triển trí tưởng tượng thông qua trò chơi nhập vai.
Đây là đồ chơi bé gái được nhiều phụ huynh lựa chọn bởi thiết kế đẹp mắt, chất liệu an toàn và khả năng giúp bé vừa học vừa chơi. Bộ búp bê thời trang kèm phụ kiện cao cấp cũng là món quà tặng cho bé đầy ý nghĩa trong các dịp sinh nhật, lễ Tết hay Quốc tế Thiếu nhi.
✨ ƯU ĐIỂM NỔI BẬT
✔️ Bộ gồm 6 búp bê công chúa với nhiều kiểu váy thời trang xinh xắn.
✔️ Thiết kế gương mặt đáng yêu, màu sắc tươi sáng, thu hút bé.
✔️ Trang phục được thiết kế tinh tế, đẹp mắt, giúp bé làm quen với thời trang và phối đồ.
✔️ Chất liệu nhựa cao cấp, bề mặt nhẵn mịn, an toàn cho trẻ nhỏ.
✔️ Kích thước nhỏ gọn, dễ mang theo khi đi chơi hoặc du lịch.
✔️ Phù hợp cho các trò chơi nhập vai, phát triển tư duy sáng tạo và khả năng giao tiếp.
📦 THÔNG TIN SẢN PHẨM
• Tên sản phẩm: Bộ Búp Bê Sally Fashion Princess
• Số lượng: 06 búp bê công chúa
• Kích thước hộp: 37 x 40 x 6 cm
• Chất liệu: Nhựa cao cấp
• Màu sắc: Nhiều mẫu ngẫu nhiên như hình
• Độ tuổi phù hợp: Bé từ 3 tuổi trở lên
• Đóng gói: Hộp quà đẹp, chắc chắn
🎁 LỢI ÍCH DÀNH CHO BÉ
🌸 Phát triển trí tưởng tượng và khả năng sáng tạo.
🌸 Rèn luyện kỹ năng kể chuyện, giao tiếp và nhập vai.
🌸 Giúp bé nhận biết màu sắc, thời trang và thẩm mỹ.
🌸 Tạo thói quen vui chơi lành mạnh, hạn chế sử dụng điện thoại và thiết bị điện tử.
💝 MÓN QUÀ Ý NGHĨA CHO BÉ GÁI
Nếu bạn đang tìm bộ búp bê công chúa, búp bê thời trang, đồ chơi bé gái, đồ chơi cho bé hoặc quà tặng cho bé, thì bộ sưu tập 6 nàng công chúa Sally Fashion Princess chắc chắn sẽ khiến các bé yêu thích ngay từ lần đầu nhìn thấy.
🌟 CAM KẾT TỪ SHOP
✔️ Hàng mới 100%.
✔️ Kiểm tra kỹ trước khi đóng gói.
✔️ Đóng gói cẩn thận, hạn chế va đập.
✔️ Hỗ trợ đổi trả theo chính sách Shopee nếu sản phẩm có lỗi từ nhà sản xuất.
#Bo6BupBeCongChua #BupBeCongChua #BupBeThoiTrang #BupBeKemPhuKien #DoChoiBeGai #DoChoiChoBe #DoChoiTreEm #QuaTangChoBe #QuaTangSinhNhat #BupBeMini #FashionPrincess #SallyFashionPrincess #DoChoiNhapVai #DoChoiSangTao #DoChoiAnToan #DoChoi3Tuoi #BupBeDep #DoChoiCaoCap #QuaTangBeGai #BupBeTreEm','[{"n": "Recommended Age", "v": "3 - 5 years"}, {"n": "Material", "v": "ABS"}, {"n": "Gender", "v": "Girl"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Búp bê & Thú nhồi bông','Búp bê & Phụ kiện']::text[],'https://shopee.vn/product/67689883/49311939458') on conflict (id) do nothing;
delete from product_images where product_id='49311939458';
insert into product_images(product_id,url,sort_order) values ('49311939458','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9gxk242fprfa',0);
insert into product_images(product_id,url,sort_order) values ('49311939458','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9gik81n66ne6',1);
insert into product_images(product_id,url,sort_order) values ('49311939458','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9goh2z7z0u7c',2);
insert into product_images(product_id,url,sort_order) values ('49311939458','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9glayxx4wedb',3);
insert into product_images(product_id,url,sort_order) values ('49311939458','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mp9giory1urme2',4);
delete from product_variants where product_id='49311939458'; delete from product_models where product_id='49311939458'; delete from product_categories where product_id='49311939458';
insert into product_categories values ('49311939458','271399347') on conflict do nothing;
insert into product_categories values ('49311939458','271741704') on conflict do nothing;
delete from reviews where product_id='49311939458' and source='shopee';
insert into reviews(product_id,user_name,star,comment,variant,images,shop_reply,created_at) values ('49311939458','duyphuongduong1981',5,'','','{}'::text[],'Chân thành cảm ơn khách iu đã tin tưởng ủng hộ shop, chúc bạn luôn vui vẻ và thành công',to_timestamp(1788072086));
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('41281599083','Bộ Cờ Vua & Cờ Đam Nam Châm, Đồ Chơi Trí Tuệ Cho Bé, Đồ Chơi Cho Bé','bo-co-vua-co-dam-nam-cham-do-choi-tri-tue-cho-be-do-choi-cho-be-99083',247470,null,339000,27,null,2,0.00,0,'{0,0,0,0,0}','','BỘ CỜ VUA & CỜ ĐAM NAM CHÂM 2 TRONG 1 – VỪA HỌC VỪA CHƠI, PHÁT TRIỂN TƯ DUY TOÀN DIỆN
Bạn đang tìm một món đồ chơi giúp trẻ rèn luyện tư duy logic, tăng khả năng tập trung và giảm thời gian sử dụng thiết bị điện tử? Bộ Cờ Vua & Cờ Đam Nam Châm 2 Trong 1 là lựa chọn lý tưởng dành cho trẻ em, học sinh và cả gia đình.
ƯU ĐIỂM NỔI BẬT
✅ 2 trò chơi trong 1 sản phẩm
Chơi được cả Cờ Vua và Cờ Đam.
Mang đến nhiều trải nghiệm giải trí hấp dẫn.
✅ Quân cờ nam châm chắc chắn
Tích hợp từ tính giúp quân cờ bám bàn tốt.
Hạn chế xê dịch khi di chuyển hoặc chơi trên xe.
✅ Thiết kế gấp gọn tiện lợi
Bàn cờ có thể gập đôi.
Dễ dàng cất giữ và mang theo khi du lịch, dã ngoại.
✅ Phát triển trí tuệ
Rèn luyện tư duy chiến thuật.
Tăng khả năng quan sát và ghi nhớ.
Nâng cao kỹ năng giải quyết vấn đề.
✅ Phù hợp nhiều độ tuổi
Trẻ em từ 6 tuổi trở lên.
Học sinh, sinh viên và người lớn yêu thích cờ vua.
THÔNG TIN SẢN PHẨM
Kích Thước: 12x24x4 cm
Tên sản phẩm: Bộ Cờ Vua & Cờ Đam Nam Châm 2 Trong 1
Chất liệu: Nhựa cao cấp
Kiểu bàn cờ: Gấp gọn
Tính năng: Nam châm từ tính
Màu sắc quân cờ: Nâu – Vàng
Độ tuổi phù hợp: Từ 6 tuổi trở lên
Công dụng: Giải trí, học tập, phát triển tư duy
BỘ SẢN PHẨM BAO GỒM
📦 01 Bàn cờ gấp gọn nam châm
📦 Bộ quân cờ vua đầy đủ
📦 Bộ quân cờ đam đầy đủ
CAM KẾT TỪ SHOP
✔️ Hàng mới 100%
✔️ Kiểm tra kỹ trước khi đóng gói
✔️ Đóng gói cẩn thận chống va đập
✔️ Hỗ trợ đổi trả theo chính sách Shopee
#covua #codam #bocovua #covuanamcham #covuagapgon #dochoitrithue #dochoigiaoduc #boardgame #dochoichobe #cotuong #quanco #gamegiadinh #covuatreem #quatangchobe #shopeevn','[{"n": "Recommended Age", "v": "6 - 8 Years"}, {"n": "Custom Product", "v": "No"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi giáo dục','Đồ chơi xếp hình']::text[],'https://shopee.vn/product/67689883/41281599083') on conflict (id) do nothing;
delete from product_images where product_id='41281599083';
insert into product_images(product_id,url,sort_order) values ('41281599083','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpaxz0calhxrdb',0);
insert into product_images(product_id,url,sort_order) values ('41281599083','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpaxlddog6bkfb',1);
insert into product_images(product_id,url,sort_order) values ('41281599083','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpaxowpfhmo0d7',2);
insert into product_images(product_id,url,sort_order) values ('41281599083','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpaxkkedc36450',3);
insert into product_images(product_id,url,sort_order) values ('41281599083','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mpaxnjo4ts7j4e',4);
delete from product_variants where product_id='41281599083'; delete from product_models where product_id='41281599083'; delete from product_categories where product_id='41281599083';
insert into product_categories values ('41281599083','271399347') on conflict do nothing;
insert into product_categories values ('41281599083','271742027') on conflict do nothing;
delete from reviews where product_id='41281599083' and source='shopee';
insert into products(id,name,slug,price,price_max,price_before,discount,stock,sold,rating,rating_count,rating_dist,brand,description,attrs,catpath,shopee_url) values ('40883175561','Bộ Đồ Chơi Đất Nặn Máy Làm Mì Cho Bé Kèm Khuôn Tạo Hình, Đồ Chơi Sáng Tạo,Đồ Chơi Cho Bé','bo-do-choi-dat-nan-may-lam-mi-cho-be-kem-khuon-tao-hinh-do-choi-sang-tao-do-choi-75561',353000,null,null,0,null,0,0.00,0,'{0,0,0,0,0}','','Bộ đồ chơi đất nặn mô phỏng máy làm mì mini, giúp bé thỏa sức sáng tạo các món ăn, sợi mì và nhiều hình dáng ngộ nghĩnh. Thiết kế tay quay dễ thao tác, màu sắc bắt mắt, phù hợp làm đồ chơi giải trí và rèn luyện kỹ năng cho trẻ từ 3 tuổi.
Điểm nổi bật
Máy ép đất nặn dạng quay tay, thao tác đơn giản và thú vị.
Tạo được các sợi mì đất nặn với nhiều hình dáng khác nhau.
Đi kèm nhiều khuôn tạo hình như trái cây, bánh, ngôi sao và các hình trang trí.
Hỗ trợ bé rèn luyện vận động tinh, phối hợp tay – mắt và khả năng quan sát.
Khuyến khích trí tưởng tượng, tư duy sáng tạo và nhận biết màu sắc.
Chủ đề làm bếp sinh động, thích hợp để bé chơi nhập vai cùng bạn bè hoặc ba mẹ.
Phù hợp làm quà tặng sinh nhật, quà lễ hoặc đồ chơi tại nhà cho bé.
Thông tin sản phẩm
Kích Thước: 19x27x9 cm
Tên sản phẩm: Bộ máy làm mì và tạo hình đất nặn cho bé
Dòng sản phẩm: Đồ chơi thủ công sáng tạo
Độ tuổi đề xuất: Từ 3 tuổi trở lên
Màu sắc: Hồng phối nhiều màu
Cách sử dụng: Cho đất nặn vào máy, lắp khuôn và xoay tay cầm để tạo hình
Bộ sản phẩm: Máy tạo hình cùng các khuôn và phụ kiện theo hình ảnh hoặc phân loại của shop
Hướng dẫn sử dụng
Làm mềm đất nặn trước khi cho vào máy.
Lắp đầu khuôn tạo hình mong muốn.
Cho đất nặn vào khoang chứa.
Xoay tay cầm để tạo sợi hoặc hình trang trí.
Vệ sinh dụng cụ và cất gọn sau khi chơi.
Lưu ý
Đất nặn là đồ chơi, không được ăn.
Trẻ nên chơi dưới sự giám sát của người lớn.
Không để sản phẩm gần nguồn nhiệt hoặc nơi ẩm ướt.
Màu sắc thực tế có thể chênh lệch nhẹ do ánh sáng và màn hình hiển thị.
#dochoidatnan #datnanchobe #datsetnanchobe #maylammidatnan #mayepdatnan #bokhuontaohinh #dochoisangtao #dochoigiaoduc #dochoibepchobe #dochoichobe3tuoi #dochoithucong #dochoiphattrientritue #dochoichobegai #quatangchobe','[{"n": "Material", "v": "ABS, Clay"}, {"n": "Recommended Age", "v": "3 - 4 years"}, {"n": "Build-in Battery", "v": "No"}]'::jsonb,array['Mẹ & Bé','Đồ chơi','Đồ chơi nhập vai']::text[],'https://shopee.vn/product/67689883/40883175561') on conflict (id) do nothing;
delete from product_images where product_id='40883175561';
insert into product_images(product_id,url,sort_order) values ('40883175561','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mrbncbhtfpj985',0);
insert into product_images(product_id,url,sort_order) values ('40883175561','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mrbmytmxjfv046',1);
insert into product_images(product_id,url,sort_order) values ('40883175561','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mrbmytn6328171',2);
insert into product_images(product_id,url,sort_order) values ('40883175561','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mrbmzmgxupzgbc',3);
insert into product_images(product_id,url,sort_order) values ('40883175561','https://down-vn.img.susercontent.com/file/vn-11134207-81ztc-mrbn0cp9na4k3a',4);
delete from product_variants where product_id='40883175561'; delete from product_models where product_id='40883175561'; delete from product_categories where product_id='40883175561';
insert into product_categories values ('40883175561','khac') on conflict do nothing;
delete from reviews where product_id='40883175561' and source='shopee';
commit;