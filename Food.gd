extends Sprite2D

func _display_hunger_bar():
	$"../Hunger 8".visible = false
	$"../Hunger 9".visible = false
	$"../Hunger 10".visible = false
	if Global.grey_cat_hunger == 8:
		$"../Hunger 8".visible = true
	elif Global.grey_cat_hunger == 9:
		$"../Hunger 9".visible = true
	elif Global.grey_cat_hunger == 10:
		$"../Hunger 10".visible = true

func _ready():
	$Number.text = str(Global.player_food)
	_display_hunger_bar()

func _on_button_pressed():
	if Global.player_food == 0:
		pass
	elif Global.grey_cat_hunger == 10:
		pass
	else:
		Global.player_food -=1
		Global.grey_cat_hunger += 1
		$Number.text = str(Global.player_food)
		_display_hunger_bar()
		if Global.grey_cat_hunger == 10:
			Global.player_coins += 2


