extends Node2D

var animation_played = false

func _display_hunger_bar():
	$"Hunger 0".visible = false
	$"Hunger 1".visible = false
	$"Hunger 2".visible = false
	$"Hunger 3".visible = false
	$"Hunger 4".visible = false
	$"Hunger 5".visible = false
	$"Hunger 6".visible = false
	$"Hunger 7".visible = false
	$"Hunger 8".visible = false
	$"Hunger 9".visible = false
	$"Hunger 10".visible = false
	
	if Global.gttc_hunger == 0:
		$"Hunger 0".visible = true
		$"WitchHat-Blue".visible = false
	elif Global.gttc_hunger == 1:
		$"Hunger 1".visible = true
		animation_played = false
	elif Global.gttc_hunger == 2:
		$"Hunger 2".visible = true
	elif Global.gttc_hunger == 3:
		$"Hunger 3".visible = true
	elif Global.gttc_hunger == 4:
		$"Hunger 4".visible = true
	elif Global.gttc_hunger == 5:
		$"Hunger 5".visible = true
	elif Global.gttc_hunger == 6:
		$"Hunger 6".visible = true
	elif Global.gttc_hunger == 7:
		$"Hunger 7".visible = true
	elif Global.gttc_hunger == 8:
		$"Hunger 8".visible = true
	elif Global.gttc_hunger == 9:
		$"Hunger 9".visible = true
	elif Global.gttc_hunger == 10:
		$"Hunger 10".visible = true

func _ready():
	$Cheese/Number.text = str(Global.player_cheese)
	$Money.text = str(Global.player_coins)
	if Global.gttc_hunger <= 0:
		animation_played = true
		Global._stop_idle_gttc()
		Global._dead_gttc()
		$"WitchHat-Blue".visible = false
	else:
		Global._idle_gttc()
		if Global.own_blue_hat == true:
			$"WitchHat-Blue".visible = true

func _process(_delta: float):
	_display_hunger_bar()
	$Money.text = str(Global.player_coins)
	if Global.gttc_hunger <= 0 and animation_played == false:
		Global._stop_idle_gttc()
		Global._animate_gttc_death()
		$"WitchHat-Blue".visible = false
		animation_played = true
	if Global.show_blue_hat == true:
		$"WitchHat-Blue".visible = true
		Global.show_blue_hat = false

func _on_button_pressed():
	if Global.player_cheese == 0:
		pass
	elif Global.gttc_hunger == 10:
		pass
	else:
		Global.player_cheese -=1
		Global.gttc_hunger += 1
		$Cheese/Number.text = str(Global.player_cheese)
		_display_hunger_bar()
		if Global.gttc_hunger == 1:
			Global._revive_gttc()
		if Global.gttc_hunger == 10:
			Global._animate_heart()
			Global.player_coins += 2

func _on_arrow_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Room 2.tscn")
