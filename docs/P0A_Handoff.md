# Một Đời Việt — P0-A Handoff to Mac (DRAFT)

> Tài liệu chuẩn bị, **chưa chứng minh đã tạo ZIP, chuyển file hoặc test iPhone**.

## 1. Nguồn Windows

- Project folder thật: **[ĐIỀN ĐƯỜNG DẪN]**
- Godot Stable chính xác: **[ĐIỀN OUTPUT --version]**
- Main scene: `res://scenes/main.tscn` (kiểm tra trong Project Settings trước khi bàn giao)
- Git status / remote: **[ĐÍNH KÈM LOG]**

## 2. Nội dung bàn giao

Bàn giao **chính project Godot đã kiểm thử trên Windows**, gồm `project.godot`, scene, script, README, AGENTS, tài liệu và source asset hợp lệ nếu có. Giữ `.gitignore`, `.gitattributes`, cùng các file chưa được Git theo dõi. Không chỉ copy riêng `project.godot`.

Không chuyển cache `.godot/`, file tạm, log, output build, mật khẩu/token và thông tin signing. Nếu giữ lịch sử Git local, có thể chuyển `.git/` sau khi kiểm tra không có thông tin nhạy cảm; repository chưa commit vẫn được phép.

## 3. Archive và checksum (đợt tiếp theo)

- Tên ZIP đề xuất: `Mot_Doi_Viet_P0A_Transfer.zip`.
- Lưu ZIP **bên ngoài** thư mục project, tránh nén lồng chính file ZIP.
- Tạo manifest SHA-256 cho file nguồn, ghi rõ danh sách loại trừ.
- Mở ZIP kiểm tra tên/thư mục ẩn cần thiết và đối chiếu checksum sau khi giải nén.
- **Trạng thái hiện tại: NOT RUN**.

## 4. Mở trên Mac (chỉ thực hiện tại P0-B)

1. Giải nén project vào thư mục mới, không đè file hiện hữu.
2. Cài/sử dụng **đúng phiên bản Godot** như trên Windows nếu môi trường đáp ứng.
3. Import `project.godot` từ thư mục đã giải nén; chờ Godot tạo lại cache `.godot/`.
4. Kiểm tra Git local (nếu có chuyển `.git/`) và chạy Main Scene bằng F5.
5. Kiểm tra hiển thị tiếng Việt, click bộ đếm và cửa sổ macOS.
6. Kiểm tra macOS, Xcode, export template, khả năng signing/cài và chạy app trên iPhone thật theo kế hoạch P0-B; báo FAIL/BLOCKED nếu không đáp ứng, không tự mua tài khoản.

## 5. Điều còn mở

- Godot version, Mac model/macOS, Xcode, iOS/iPhone model: **CHƯA ĐỦ BẰNG CHỨNG**.
- iPhone landscape, safe area và touch: **NOT RUN**.
- Không tạo project Godot thứ hai, không sửa Windows và Mac song song nếu chưa có quy trình đồng bộ.
