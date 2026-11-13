# Một Đời Việt — P1-A.1.0 / P1-A.1.1 — G1 Player Art Review

**Ngày:** 13/11/2026. **Phạm vi:** P1-A.1.0 + P1-A.1.1, STOP FOR APPROVAL.

## A. Baseline & bằng chứng

- **Workspace Windows do chủ dự án chỉ định:** `D:\TLK\mot-doi-viet\một-đời-việt`. **Chưa trực tiếp truy cập từ môi trường hiện tại.**
- **GitHub main đã đọc:** `c9f19dbbc75a308736b258753d50e8016d21a922`. Remote không chứa file P1-A ở thời điểm đọc; local Windows đã cài P1-A theo xác nhận trước đó.
- **Git status lần gần nhất chủ dự án cung cấp (trước khi áp dụng P1-A v2):** `?? .editorconfig`, `?? icon.svg`, `?? icon.svg.import`. **Không được xem đó là trạng thái hiện tại.**
- **Source thực tế được đọc trong môi trường hiện tại:** P1-A Delivery v2 đóng gói trước đó, gồm `project.godot`, `scenes/player/player.tscn`, `scenes/prototypes/p1a_world.tscn`, `scripts/player/player_controller.gd`, `scripts/player/player_input.gd`, `assets/prototype/player/player_p1a_frames.tres`, PNG Player P1-A. Đọc `AGENTS.md` repository gốc (trên GitHub), Art Bible v0.2 và hai ảnh Farm/City_Office JPG gốc.
- **P1-A asset cũ:** sprite 32×48, 2 idle và 4 walk mỗi hướng, 24 frame; scene `Player` dùng `CharacterBody2D`, `AnimatedSprite2D` y=-24; collider 12×8 tại (0,-6); camera (0,-18); viewport thử 640×360; P1-A world kích thước 1280×768.
- **Baseline screenshot F6 từ Godot Windows:** **NOT RUN** — chưa được cung cấp và không truy cập Windows GUI. Phải chụp trước khi áp dụng G1.
- **Windows current HEAD, current git status, Godot --version và file untracked:** **NOT RUN**, cần chạy preflight trên đúng máy.

## B. Implementation (thực hiện ngoài Windows)

Tạo asset mới ở `assets/visual_slice/player/` và hai scene **mới**, không ghi đè file P1-A.

| Đường dẫn mới | Chức năng |
|---|---|
| `assets/visual_slice/player/player_g1_48x64.png` | Spritesheet RGBA 432×256, 36 frame 48×64, tự tạo pixel-by-pixel bằng script |
| `assets/visual_slice/player/player_g1_48x64_frames.tres` | SpriteFrames: 3 idle, 6 walk cho mỗi hướng |
| `assets/visual_slice/player/ASSET_SOURCE.md` | Nguồn gốc và trạng thái art candidate |
| `scenes/player/player_g1_visual.tscn` | Variant Player dùng controller/input/collider/camera cũ, sprite y=-32 |
| `scenes/prototypes/p1a1_player_g1.tscn` | Bản sao kỹ thuật world P1-A, chỉ thay instance Player bằng variant |
| `docs/P1A1_G1_Player_Report.md` | Báo cáo nghiệm thu và giới hạn |

**Cố ý giữ nguyên** `project.godot`, `scenes/main.tscn`, `scripts/main.gd`, `scenes/player/player.tscn`, `scripts/player/player_controller.gd`, `scripts/player/player_input.gd`, `scenes/prototypes/p1a_world.tscn`, SpriteFrames P1-A. Không tạo môi trường, HUD, NPC hay nghề nghiệp.

**Tỷ lệ thử nghiệm:** 48×64 nhằm có thêm pixel cho khuôn mặt, tóc, lớp áo và túi; 32×48 vẫn là kích thước prototype cũ, chưa khóa kích thước tương lai. G1 mới có tóc nâu đậm, áo ngoài xanh ngọc và sơ mi màu kem; cảm giác ấm, silhouette đầu lớn/thân ngắn.

**Đánh giá mỹ thuật nội bộ:** Mẫu mới chi tiết hơn P1-A về tóc/mắt/quần áo nhưng **vẫn đơn giản hơn đáng kể** các ảnh concept Farm/City_Office. Đặc biệt chưa có mức tinh xảo biểu cảm, shading vật liệu và chuyển động gần tiêu chuẩn minh họa. **Không đủ cơ sở đánh dấu ART QUALITY PASS.**

## C. Evidence

- `evidence/G1_contact_sheet.png`: tất cả bốn hướng, 3 idle + 6 walk/hướng; ảnh ghép từ file PNG thật nhưng **không phải screenshot Godot**.
- `evidence/G1_four_directions_4x.png`: mẫu bốn hướng phóng nearest-neighbor.
- `evidence/G1_animation_preview.gif`: chuyển frame raster, chỉ là preview offline, **không phải video gameplay F6**.
- `evidence/G1_sprite_verification.json`: frame uniqueness và alpha bounding boxes.
- **Screenshot F6 trước/sau, video Godot:** **NOT RUN**. Chủ dự án chụp sau khi mở scene P1-A và G1 trên Windows.
- Ảnh gốc không cắt thành spritesheet. Không sử dụng asset bên thứ ba có giấy phép mơ hồ. Source generator ở `art_source/make_player_g1.py`.

## D. Test Results

