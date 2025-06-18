extends Node

var player_food = 5
var player_coins = 20
var grey_cat_hunger = 8
var cooldown = 30

func _process(delta: float):
	cooldown -= delta
	if round(cooldown) == 0:
		grey_cat_hunger -= 1
		cooldown = 30

