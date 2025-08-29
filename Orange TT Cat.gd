extends CharacterBody2D

func _ready():
	Global.ottc_animation = $AnimatedSprite2D

func _on_animated_sprite_2d_animation_finished() -> void:
	if $AnimatedSprite2D.animation == "revive":
		Global._idle_ottc()
	else:
		pass
