extends Node2D
## G1-only preview overlay. This wraps the LIVE P1-A world rather than copying it.
## No Player controller/input/collision/camera/scene source is modified.

const G1_FRAMES: SpriteFrames = preload("res://assets/visual_slice/player/player_g1_48x64_frames.tres")

@onready var preview_sprite: AnimatedSprite2D = $P1AWorld/Player/AnimatedSprite2D


func _ready() -> void:
    if preview_sprite == null:
        push_error("G1 preview: P1-A Player/AnimatedSprite2D node missing")
        return
    preview_sprite.sprite_frames = G1_FRAMES
    preview_sprite.position = Vector2(0, -32) # 48x64 art; original Player foot collider untouched
    preview_sprite.play(&"idle_down")
