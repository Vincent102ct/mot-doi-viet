# G1 Player — Asset source / scope

- **Status:** G1 CANDIDATE — chưa được chủ dự án duyệt; chưa phải sprite cuối cùng.
- **Asset:** `player_g1_48x64.png` (432 × 256, RGBA, 36 frame 48 × 64).
- **Origin:** Tạo mới bằng mã tạo pixel art do trợ lý viết riêng cho dự án ở `art_source/make_player_g1.py`, dùng Pillow để vẽ hình raster; không cắt hoặc tái sử dụng pixel từ hai ảnh concept Farm/City_Office.
- **Nguồn ngoài:** Không có spritesheet/texture bên thứ ba. Phụ thuộc tạo ảnh Pillow là thư viện mã nguồn mở, không chạy trong game.
- **Quyền sử dụng:** Asset được tạo theo yêu cầu dự án; trước phát hành thương mại cần thực hiện kiểm duyệt quyền/nguồn cuối theo chính sách dự án và điều khoản công cụ được sử dụng. Không khẳng định quyền thương mại của hai ảnh gốc.
- **Art:** tóc nâu, áo sơ mi kem, áo ngoài xanh ngọc, quai túi, quần xanh xám; bốn hướng có khác biệt.
- **Animation:** idle 3 frame/hướng, walk 6 frame/hướng (36 frame); các frame raster không trùng nhau, chưa đủ chứng minh chuyển động đạt chất lượng trong Godot.
- **Feet anchor:** mặt đáy frame ở y=64 (exclusive), AnimatedSprite2D đặt y=-32 để chân tại gốc Player.
- **Collision:** giữ nguyên 12 × 8 tại (0, -6), Camera2D giữ nguyên tại (0, -18).
- **Scale:** 48 × 64 chỉ là ứng viên; không khóa kích thước tile, viewport hoặc art bible.
- **Chưa có:** screenshot F6 thật trên máy Windows, video gameplay; cần chủ dự án kiểm tra và phê duyệt G1.
