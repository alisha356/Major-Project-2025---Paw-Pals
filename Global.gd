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

var own_plain_brown = false
var own_plain_orange = false
var own_plain_silver = false
var own_plain_caramel = false
var num_cats = 1

var heart_animation: AnimatedSprite2D = null

var dgc_animation: AnimatedSprite2D = null
var dgc_animation_cooldown = 2
var dgc_death_animation_played = false

var bc_animation: AnimatedSprite2D = null
var bc_animation_cooldown = 2
var bc_death_animation_played = false

var oc_animation: AnimatedSprite2D = null
var oc_animation_cooldown = 2
var oc_death_animation_played = false

var sc_animation: AnimatedSprite2D = null
var sc_animation_cooldown = 2
var sc_death_animation_played = false

var cc_animation: AnimatedSprite2D = null
var cc_animation_cooldown = 2
var cc_death_animation_played = false

func _process(delta: float):
	hunger_cooldown -= delta
	if round(hunger_cooldown) == 0:
		if grey_cat_hunger > 0:
			grey_cat_hunger -= 1
		if own_plain_brown == true:
			if brown_cat_hunger > 0:
				brown_cat_hunger -= 1
		if own_plain_orange == true:
			if orange_cat_hunger > 0:
				orange_cat_hunger -= 1
		if own_plain_silver == true:
			if silver_cat_hunger > 0:
				silver_cat_hunger -= 1
		if own_plain_caramel == true:
			if caramel_cat_hunger > 0:
				caramel_cat_hunger -= 1
		hunger_cooldown = 30
	idle_cooldown -= delta
	if round(idle_cooldown) == 0:
		player_coins += (1 * num_cats)
		idle_cooldown = 120

func _animate_heart():
	if heart_animation:
		heart_animation.play("burst")

func _animate_dgc_death():
	if dgc_animation:
		dgc_animation.play("death")
func _revive_dgc():
	if dgc_animation:
		dgc_animation.play("revive")
func _dead_dgc():
	if dgc_animation:
		dgc_animation.play("dead")
func _idle_dgc():
	if dgc_animation:
		dgc_animation.play("idle")
func _stop_idle_dgc():
	if dgc_animation:
		dgc_animation.stop()

func _animate_bc_death():
	if bc_animation:
		bc_animation.play("death")
func _revive_bc():
	if bc_animation:
		bc_animation.play("revive")
func _dead_bc():
	if bc_animation:
		bc_animation.play("dead")
func _idle_bc():
	if bc_animation:
		bc_animation.play("idle")
func _stop_idle_bc():
	if bc_animation:
		bc_animation.stop()

func _animate_oc_death():
	if oc_animation:
		oc_animation.play("death")
func _revive_oc():
	if oc_animation:
		oc_animation.play("revive")
func _dead_oc():
	if oc_animation:
		oc_animation.play("dead")
func _idle_oc():
	if oc_animation:
		oc_animation.play("idle")
func _stop_idle_oc():
	if oc_animation:
		oc_animation.stop()

func _animate_sc_death():
	if sc_animation:
		sc_animation.play("death")
func _revive_sc():
	if sc_animation:
		sc_animation.play("revive")
func _dead_sc():
	if sc_animation:
		sc_animation.play("dead")
func _idle_sc():
	if sc_animation:
		sc_animation.play("idle")
func _stop_idle_sc():
	if sc_animation:
		sc_animation.stop()

func _animate_cc_death():
	if cc_animation:
		cc_animation.play("death")
func _revive_cc():
	if cc_animation:
		cc_animation.play("revive")
func _dead_cc():
	if cc_animation:
		cc_animation.play("dead")
func _idle_cc():
	if cc_animation:
		cc_animation.play("idle")
func _stop_idle_cc():
	if cc_animation:
		cc_animation.stop()
