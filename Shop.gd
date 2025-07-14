extends Node2D


func _ready():
	$Money.text = str(Global.player_coins)
	
func _process(_delta: float):
	$Money.text = str(Global.player_coins)

func _on_buy_button_pressed():
	if Global.player_food == 99:
		pass
	elif Global.player_coins == 0:
		pass
	else:
		Global.player_food += 1
		Global.player_coins -= 1

func _on_chest_button_pressed():
	get_tree().change_scene_to_file("res://Inventory.tscn")
