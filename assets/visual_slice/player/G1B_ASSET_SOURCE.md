# G1B — Nguồn và quyền asset

- Asset: `player_g1b_48x64.png`, 48 × 64 px mỗi frame; sprite sheet 432 × 256 px, 36 frame.
- Nguồn: tự tạo bằng code vẽ pixel (Pillow) trong `art_source/`, dựa trên bộ G1 **nguyên gốc của cùng dự án**; không lấy nhân vật/pixel từ ảnh Farm, City_Office hoặc nguồn mạng.
- Cách tái tạo: chạy `python make_player_g1b.py` trong thư mục `art_source/` có `g1_previous_original_source.py` và Pillow; có kèm `g1_previous_player.png` làm tài liệu so sánh. Mẫu tham khảo cùng nguồn nằm trong dự án; generator không cần Internet.
- Quyền: asset do workflow dự án tạo; không có asset bên thứ ba được đưa vào PNG. Cần kiểm tra quy định cấp phép/chính sách của chủ dự án trước phát hành thương mại.
- Thư viện Pillow dùng làm công cụ vẽ mã nguồn mở; không cần được đưa vào bản build Godot.
- Phạm vi: G1B chỉ là **ứng viên thử nghiệm**, chưa được chủ dự án phê duyệt.
- Art Bible v0.2 là bản nháp, sử dụng đúng các ràng buộc đã chốt 2D chibi pixel art top-down 3/4.
