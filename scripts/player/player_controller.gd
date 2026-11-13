extends CharacterBody2D
## CharacterBody2D origin stays at the player's feet, animation offset is -24.

const PlayerInput = preload("res://scripts/player/player_input.gd")

@export_range(10.0, 300.0, 1.0, "suffix:px/s") var move_speed: float = 115.0

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
var _input_adapter = PlayerInput.new()
var _facing: StringName = &"down"


func _ready() -> void:
	animated_sprite.play(&"idle_down")


func _physics_process(_delta: float) -> void:
	var direction: Vector2 = _input_adapter.get_move_direction().limit_length(1.0)
	velocity = direction * move_speed
	move_and_slide()

	if direction.length_squared() > 0.0001:
		# Horizontal wins exact diagonal ties. Deterministic, avoids flicker.
		if absf(direction.x) >= absf(direction.y):
			_facing = &"right" if direction.x > 0.0 else &"left"
		else:
			_facing = &"down" if direction.y > 0.0 else &"up"

	var state: String = "walk" if direction.length_squared() > 0.0001 else "idle"
	var next_animation: StringName = StringName("%s_%s" % [state, _facing])
	if animated_sprite.animation != next_animation or not animated_sprite.is_playing():
		animated_sprite.play(next_animation)


func set_virtual_move_direction(direction: Vector2) -> void:
	# Integration point for future touch controls; not used in P1-A.
	_input_adapter.set_virtual_direction(direction)
