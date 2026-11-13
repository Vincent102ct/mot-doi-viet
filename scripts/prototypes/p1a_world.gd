extends Node2D
## 1280x768 prototype world drawn using Godot primitives; no external assets.

const WORLD_SIZE := Vector2i(1280, 768)
const TILE_SIZE := 32
const GRASS_A := Color("#8ecf81")
const GRASS_B := Color("#86c777")
const PATH := Color("#d3b48a")
const PATH_EDGE := Color("#ad996d")


func _draw() -> void:
	for y in range(0, WORLD_SIZE.y, TILE_SIZE):
		for x in range(0, WORLD_SIZE.x, TILE_SIZE):
			var tile_x: int = x / TILE_SIZE
			var tile_y: int = y / TILE_SIZE
			var tile_color := GRASS_A if (tile_x + tile_y) % 2 == 0 else GRASS_B
			draw_rect(Rect2(x, y, TILE_SIZE, TILE_SIZE), tile_color)
			# Sparse pixel clusters; visually distinct from collision bodies.
			if (tile_x * 19 + tile_y * 7) % 8 == 0:
				draw_rect(Rect2(x + 9, y + 9, 3, 3), Color("#5ea66e"))
				draw_rect(Rect2(x + 13, y + 12, 2, 2), Color("#b2df89"))
			if (tile_x * 11 + tile_y * 23) % 29 == 0:
				draw_rect(Rect2(x + 22, y + 22, 3, 3), Color("#fff0a0"))
		# One border path (horizontal) and one road (vertical).
	draw_rect(Rect2(0, 338, 1280, 94), PATH_EDGE)
	draw_rect(Rect2(0, 344, 1280, 82), PATH)
	draw_rect(Rect2(580, 0, 90, 768), PATH_EDGE)
	draw_rect(Rect2(586, 0, 78, 768), PATH)
	for x in range(20, WORLD_SIZE.x, 72):
		draw_rect(Rect2(x, 382, 24, 3), Color("#e6c9a2"))
