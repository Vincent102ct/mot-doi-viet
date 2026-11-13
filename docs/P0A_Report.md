# Một Đời Việt — P0-A Report (WORKING DRAFT)

> Báo cáo đang hoàn thiện, **không phải chứng nhận P0-A PASS**. Chỉ thay đổi trạng thái kiểm tra khi có bằng chứng thực tế. Ngày mở báo cáo: 13/11/2026.

## A. Environment Audit

| Nội dung | Kết quả / bằng chứng |
|---|---|
| Hệ điều hành | Windows 11 Pro, Version 10.0.26200, build 26200 — do chủ dự án cung cấp từ PowerShell |
| Kiến trúc | x64-based PC — PowerShell |
| Ổ C còn trống | 89,41 GB tại thời điểm đo — PowerShell (không suy ra dung lượng ổ D) |
| Git | `git version 2.54.0.windows.1` — PowerShell |
| Godot Stable | **[ĐIỀN ĐÚNG KẾT QUẢ --version]** |
| Renderer | **[ĐIỀN GIÁ TRỊ ĐANG CẤU HÌNH]** |
| Workspace thực tế | **[ĐIỀN ĐƯỜNG DẪN CHỨA project.godot]** |
| Dung lượng ổ D / quyền truy cập | **[CHƯA XÁC MINH / ĐIỀN OUTPUT]** |
| Phụ thuộc còn thiếu | **[KIỂM TRA THỰC TẾ, KHÔNG TỰ GIẢ ĐỊNH]** |

## B. Implementation Summary

**Đã được người dùng xác nhận qua trao đổi:** Godot mở scene `main.tscn` bằng F5/F6; chữ tiếng Việt và nút đếm click hoạt động; đã thử resize cửa sổ; Git local có và không commit/remote.

**Cần xác minh tại máy bằng danh sách file và log:**

- `project.godot`: **[CÓ / CHƯA KIỂM TRA]**
- `scenes/main.tscn`: **[CÓ / CHƯA KIỂM TRA]**
- `scripts/main.gd`: **[CÓ / CHƯA KIỂM TRA]**
- `.gitignore`, `.gitattributes`: **[CÓ / CHƯA KIỂM TRA]**
- `README.md`, `AGENTS.md`: **[SAU KHI COPY VÀ XÁC NHẬN]**
- `docs/P0A_Report.md`, `docs/P0A_Handoff.md`: **[SAU KHI COPY VÀ XÁC NHẬN]**

**Không nằm trong phạm vi P0-A:** player, NPC AI, farming, fish, office, inventory, economy, SaveService, gameplay map, multiplayer, backend.

## C. Actual Project Structure

Dán kết quả **thực tế** từ PowerShell `Get-ChildItem` vào đây hoặc ghi danh sách hiện hữu. **Không coi cấu trúc dưới đây là đã được xác minh.**

```text
mot-doi-viet/                  [ĐƯỜNG DẪN THỰC TẾ?]
  project.godot               [CẦN XÁC MINH]
  scenes/main.tscn            [CẦN XÁC MINH]
  scripts/main.gd             [CẦN XÁC MINH]
  README.md                   [DỰ KIẾN TẠO ĐỢT 4]
  AGENTS.md                   [DỰ KIẾN TẠO ĐỢT 4]
  docs/P0A_Report.md          [DỰ KIẾN TẠO ĐỢT 4]
  docs/P0A_Handoff.md         [DỰ KIẾN TẠO ĐỢT 4]
```

