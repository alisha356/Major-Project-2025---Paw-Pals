extends Node2D

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
	if Global.silver_cat_hunger == 0:
		$"Hunger 0".visible = true
	elif Global.silver_cat_hunger == 1:
		$"Hunger 1".visible = true
	elif Global.silver_cat_hunger == 2:
		$"Hunger 2".visible = true
	elif Global.silver_cat_hunger == 3:
		$"Hunger 3".visible = true
	elif Global.silver_cat_hunger == 4:
		$"Hunger 4".visible = true
	elif Global.silver_cat_hunger == 5:
		$"Hunger 5".visible = true
	elif Global.silver_cat_hunger == 6:
		$"Hunger 6".visible = true
	elif Global.silver_cat_hunger == 7:
		$"Hunger 7".visible = true
	elif Global.silver_cat_hunger == 8:
		$"Hunger 8".visible = true
	elif Global.silver_cat_hunger == 9:
		$"Hunger 9".visible = true
	elif Global.silver_cat_hunger == 10:
		$"Hunger 10".visible = true

func _ready():
	$Cherries/Number.text = str(Global.player_cherries)
	$Money.text = str(Global.player_coins)

func _process(_delta: float):
	_display_hunger_bar()
	$Money.text = str(Global.player_coins)

func _on_button_pressed():
	if Global.player_cherries == 0:
		pass
	elif Global.silver_cat_hunger == 10:
		pass
	else:
		Global.player_cherries -=1
		Global.silver_cat_hunger += 1
		$Cherries/Number.text = str(Global.player_cherries)
		_display_hunger_bar()
		if Global.silver_cat_hunger == 10:
			Global.player_coins += 4

func _on_area_2d_mouse_entered() -> void:
	Global._animate()
