extends Node

var player_food = 5
var player_coins = 20
var grey_cat_hunger = 8
var hunger_cooldown = 30
var num_cats = 1
var idle_cooldown = 120
var animation: AnimatedSprite2D = null

func _process(delta: float):
	hunger_cooldown -= delta
	if round(hunger_cooldown) == 0:
		grey_cat_hunger -= 1
		hunger_cooldown = 30
	idle_cooldown -= delta
	if round(idle_cooldown) == 0:
		player_coins += 1
		idle_cooldown = 120

func _animate():
	if animation:
		animation.play("default")
