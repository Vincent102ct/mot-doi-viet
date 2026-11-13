extends RefCounted
## Adapter: keyboard now, optional on-screen joystick later. No OS-specific APIs.

var _virtual_direction: Vector2 = Vector2.ZERO


func set_virtual_direction(direction: Vector2) -> void:
	# Future touch UI can call this without changing Player physics.
	_virtual_direction = direction.limit_length(1.0)


func get_move_direction() -> Vector2:
	if _virtual_direction.length_squared() > 0.0001:
		return _virtual_direction
	return Input.get_vector("move_left", "move_right", "move_up", "move_down")
