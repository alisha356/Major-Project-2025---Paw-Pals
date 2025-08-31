extends Node

var r1_visited = false

var player_fish = 5
var player_cherries = 0
var player_cheese = 0
var player_melon = 0
var player_coins = 50

var grey_cat_hunger = 8
var brown_cat_hunger = 8
var orange_cat_hunger = 8
var silver_cat_hunger = 8
var caramel_cat_hunger = 8
var gttc_hunger = 8
var bttc_hunger = 8
var ottc_hunger = 8
var sttc_hunger = 8
var cttc_hunger = 8

var hunger_cooldown = 30
var idle_cooldown = 120

var own_plain_brown = false
var own_plain_orange = false
var own_plain_silver = false
var own_plain_caramel = false
var own_bttc = false
var own_ottc = false
var own_sttc = false
var own_cttc = false
var num_cats = 2

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

var gttc_animation: AnimatedSprite2D = null
var gttc_animation_cooldown = 2
var gttc_death_animation_played = false
var bttc_animation: AnimatedSprite2D = null
var bttc_animation_cooldown = 2
var bttc_death_animation_played = false
var ottc_animation: AnimatedSprite2D = null
var ottc_animation_cooldown = 2
var ottc_death_animation_played = false
var sttc_animation: AnimatedSprite2D = null
var sttc_animation_cooldown = 2
var sttc_death_animation_played = false
var cttc_animation: AnimatedSprite2D = null
var cttc_animation_cooldown = 2
var cttc_death_animation_played = false

var start_r1 = false
var start_r2 = false
var start_map = false

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

		if gttc_hunger > 0:
			gttc_hunger -= 1
		if own_bttc == true:
			if bttc_hunger > 0:
				bttc_hunger -= 1
		if own_ottc == true:
			if ottc_hunger > 0:
				ottc_hunger -= 1
		if own_sttc == true:
			if sttc_hunger > 0:
				sttc_hunger -= 1
		if own_cttc == true:
			if cttc_hunger > 0:
				cttc_hunger -= 1

		hunger_cooldown = 30
	idle_cooldown -= delta
	if round(idle_cooldown) == 0:
		player_coins += (1 * num_cats)
		idle_cooldown = 120

func _animate_heart():
	if heart_animation:
		heart_animation.play("burst")

func _animate_dgc_death():
	if is_instance_valid(dgc_animation):
		dgc_animation.play("death")
func _revive_dgc():
	if is_instance_valid(dgc_animation):
		dgc_animation.play("revive")
func _dead_dgc():
	if is_instance_valid(dgc_animation):
		dgc_animation.play("dead")
func _idle_dgc():
	if is_instance_valid(dgc_animation):
		dgc_animation.play("idle")
func _stop_idle_dgc():
	if is_instance_valid(dgc_animation):
		dgc_animation.stop()

func _animate_bc_death():
	if is_instance_valid(bc_animation):
		bc_animation.play("death")
func _revive_bc():
	if is_instance_valid(bc_animation):
		bc_animation.play("revive")
func _dead_bc():
	if is_instance_valid(bc_animation):
		bc_animation.play("dead")
func _idle_bc():
	if is_instance_valid(bc_animation):
		bc_animation.play("idle")
func _stop_idle_bc():
	if is_instance_valid(bc_animation):
		bc_animation.stop()

func _animate_oc_death():
	if is_instance_valid(oc_animation):
		oc_animation.play("death")
func _revive_oc():
	if is_instance_valid(oc_animation):
		oc_animation.play("revive")
func _dead_oc():
	if is_instance_valid(oc_animation):
		oc_animation.play("dead")
func _idle_oc():
	if is_instance_valid(oc_animation):
		oc_animation.play("idle")
func _stop_idle_oc():
	if is_instance_valid(oc_animation):
		oc_animation.stop()

func _animate_sc_death():
	if is_instance_valid(sc_animation):
		sc_animation.play("death")
func _revive_sc():
	if is_instance_valid(sc_animation):
		sc_animation.play("revive")
func _dead_sc():
	if is_instance_valid(sc_animation):
		sc_animation.play("dead")
func _idle_sc():
	if is_instance_valid(sc_animation):
		sc_animation.play("idle")
func _stop_idle_sc():
	if is_instance_valid(sc_animation):
		sc_animation.stop()

func _animate_cc_death():
	if is_instance_valid(cc_animation):
		cc_animation.play("death")
func _revive_cc():
	if is_instance_valid(cc_animation):
		cc_animation.play("revive")
func _dead_cc():
	if is_instance_valid(cc_animation):
		cc_animation.play("dead")
func _idle_cc():
	if is_instance_valid(cc_animation):
		cc_animation.play("idle")
func _stop_idle_cc():
	if is_instance_valid(cc_animation):
		cc_animation.stop()

func _animate_gttc_death():
	if is_instance_valid(gttc_animation):
		gttc_animation.play("death")
func _revive_gttc():
	if is_instance_valid(gttc_animation):
		gttc_animation.play("revive")
func _dead_gttc():
	if is_instance_valid(gttc_animation):
		gttc_animation.play("dead")
func _idle_gttc():
	if is_instance_valid(gttc_animation):
		gttc_animation.play("idle")
func _stop_idle_gttc():
	if is_instance_valid(gttc_animation):
		gttc_animation.stop()

func _animate_bttc_death():
	if is_instance_valid(bttc_animation):
		bttc_animation.play("death")
func _revive_bttc():
	if is_instance_valid(bttc_animation):
		bttc_animation.play("revive")
func _dead_bttc():
	if is_instance_valid(bttc_animation):
		bttc_animation.play("dead")
func _idle_bttc():
	if is_instance_valid(bttc_animation):
		bttc_animation.play("idle")
func _stop_idle_bttc():
	if is_instance_valid(bttc_animation):
		bttc_animation.stop()

func _animate_ottc_death():
	if is_instance_valid(ottc_animation):
		ottc_animation.play("death")
func _revive_ottc():
	if is_instance_valid(ottc_animation):
		ottc_animation.play("revive")
func _dead_ottc():
	if is_instance_valid(ottc_animation):
		ottc_animation.play("dead")
func _idle_ottc():
	if is_instance_valid(ottc_animation):
		ottc_animation.play("idle")
func _stop_idle_ottc():
	if is_instance_valid(ottc_animation):
		ottc_animation.stop()

func _animate_sttc_death():
	if is_instance_valid(sttc_animation):
		sttc_animation.play("death")
func _revive_sttc():
	if is_instance_valid(sttc_animation):
		sttc_animation.play("revive")
func _dead_sttc():
	if is_instance_valid(sttc_animation):
		sttc_animation.play("dead")
func _idle_sttc():
	if is_instance_valid(sttc_animation):
		sttc_animation.play("idle")
func _stop_idle_sttc():
	if is_instance_valid(sttc_animation):
		sttc_animation.stop()

func _animate_cttc_death():
	if is_instance_valid(cttc_animation):
		cttc_animation.play("death")
func _revive_cttc():
	if is_instance_valid(cttc_animation):
		cttc_animation.play("revive")
func _dead_cttc():
	if is_instance_valid(cttc_animation):
		cttc_animation.play("dead")
func _idle_cttc():
	if is_instance_valid(cttc_animation):
		cttc_animation.play("idle")
func _stop_idle_cttc():
	if is_instance_valid(cttc_animation):
		cttc_animation.stop()
