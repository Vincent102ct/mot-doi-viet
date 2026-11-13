# Một Đời Việt

> Trạng thái: P0-A — Windows Project Foundation (chưa nghiệm thu toàn bộ P0).

## 1. Giới thiệu

Một Đời Việt là dự án game mô phỏng đời sống và nhiều nghề trong bối cảnh Việt Nam hư cấu. Định hướng đã chốt: đồ họa 2D Chibi Pixel Art chi tiết, góc nhìn top-down 3/4, trải nghiệm thư giãn; người chơi có thể xuất phát ở quê hoặc thành phố.

Mục tiêu nền tảng: iOS/iPhone được ưu tiên kiểm thử; Android và Windows PC cùng mục tiêu với **một codebase**. MVP là single-player, offline-first, lưu cục bộ; không có backend, tài khoản hay dịch vụ trả phí.

## 2. Công cụ và môi trường

- Godot: `v4.7.2 stable` — bản Stable, Standard, GDScript.
- Git trên Windows: `2.54.0.windows.1` (kết quả người dùng đã cung cấp).
- Windows: Windows 11 Pro, build `26200`, x64 (kết quả đã cung cấp).
- Đường dẫn project trên Windows: `D:\TLK\mot-doi-viet\một-đời-việt`.
- Renderer đang dùng: **[ĐIỀN GIÁ TRỊ THỰC TỪ PROJECT SETTINGS]**; chưa phải lựa chọn cuối cho iPhone.

## 3. Mở và chạy smoke-test

1. Mở Godot bằng **cùng phiên bản** đã ghi ở mục 2.
2. Trong Project Manager, chọn **Import**, trỏ tới file `project.godot` nếu project chưa xuất hiện; hoặc mở project đã có.
3. Mở scene `res://scenes/main.tscn`.
4. Nhấn **F5** để chạy Main Scene; hoặc **F6** để chạy scene đang mở.
5. Kiểm tra có tiêu đề `Một Đời Việt`, dòng `Trồng rau, nuôi cá, làm việc văn phòng`, nút `Bấm thử` và bộ đếm.
6. Bấm nút; sau mỗi lần bấm, số đếm tăng đúng 1.
7. Kiểm tra cửa sổ Windows kéo thay đổi kích thước không cắt nội dung quan trọng trong khoảng kích thước hỗ trợ.

**Smoke-test** là màn hình kiểm tra chương trình khởi động và nhận input, **không phải gameplay**.

## 4. Cấu hình hiển thị đang thử nghiệm

- Mobile landscape: **ĐÃ CHỐT**.
- Logical viewport `640 × 360`: **DUYỆT THỬ NGHIỆM**, chưa khóa.
- Nearest-neighbor và ưu tiên integer scaling: **DUYỆT THỬ NGHIỆM**.
- Tile `32 × 32`, sprite `32 × 48` so với `48 × 64`, walk/idle frame: chưa triển khai trong P0-A và chưa khóa thông số cuối.
- Font, palette, renderer, FPS, touch UI và thiết bị iPhone tối thiểu: **CHƯA CHỐT/CHƯA KIỂM CHỨNG**.

## 5. Các file chính

- `project.godot`: cấu hình Godot.
- `scenes/main.tscn`: scene kiểm tra.
- `scripts/main.gd`: xử lý nút bấm và bộ đếm.
- `AGENTS.md`: quy định thực thi dành cho Codex/AI hỗ trợ lập trình.
- `docs/P0A_Report.md`: báo cáo P0-A (cập nhật bằng chứng thực tế).
- `docs/P0A_Handoff.md`: hướng dẫn chuẩn bị bàn giao sang Mac (chưa hoàn tất ZIP).

Không tạo thư mục `assets/`, `data/`, `tests/` rỗng nếu chưa có nội dung thực sự. Không biến ảnh concept thành asset gameplay.

## 6. Giới hạn P0-A

P0-A **không** có Player Controller, NPC AI, farming, fish pond, office mini-game, inventory, economy, save/load, map gameplay, multiplayer, server, ads hoặc thanh toán. Những thành phần đó thuộc các phase sau. Không báo hoàn tất P0 hoặc sẵn sàng P1 chỉ vì scene chạy trên Windows.

## 7. Quy tắc an toàn và bàn giao

- Ngân sách phát triển bổ sung: **0 đồng**; không tự mua tài nguyên hoặc phần mềm.
- Không tự commit, push, tạo remote, xóa dữ liệu hoặc ghi đè project.
- Đóng Godot trước khi đóng gói source sang Mac; loại trừ cache `.godot/`, file tạm, build, dữ liệu nhạy cảm.
- Chỉ bàn giao **chính project** đã kiểm thử trên Windows; không tạo project Godot khác cho Mac.
- Chi tiết và kết quả thực tế: `docs/P0A_Report.md`, `docs/P0A_Handoff.md`.

## 8. Tài liệu thiết kế tham chiếu

Đối chiếu Project Instructions v1.2, Project Brief v1.2, GDD v0.3, Art Bible v0.2, NPC Spec v0.1, S0 Product Strategy v0.1 và hai ảnh Farm/City_Office. GDD v0.3 và Art Bible v0.2 là **bản nháp hợp nhất, chưa tự coi toàn văn đã duyệt**. Các tài liệu trong ChatGPT Project Sources không tự có trong repo Windows.
# mot-doi-viet
