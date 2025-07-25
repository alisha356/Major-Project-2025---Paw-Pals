extends Node

var player_fish = 5
var player_cherries = 0
var player_cheese = 0
var player_melon = 0
var player_coins = 20
var grey_cat_hunger = 8
var brown_cat_hunger = 8
var orange_cat_hunger = 8
var silver_cat_hunger = 8
var caramel_cat_hunger = 8
var hunger_cooldown = 30
var idle_cooldown = 120
var animation: AnimatedSprite2D = null
var own_plain_brown = false
var own_plain_orange = false
var own_plain_silver = false
var own_plain_caramel = false
var num_cats = 1

func _process(delta: float):
	hunger_cooldown -= delta
	if round(hunger_cooldown) == 0:
		if grey_cat_hunger > 0:
			grey_cat_hunger -= 1
			hunger_cooldown = 30
		if brown_cat_hunger > 0:
			brown_cat_hunger -= 1
			hunger_cooldown = 30
		if orange_cat_hunger > 0:
			orange_cat_hunger -= 1
			hunger_cooldown = 30
		if silver_cat_hunger > 0:
			silver_cat_hunger -= 1
			hunger_cooldown = 30
		if caramel_cat_hunger > 0:
			caramel_cat_hunger -= 1
			hunger_cooldown = 30
	idle_cooldown -= delta
	if round(idle_cooldown) == 0:
		player_coins += (1 * num_cats)
		idle_cooldown = 120

func _animate():
	if animation:
		animation.play("default")

