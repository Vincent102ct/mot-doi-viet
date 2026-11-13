# MỘT ĐỜI VIỆT — P1-A.1.0 + P1-A.1.1 — G1B (ART CANDIDATE)

**Ngày:** 13/11/2026  
**Trạng thái:** CANDIDATE / WAITING FOR OWNER APPROVAL  
**Không triển khai:** P1-A.1.2, P1-A.1.3, P1-A.1.4, NPC hoặc nghề nghiệp.

## A. Baseline

- Windows project do chủ dự án xác nhận: `D:\TLK\mot-doi-viet\một-đời-việt`.
- Log `git rev-parse HEAD` trên Windows đã cung cấp: `c9f19dbbc75a308736b258753d50e8016d21a922` (trước gói G1B); `project.godot` M và các file P1-A/G1 chưa commit.
- Godot: log hiển thị tiến trình `Godot_v4.7.2-stable_win64`.
- Ảnh F6 từ người dùng chứng minh G1 cũ hiển thị trong bản đồ kỹ thuật. Ảnh baseline P1-A đã được lưu trên Windows, chưa nhận được file ảnh baseline gốc để so pixel.
- GitHub `main` ở `c9f19db`, chưa có P1-A; **không thay thế working tree Windows**.
- Đọc từ gói đã bàn giao: `scripts/player/player_controller.gd`, `scripts/player/player_input.gd`, `scenes/player/player.tscn`, `scenes/prototypes/p1a_world.tscn`, G1 `.tres`, `AGENTS.md`, Art Bible v0.2 và hai ảnh Farm/City_Office. Source và Git chưa thể tự đọc trực tiếp trên ổ D trong lượt này.

## B. Implement

Chỉ bổ sung các file **mới có hậu tố G1B** vào `assets/visual_slice/player/`, `scenes/player`, `scenes/prototypes`, `scripts/prototypes`, `docs`; không sửa file cũ. Xem `overlay_sha256.json` và file apply.

- `player_g1b_48x64.png`: 432 × 256 px (4 hướng × 9 frame), mỗi frame 48 × 64 px. Idle 3 frame và walk 6 frame/hướng.
- So với G1: tóc đen xanh có cụm highlight, áo xanh ngọc và đường may rõ hơn, khăn/cổ đất nung, chi tiết túi và má, hướng nhân vật nhất quán. Phong cách không cam kết đạt chuẩn reference; phải duyệt trực tiếp.
- `SpriteFrames`: tám animation giữ đúng tên để controller cũ điều khiển.
- Scene F6 `res://scenes/prototypes/p1a1_player_g1b.tscn` kế thừa **world P1-A trên Windows** rồi chỉ thay SpriteFrames ở runtime. F5 vẫn chạy `main.tscn` cũ.
- `player_g1b_visual.tscn`: scene Player biến thể để so sánh; không bắt buộc để chạy F6.

## C. Evidence

- `evidence/G1B_4_Directions.png`: hiển thị bốn hướng (ảnh review ngoài Godot, **không phải F6**).
- `evidence/G1B_36_Frame_Review.png`: lưới 36 frame, không phải F6.
- `evidence/G1B_Animation_Review.gif`: GIF lặp giúp xem nhịp bước, không phải video Godot.
- `evidence/G1B_vs_G1.png`: so sánh G1 → G1B phóng pixel nearest-neighbor.
- F6 G1B thực tế / video / F5 regression: **NOT RUN** trong môi trường này; chủ dự án cần thu thập trên Windows.

## D. Test results

| ID | Hạng mục | Kết quả và bằng chứng |
|---|---|---|
| G1-01 | Bốn hướng nhất quán | PASS kiểm tra tĩnh 4 hướng; chất lượng thực tế chưa duyệt |
| G1-02 | Idle frame thật | PASS kiểm tra dữ liệu: 3 frame duy nhất/hướng; runtime NOT RUN |
| G1-03 | Walk frame thật | PASS kiểm tra dữ liệu: 6 frame duy nhất/hướng; runtime NOT RUN |
| G1-04 | Không rung/trượt chân | NOT RUN tại Godot GUI |
| G1-05 | Pixel sắc nét đúng scale | NOT RUN tại Godot GUI |
| G1-06 | Phù hợp ảnh Farm/City | BLOCKED — ART QUALITY: chưa đạt đánh giá người sở hữu |
| G1-07 | WASD/mũi tên sau G1B | NOT RUN |
| G1-08 | Chéo không nhanh hơn | NOT RUN |
| G1-09 | Collision | NOT RUN |
| G1-10 | Camera giới hạn | NOT RUN |
| G1-11 | F5 smoke-test | NOT RUN sau G1B |
| G1-12 | Parse/runtime | NOT RUN; môi trường này không có Godot binary |
| G1-13 | Asset và zero-cost | PASS kiểm kê package, sprite tự tạo; chưa nghiệm thu quyền thương mại cuối |
| G1-14 | Bảo toàn source/Git | PASS ở phạm vi file trong ZIP không có đường dẫn cũ; NOT RUN hậu kiểm Windows |

**Không gộp PASS kiểm tra tĩnh thành PASS test runtime.**

## E. Limitations

- Ảnh tham chiếu là concept có mật độ mỹ thuật cao, không thể tự xem là sprite 1:1; 48×64 vẫn là kích thước thử nghiệm.
- G1B mới rõ nét hơn nhưng vẫn dùng quy trình vẽ pixel bằng code, chưa đạt sự tinh xảo của một sprite nhân vật do pixel artist chỉnh thủ công kỹ càng.
- Không có ảnh F6/videoclip G1B và không có toàn bộ working tree Windows trong môi trường này.
- Bản đồ P1-A vẫn là hình học prototype; chưa được phép làm nhà, cây, rào, UI.
- Đề xuất tinh chỉnh tiếp Player **chỉ nếu chủ dự án chưa duyệt**, không mở phase tiếp theo.

## F. Final gate

| Cổng | Trạng thái |
|---|---|
| P1-A.1.0 — READ & BASELINE trên Windows | BLOCKED — không có truy cập live vào Windows; log + screenshots cung cấp cho phép baseline một phần |
| P1-A.1.1 — Player Art | BLOCKED — ART QUALITY / chưa có kiểm chứng F6 cho G1B; đã tạo tài nguyên và scene mới |
| G1 — Chủ dự án duyệt Player | WAITING FOR OWNER APPROVAL |
| P1-A.1.2 Environment | NOT AUTHORIZED |
| P1-A.1.3 Depth/UI | NOT AUTHORIZED |
| P1-A.1.4 Final QA | NOT AUTHORIZED |
| Git commit/push | NOT PERFORMED bởi gói này |

**STOP AFTER G1 — Không triển khai môi trường hoặc NPC.**
