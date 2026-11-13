extends Node2D
## Only applies revised display frames to the P1-A Player in this isolated preview.
## Does not modify Player Controller, InputMap, collision, camera, main scene or world.

const G1B_FRAMES: SpriteFrames = preload("res://assets/visual_slice/player/player_g1b_48x64_frames.tres")

func _ready() -> void:
    var preview_sprite := get_node_or_null("P1AWorld/Player/AnimatedSprite2D") as AnimatedSprite2D
    if preview_sprite == null:
        push_error("G1B preview: expected P1AWorld/Player/AnimatedSprite2D was not found")
        return
    preview_sprite.sprite_frames = G1B_FRAMES
    preview_sprite.position = Vector2(0, -32) # 48x64 trial; retains original feet origin.
    preview_sprite.play(&"idle_down")
