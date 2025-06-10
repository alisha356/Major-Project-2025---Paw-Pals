extends Sprite2D

func _display_num_food():
	$"../Zero".visible = false
	$"../One".visible = false
	$"../Two".visible = false
	$"../Three".visible = false
	$"../Four".visible = false
	$"../Five".visible = false
	$"../Six".visible = false
	$"../Seven".visible = false
	$"../Eight".visible = false
	$"../Nine".visible = false
	$"../Zero_10".visible = false
	if Global.player_food == 0:
		$"../Zero".visible = true
	elif Global.player_food == 1:
		$"../One".visible = true
	elif Global.player_food == 2:
		$"../Two".visible = true
	elif Global.player_food == 3:
		$"../Three".visible = true
	elif Global.player_food == 4:
		$"../Four".visible = true
	elif Global.player_food == 5:
		$"../Five".visible = true
	elif Global.player_food == 6:
		$"../Six".visible = true
	elif Global.player_food == 7:
		$"../Seven".visible = true
	elif Global.player_food == 8:
		$"../Eight".visible = true
	elif Global.player_food == 9:
		$"../Nine".visible = true
	elif Global.player_food == 10:
		$"../One".visible = true
		$"../Zero_10".visible = true
		
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
	_display_num_food()
	_display_hunger_bar()

func _on_button_pressed():
	if Global.player_food == 0:
		pass
	elif Global.grey_cat_hunger == 10:
		pass
	else:
		Global.player_food -= 1
		Global.grey_cat_hunger += 1
		_display_num_food()
		_display_hunger_bar()
		if Global.grey_cat_hunger == 10:
			Global.player_coins += 2


