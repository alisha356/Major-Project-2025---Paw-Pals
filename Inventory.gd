extends Node2D

func _ready():
	$"Frame1/Num Fish".text = str(Global.player_fish)
	$"Frame2/Num Cherries".text = str(Global.player_cherries)
	$"Frame3/Num Cheese".text = str(Global.player_cheese)
	$"Frame4/Num Melon".text = str(Global.player_melon)
	
func _on_button_pressed():
	get_tree().change_scene_to_file("res://Shop.tscn")
