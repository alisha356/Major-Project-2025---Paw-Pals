extends Node2D


func _ready():
	$Money.text = str(Global.player_coins)
	_change_labels()

func _process(_delta: float):
	$Money.text = str(Global.player_coins)
	_change_labels()

func _change_labels():
	if Global.own_plain_brown == true:
		$"Cat Frame/Plain Brown/Buy Frame/Bought Label".visible = true
		$"Cat Frame/Plain Brown/Buy Label".visible = false
	if Global.own_plain_orange == true:
		$"Cat Frame/Cat Frame 2/Plain Orange/Buy Frame 2/Bought Label 2".visible = true
		$"Cat Frame/Cat Frame 2/Plain Orange/Buy Label 2".visible = false
	if Global.own_plain_silver == true:
		$"Cat Frame/Cat Frame 3/Plain Silver/Buy Frame 3/Bought Label 3".visible = true
		$"Cat Frame/Cat Frame 3/Plain Silver/Buy Label 3".visible = false
	if Global.own_plain_caramel == true:
		$"Cat Frame/Cat Frame 4/Plain Caramel/Buy Frame 4/Bought Label 4".visible = true
		$"Cat Frame/Cat Frame 4/Plain Caramel/Buy Label 4".visible = false
	if Global.own_bttc == true:
		$"TT Cat Frame/TT Brown/Buy Frame/Bought Label".visible = true
		$"TT Cat Frame/TT Brown/Buy Label".visible = false
	if Global.own_ottc == true:
		$"TT Cat Frame/Cat Frame 2/TT Orange/Buy Frame 2/Bought Label 2".visible = true
		$"TT Cat Frame/Cat Frame 2/TT Orange/Buy Label 2".visible = false
	if Global.own_sttc == true:
		$"TT Cat Frame/CatFrame3/TT Silver/Buy Frame 3/Bought Label 3".visible = true
		$"TT Cat Frame/CatFrame3/TT Silver/Buy Label 3".visible = false
	if Global.own_cttc == true:
		$"TT Cat Frame/CatFrame4/TT Caramel/Buy Frame 4/Bought Label 4".visible = true
		$"TT Cat Frame/CatFrame4/TT Caramel/Buy Label 4".visible = false

func _on_chest_button_pressed():
	get_tree().change_scene_to_file("res://Inventory.tscn")

func _on_cat_button_pressed():
	$Food.visible = false
	$"Cat Frame".visible = true
	$"TT Cat Frame".visible = false

func _on_fish_button_pressed():
	$Food.visible = true
	$"Cat Frame".visible = false
	$"TT Cat Frame".visible = false

func _on_tt_button_pressed():
	$Food.visible = false
	$"Cat Frame".visible = false
	$"TT Cat Frame".visible = true

func _on_plain_brown_button_pressed():
	if Global.player_coins >= 7:
		Global.own_plain_brown = true
		Global.player_coins -= 7
		Global.num_cats += 1
	else:
		pass
	
func _on_plain_orange_button_pressed():
	if Global.player_coins >= 10:
		Global.own_plain_orange = true
		Global.player_coins -= 10
		Global.num_cats += 1
	else:
		pass

func _on_plain_silver_button_pressed():
	if Global.player_coins >= 15:
		Global.own_plain_silver = true
		Global.player_coins -= 15
		Global.num_cats += 1
	else:
		pass

func _on_plain_caramel_button_pressed():
	if Global.player_coins >= 10:
		Global.own_plain_caramel = true
		Global.player_coins -= 10
		Global.num_cats += 1
	else:
		pass

func _on_tt_brown_button_pressed():
	if Global.player_coins >= 10:
		Global.own_bttc = true
		Global.player_coins -= 10
		Global.num_cats += 1
	else:
		pass

func _on_tt_orange_button_pressed():
	if Global.player_coins >= 15:
		Global.own_ottc = true
		Global.player_coins -= 15
		Global.num_cats += 1
	else:
		pass

func _on_tt_silver_button_pressed():
	if Global.player_coins >= 18:
		Global.own_sttc = true
		Global.player_coins -= 18
		Global.num_cats += 1
	else:
		pass

func _on_tt_caramel_button_pressed():
	if Global.player_coins >= 13:
		Global.own_cttc = true
		Global.player_coins -= 13
		Global.num_cats += 1
	else:
		pass

func _on_buy_fish_button_pressed():
	if Global.player_fish == 99:
		pass
	elif Global.player_coins == 0:
		pass
	else:
		Global.player_fish += 1
		Global.player_coins -= 1

func _on_buy_cherries_button_pressed():
	if Global.player_cherries == 99:
		pass
	elif Global.player_coins < 4:
		pass
	else:
		Global.player_cherries += 1
		Global.player_coins -= 4

func _on_buy_cheese_button_pressed():
	if Global.player_cheese == 99:
		pass
	elif Global.player_coins < 2:
		pass
	else:
		Global.player_cheese += 1
		Global.player_coins -= 2

func _on_buy_melon_button_pressed():
	if Global.player_melon == 99:
		pass
	elif Global.player_coins < 3:
		pass
	else:
		Global.player_melon += 1
		Global.player_coins -= 3

func _on_button_pressed():
	if Global.start_map == true:
		get_tree().change_scene_to_file("res://Map.tscn")
	elif Global.start_r1 == true:
		get_tree().change_scene_to_file("res://Room 1.tscn")
	elif Global.start_r2 == true:
		get_tree().change_scene_to_file("res://Room 2.tscn")
