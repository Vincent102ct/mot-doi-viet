# Một Đời Việt — P1-A Implementation Report (delivery candidate)

## Baseline

- GitHub main at read time: `c9f19dbbc75a308736b258753d50e8016d21a922`.
- Windows reported local path: `D:\TLK\mot-doi-viet\một-đời-việt`.
- User-reported Godot version: `4.7.2 stable`; not executed on Windows by this report author.
- Remote files inspected: `project.godot`, `scenes/main.tscn`, `scripts/main.gd`, `README.md`, `AGENTS.md`, `.gitignore`, `.gitattributes`, `docs/P0A_Report.md` plus GitHub tree.
- Remote baseline P0-A: 1 smoke-test scene, 1 script. A12/A13 manually PASS for remote commit only; not evidence of Windows working-tree state.
- Local Windows Git status/untracked: **NOT ACCESSIBLE / NOT VERIFIED** until applying the overlay on the user's computer.
- Missing `icon.svg`: GitHub tree lacked the file, but `project.godot` refers to it. The overlay adds a small original SVG, without external license.

## Design

- F5: existing smoke-test `scenes/main.tscn` and `scripts/main.gd` **untouched**.
- F6: open `scenes/prototypes/p1a_world.tscn`, then use WASD / arrow keys.
- Input Map in `project.godot` maps four actions to keyboard physical keys. `player_input.gd` maps InputMap to vector and has a setter for future virtual joystick input; NO touchscreen controls are implemented.
- `player_controller.gd` receives a clamped vector, sets `CharacterBody2D.velocity`, calls `move_and_slide()`, switches idle/walk according to direction. Diagonal exact ties prefer horizontal facing.
- Player origin denotes feet. `AnimatedSprite2D` at (0,-24), 12×8 collision at (0,-6). Movement speed 115 px/s prototype value.
- 8 animated sprite states: idle_up/down/left/right = 2 real frames @2 fps; walk_up/down/left/right = 4 real frames @8 fps. Sheet 32×48 cells (trial only).
- Camera follows player, limits to 1280×768 world; 640×360 logical viewport (trial only).
- Prototype world is drawn with native 2D shapes and 11 `StaticBody2D` obstacles/boundaries. Offline, no external dependencies.

## Changed files (overlay to be applied on Windows)

- Modified `project.godot`: four InputMap actions ONLY.
- Created `icon.svg`: original fallback icon for missing config reference.
- Created `scenes/player/player.tscn`, `scenes/prototypes/p1a_world.tscn`.
- Created `scripts/player/player_input.gd`, `scripts/player/player_controller.gd`, `scripts/prototypes/p1a_world.gd`.
- Created `assets/prototype/player/player_p1a_32x48.png`, `assets/prototype/player/player_p1a_frames.tres`, `assets/prototype/player/ASSET_SOURCE.md`.
- Created `docs/P1A_Report.md`.

## Automated checks in prepared package

- Eight expected animation names and 24 **individually distinct** frames within each animation group checked via PNG pixels: **PASS (static audit)**.
- Source paths and expected Godot text resource references checked: **PASS (static audit)**.
- Main scene and script absent from overlay: **PASS**.
- No code networking, economy, NPC or third-party assets introduced by overlay: **PASS (static audit)**.
- Godot 4.7.2 headless import/parse: **NOT RUN** if executable unavailable in tool container.
- Windows editor GUI movement/collision/camera tests: **NOT RUN** until user runs scene on Windows.

## Manual P1-A verification matrix

| ID | Requirement | Current result |
|---|---|---|
| P1A-01 | WASD four directions | NOT RUN (Windows GUI) |
| P1A-02 | Arrow key directions | NOT RUN (Windows GUI) |
| P1A-03 | Diagonal speed | NOT RUN (Windows GUI/physics) |
| P1A-04 | Idle 4-way, real frames | Static sprite PASS; runtime NOT RUN |
| P1A-05 | Walk 4-way, real frames | Static sprite PASS; runtime NOT RUN |
| P1A-06 | Collision directions/corners | NOT RUN (Windows GUI) |
| P1A-07 | Camera following/limits | NOT RUN (Windows GUI) |
| P1A-08 | Window resize | NOT RUN (Windows GUI) |
| P1A-09 | F5 P0-A regression | NOT RUN after apply (previously user confirmed PASS) |
| P1A-10 | Godot parse/runtime no errors | NOT RUN |
| P1A-11 | Animation integrity | Static frame uniqueness PASS; runtime NOT RUN |
| P1A-12 | Scope, rights, no cost | PASS for package sources only |
| P1A-13 | Git safety | No Git mutation via package author; Windows working tree not verified |
| P1A-14 | Future touch interface | PASS (static code: setter and input adapter) |

## Known limitations / risks

- Asset is a hand-authored pixel **prototype**, not final Art Bible-approved art.
- Sprite is top-down 3/4-inspired and may require visual art-direction review.
- Camera and collision require real Godot GUI test before PASS.
- Some minor editor warnings may arise because exact Godot 4.7.2 parser wasn't available to package author.
- Input from touch/iPhone and other platforms: NOT RUN.
- P1-B NPC is OUT OF SCOPE.
- P0-B is NOT RUN / deferred at user's direction.

## Final verdict

- **P1-A Windows: NOT RUN / NOT ACCEPTED YET** until installed into the existing local Godot project and GUI tests completed.
- **P1 overall: INCOMPLETE**.
- **Git commit/push: NOT PERFORMED** during this work.
