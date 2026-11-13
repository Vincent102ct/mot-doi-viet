
extends Control

# Số lần người dùng bấm nút
var click_count: int = 0

# Tham chiếu tới các node trong scene
@onready var test_button: Button = $CenterContainer/VBoxContainer/TestButton

@onready var count_label: Label = $CenterContainer/VBoxContainer/CountLabel


# Chạy khi scene khởi tạo
func _ready() -> void:
	test_button.pressed.connect(_on_test_button_pressed)
	get_window().min_size = Vector2i(640, 360)



# Chạy mỗi khi người dùng bấm nút
func _on_test_button_pressed() -> void:
	click_count += 1
	count_label.text = "Đã bấm %d lần" % click_count
