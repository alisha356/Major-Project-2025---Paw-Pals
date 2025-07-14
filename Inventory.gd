extends Node2D

func _ready():
	$"Frame1/Num Fish".text = str(Global.player_food)
	
func _on_button_pressed():
	get_tree().change_scene_to_file("res://Shop.tscn")