| Test | Kết quả | Bằng chứng / giới hạn |
|---|---|---|
| G1-01 bốn hướng, hình dáng nhất quán | PASS (tĩnh); NOT RUN (Godot) | Contact sheet bốn hàng; chưa đối chiếu khi chạy |
| G1-02 Idle có chuyển frame thật | PASS (tĩnh); NOT RUN (Godot) | 3 ảnh không trùng / hướng; nhịp idle cần quan sát |
| G1-03 Walk có chuyển frame thật | PASS (tĩnh); NOT RUN (Godot) | 6 ảnh không trùng / hướng, tay/chân thay đổi; cần đánh giá chân trượt |
| G1-04 không rung/trượt chân | NOT RUN | Phải quay F6 trên Windows |
| G1-05 pixel sắc nét ở scale thử | NOT RUN | Nearest cấu hình trong scene; phải quan sát viewport |
| G1-06 nhất quán art Farm/City | BLOCKED — ART QUALITY/ASSET | Nội bộ thấy chưa đạt độ tinh xảo; cần duyệt mẫu |
| G1-07 WASD và phím mũi tên | NOT RUN | Controller được giữ nguyên theo cấu trúc, chưa chạy Windows mới |
| G1-08 đi chéo chuẩn hóa | NOT RUN | Controller giữ `limit_length(1.0)`, chưa đo runtime |
| G1-09 collision | NOT RUN | Collider cũ không sửa; chưa thử trực tiếp |
| G1-10 camera | NOT RUN | Camera cũ không sửa; chưa thử trực tiếp |
| G1-11 F5 smoke-test | NOT RUN | Scene/script gốc không sửa; chưa kiểm tra hồi quy |
| G1-12 parse/runtime | NOT RUN | Không có Godot CLI/GUI trong môi trường này |
| G1-13 asset/chi phí | PASS (trong gói mới) | Tự tạo với code, không nhúng asset mua hoặc của bên thứ ba |
| G1-14 không ghi đè / git | PASS (gói mới); NOT RUN (Windows) | Không sửa repository/remote; kiểm tra sau cài cần thực hiện |

## E. Limitations

- Không có truy cập trực tiếp Git working tree/GUI Windows; không chụp F6, không kiểm tra Godot GUI.
- Không có bằng chứng về frame timing, trượt chân/khung nhìn hoặc lỗi parse trên Godot 4.7.2 thực.
- Sprite mới vẫn mang nét pixel art mức prototype, chưa đạt mức giàu chi tiết như ảnh gốc.
- Bản vẽ tạo bằng code, cần giám sát mỹ thuật thủ công trước khi coi là approved commercial art.
- Chỉ sử dụng đúng scene P1-A làm nền để so sánh; **không** dựng nhà, cây, UI hay lớp sâu.

## F. Final Gate

| Mốc | Trạng thái |
|---|---|
| P1-A.1.0 Windows baseline | **BLOCKED** — thiếu working tree mới nhất và screenshot F6 |
| P1-A.1.1 technical artifact | **ĐÃ TẠO ỨNG VIÊN**, nhưng tổng thể **BLOCKED** — runtime/art quality chưa đạt điều kiện PASS |
| G1 chủ dự án duyệt Player | **WAITING FOR OWNER APPROVAL** |
| P1-A.1.2 Environment | **NOT AUTHORIZED** |
| P1-A.1.3 Depth/UI | **NOT AUTHORIZED** |
| P1-A.1.4 Final QA | **NOT AUTHORIZED** |
| P1-B | **NOT AUTHORIZED** |
| Git commit / push | **NOT PERFORMED** |

**STOP FOR APPROVAL.** Không triển khai môi trường khi G1 chưa được chủ dự án duyệt rõ ràng.


## Bổ sung v3 — Tích hợp an toàn với world P1-A hiện có

- Log Windows của chủ dự án: `p1a_world.tscn` không khớp SHA256 gói tham chiếu; chưa có diff nội dung để kết luận nguyên nhân.
- Bản G1 v3 KHÔNG sao chép world P1-A cũ vào scene mới; thay bằng scene wrapper instance `res://scenes/prototypes/p1a_world.tscn` hiện có tại runtime.
- `scripts/prototypes/p1a1_g1_preview.gd` chỉ thay SpriteFrames và offset cho node `P1AWorld/Player/AnimatedSprite2D`; logic input/movement/collision/camera giữ nguyên.
- Script cài tiếp tục so hash Player core, kiểm tra world còn chứa Player path cần thiết, không ghi đè file có sẵn, yêu cầu ảnh baseline và đóng Godot.
- v3 **chưa được kiểm thử parse, GUI hoặc screenshot trên Windows**; phải kiểm tra F6/F5 trước G1.
- Asset quality G1 chưa đạt phê duyệt và các phase môi trường vẫn NOT AUTHORIZED.


## G1 v4 — Ghi chu sau khi nhan log Windows (13/11/2026)

- Windows da bao HEAD `c9f19db`, P1-A controller/input co mat, project.godot modified, P1-A source la untracked.
- Goi v3 da dung o `player_p1a_frames.tres` do SHA256 khac ban tham chieu. Khong suy ra resource loi hay mat du lieu.
- Goi v4 chi them file moi; kiem tra cau truc Player/controller/SpriteFrames/world thay vi yeu cau SHA256 trung tuyet doi.
- Truoc khi cai v4, screenshot baseline da duoc Windows script xac nhan ton tai (dua tren log nguoi dung).
- Godot F6 G1, regression va chat luong my thuat: NOT RUN / WAITING FOR OWNER APPROVAL.
- Khong tu dong commit/push.