- Main scene trong Project Settings: **[res://scenes/main.tscn — CẦN ĐỐI CHIẾU THỰC TẾ]**.
- Git `status`: **[DÁN OUTPUT]**.
- Git `remote -v`: **[DÁN OUTPUT HOẶC GHI KHÔNG CÓ OUTPUT]**.
- Git commit count/log: **[KIỂM TRA, KHÔNG TỰ COMMIT]**.

## D. Verification Report — A01 đến A15

Quy tắc: PASS = có bằng chứng đã đạt; FAIL = đã thử nhưng không đạt; NOT RUN = chưa thử; BLOCKED = thiếu điều kiện không thể thử.

| ID | Kiểm tra | Trạng thái hiện ghi | Bằng chứng / việc cần bổ sung |
|---|---|---|---|
| A01 | Windows version | PASS | Kết quả PowerShell: Windows 11 Pro, build 26200 |
| A02 | Godot Stable/version | NOT RUN | Chưa có output phiên bản Godot trong báo cáo |
| A03 | Git version | PASS | `git version 2.54.0.windows.1` |
| A04 | Workspace hợp lệ | NOT RUN | Chưa có đường dẫn thực tế và kiểm tra thư mục |
| A05 | Godot project khởi tạo | PASS (người dùng xác nhận) | Scene chạy trong Godot; lưu đường dẫn `project.godot` |
| A06 | Import/parse project | PASS (người dùng xác nhận) | F5/F6 chạy được; bổ sung Debugger log nếu có |
| A07 | Smoke-test Windows | PASS (người dùng xác nhận) | Ảnh màn hình chạy, F5 hoạt động |
| A08 | Chữ Việt có dấu | PASS (ảnh minh họa thực tế) | Đã thấy `Một Đời Việt` và dòng mô tả |
| A09 | Click chuột hoạt động | PASS (người dùng xác nhận) | Bộ đếm tăng; bổ sung ảnh bộ đếm nếu lưu bằng chứng |
| A10 | Bố cục ngang/resize | NOT RUN | Người dùng báo đã sửa; cần lưu ảnh ở các kích thước sau sửa |
| A11 | Git local không commit/push | NOT RUN | Người dùng xác nhận; chờ `git status`, `git remote -v` |
| A12 | Không gameplay ngoài scope | NOT RUN | Chưa kiểm kê toàn bộ file/script hiện hữu |
| A13 | Không phụ thuộc trả phí | NOT RUN | Chưa rà soát addon/asset/font thực tế |
| A14 | Archive bàn giao đã xác minh | NOT RUN | Đợt 5: ZIP + manifest SHA-256 + kiểm tra nội dung |
| A15 | README/AGENTS/Handoff Report | NOT RUN | Chỉ PASS sau khi tạo và kiểm tra đúng file trên máy |

**Lưu ý:** Những dòng `PASS (người dùng xác nhận)` cần bổ sung evidence/log nếu dùng làm báo cáo nghiệm thu chính thức; không xem người trợ lý đã trực tiếp chạy test trên Windows.

## E. Mac Handoff

- ZIP bàn giao: **CHƯA TẠO/CHƯA XÁC MINH**.
- Manifest/checksum: **CHƯA TẠO/CHƯA XÁC MINH**.
- Godot version dùng trên Mac: **[LẤY TỪ MÁY WINDOWS, CHƯA XÁC MINH]**.
- Hướng dẫn chuẩn bị: `docs/P0A_Handoff.md`.

## F. P0-B Readiness

- Chuyển sang Mac: **CHƯA ĐỦ BẰNG CHỨNG** cho tới khi archive/manifest được kiểm tra.
- Mac/Xcode/iPhone thật, signing, cài/chạy offline và touch: **NOT RUN**.
- Không mua Apple Developer Program hoặc dịch vụ trả phí để khắc phục blocker khi chưa được duyệt.

## G. Final Verdict

- **P0-A: CHƯA KẾT LUẬN PASS** (còn các bài test/tài liệu/handoff chưa xác minh).
- **P0-B: NOT RUN**.
- **P0-C: NOT RUN**.
- **P0 tổng thể: Chưa hoàn thành**.
- **P1 Ready: NO**.

## Việc cần làm tiếp theo

1. Hoàn tất và xác minh các file tài liệu Đợt 4.
2. Lưu bằng chứng PowerShell/Godot cho A02, A04, A10–A13, A15.
3. Đợt 5: tạo ZIP bên ngoài thư mục project, SHA-256 manifest và kiểm tra gói bàn giao.
4. Chỉ sau khi P0-A đáp ứng Definition of Done mới đánh giá chuyển P0-B.
