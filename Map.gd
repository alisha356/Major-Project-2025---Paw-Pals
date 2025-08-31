extends Node2D

func _ready():
	$CharacterBody2D/Camera2D/Money.text = str(Global.player_coins)
	if Global.r1_visited == true:
		$Cross.position = Vector2(446, -10)
		$Cross.visible = false

func _process(_delta: float):
	$CharacterBody2D/Camera2D/Money.text = str(Global.player_coins)

func _on_r1_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D:
		get_tree().change_scene_to_file("res://Room 1.tscn")

func _on_r2_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D and Global.r1_visited == true:
		get_tree().change_scene_to_file("res://Room 2.tscn")
	else:
		pass

func _on_market_button_pressed() -> void:
	Global.start_map = true
	Global.start_r1 = false
	Global.start_r2 = false
	get_tree().change_scene_to_file("res://Shop.tscn")
