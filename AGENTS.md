# AGENTS.md — Một Đời Việt

Tài liệu này áp dụng cho Codex hoặc AI hỗ trợ thay đổi source của project. Không dùng như bằng chứng cho việc code đã được triển khai hoặc test.

## 1. Bối cảnh và quyền ưu tiên

- Thực hiện theo thứ tự: **(1)** quyết định mới nhất của chủ dự án; **(2)** Project Instructions mới nhất; **(3)** GDD mới nhất đã được duyệt **toàn văn**; **(4)** Project Brief; **(5)** đề xuất chưa chốt.
- Trước mỗi phase, đọc các tài liệu nguồn **thực sự có thể truy cập** và kiểm tra repository, file, scene, plugin, phiên bản Godot hiện hữu. Không tự khẳng định đã đọc hay đã có file khi chưa xác minh.
- Phân biệt: **ĐÃ CHỐT / DUYỆT THỬ NGHIỆM / ĐỀ XUẤT / GIẢ ĐỊNH / CHƯA KIỂM CHỨNG**.
- GDD v0.3 và Art Bible v0.2 hiện là bản nháp hợp nhất, không tự nâng toàn văn thành quyết định đã chốt.

## 2. Những điều không được thay đổi

- Định hướng game: mô phỏng đời sống Việt Nam hư cấu, tự chọn xuất phát quê/thành phố, nghề linh hoạt, trải nghiệm thư giãn.
- Art: **2D Chibi Pixel Art chi tiết, top-down 3/4**; không chuyển thành 3D, 2.5D, isometric hoặc cartoon nét mịn.
- Nền tảng: iOS/iPhone ưu tiên kiểm thử, Android và Windows PC cùng codebase; mobile landscape.
- MVP: single-player, offline-first; không backend, tài khoản, cloud save, quảng cáo, thanh toán, multiplayer hoặc AI thoại trả phí.
- Chi phí phát triển bổ sung: **0 đồng**. Kiểm tra license/ghi công/quyền thương mại của asset/font/âm thanh khi cần.

## 3. Trạng thái thông số thử nghiệm

- Tile 32×32 px; sprite 32×48 và 48×64 px để so sánh; walk 4–6 frame/hướng, idle 2–4 frame/hướng.
- Logical viewport 640×360; nearest-neighbor; ưu tiên integer scaling.
- Các thông số trên **được duyệt để thử nghiệm**, chưa khóa chuẩn cuối. Font/palette/renderer/FPS/iPhone tối thiểu và touch controls chưa chốt.

## 4. Quy trình bắt buộc

**Read → Plan → Implement → Verify → Report**.

1. **Read:** xác minh working directory, `project.godot`, Git, source và tài liệu mới nhất.
2. **Plan:** nêu mục tiêu phase, file dự kiến tạo/sửa, rủi ro, phạm vi không đụng tới, cách kiểm thử; xin phép khi có lựa chọn hoặc thay đổi chưa được phê duyệt.
3. **Implement:** chỉ sửa đúng phạm vi; không thêm tính năng ngoài phase và không tạo class/script rỗng dự phòng.
4. **Verify:** chạy test khả thi trên đúng môi trường; có log hoặc thao tác tái hiện; không lấy mockup/ảnh tĩnh làm bằng chứng gameplay.
5. **Report:** danh sách file thực tế tạo/sửa; logic thay đổi; bảng **PASS / FAIL / NOT RUN / BLOCKED** kèm bằng chứng, bug, giới hạn và việc cần người dùng làm.

## 5. Phạm vi đặc biệt P0-A

P0-A trên Windows **chỉ** gồm audit môi trường, khởi tạo Godot/Git local, cấu hình thử nghiệm, scene UI smoke-test có tiếng Việt và bộ đếm click, kiểm thử Windows, README/AGENTS/báo cáo và chuẩn bị bàn giao sang Mac.

**Nghiêm cấm trong P0-A:** Player Controller, NPC AI, inventory, economy, farming, fish pond, office, SaveService, bản đồ gameplay, networking, asset thương mại không rõ quyền, remote GitHub.

Không tự cài phần mềm, thay đổi cấu hình hệ thống, mua tài nguyên, commit, push, tạo remote, xóa/ghi đè file hoặc sửa repo khác khi chưa được người dùng cho phép.

## 6. Các phase sau (chưa được phép tự triển khai)

- P0-B: Mac/Xcode/iPhone thật; cùng project và phiên bản Godot; build/ký/cài/chạy nếu điều kiện cho phép, không tự mua Apple Developer Program.
- P1: player 4 hướng, touch/keyboard, camera/collision, một NPC thực sự di chuyển/idle/thoại trên bản đồ mẫu.
- P2–P8: mở rộng theo GDD và quyết định phê duyệt, không đưa nội dung sau MVP vào MVP.
- NPC về sau phải có ID ổn định, lịch, di chuyển, hoạt ảnh, thoại tiếng Việt theo ngữ cảnh, tránh vật cản và không nhân đôi qua save/load. Ảnh tĩnh không đạt PASS.

## 7. Chính sách test và Git

- **PASS** chỉ khi có kiểm chứng; **FAIL** khi đã thử nhưng không đạt; **NOT RUN** khi chưa thử; **BLOCKED** khi thiếu điều kiện.
- Không gọi thao tác chuột Windows là bằng chứng touch iPhone PASS. Android/Windows/iPhone phải kiểm thử riêng.
- Không tự `git commit`, `git push`, thêm remote hoặc upload source. P0-A được phép chưa có commit.
- Không dựa vào `git diff` đơn lẻ để kiểm kê file mới chưa được Git theo dõi.
- Khi bàn giao Mac, bảo toàn source thực và file ẩn cần thiết, không chuyển cache `.godot/`, mật khẩu/token hay signing credential.
