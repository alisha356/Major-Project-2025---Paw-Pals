extends CharacterBody2D

func _ready():
	Global.cttc_animation = $AnimatedSprite2D

func _on_animated_sprite_2d_animation_finished() -> void:
	if $AnimatedSprite2D.animation == "revive":
		Global._idle_cttc()
	else:
		pass
