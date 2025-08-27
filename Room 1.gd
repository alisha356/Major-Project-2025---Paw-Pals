extends Node2D

var wait_2_secs = 2

func _ready():
	$Camera2D/Money.text = str(Global.player_coins)
	if Global.grey_cat_hunger <= 0:
		Global._dead_dgc()
	if Global.own_plain_brown == true:
		$"Brown Cat".visible = true
		$"Brown Cat".position = Vector2(329, 393)
		if Global.brown_cat_hunger <= 0:
			Global._dead_bc()
	if Global.own_plain_orange == true:
		$"Orange Cat".visible = true
		$"Orange Cat".position = Vector2(457, 346)
		if Global.orange_cat_hunger <= 0:
			Global._dead_oc()
	if Global.own_plain_silver == true:
		$"Silver Cat".visible = true
		$"Silver Cat".position = Vector2(425, 393)
		if Global.silver_cat_hunger <= 0:
			Global._dead_sc()
	if Global.own_plain_caramel == true:
		$"Caramel Cat".visible = true
		$"Caramel Cat".position = Vector2(313, 329)
		if Global.caramel_cat_hunger <= 0:
			Global._dead_cc()
	
	
func _process(delta: float):
	$Camera2D/Money.text = str(Global.player_coins)
	wait_2_secs -= delta

	if Global.grey_cat_hunger <= 0:
		if Global.dgc_death_animation_played == false:
			Global._animate_dgc_death()
			Global.dgc_death_animation_played = true
		elif Global.dgc_death_animation_played == true:
			Global.dgc_animation_cooldown -= delta
	elif Global.grey_cat_hunger > 0:
		Global.dgc_death_animation_played = false
		Global.dgc_animation_cooldown = 2
	
	if Global.brown_cat_hunger <= 0:
		if Global.bc_death_animation_played == false:
			Global._animate_bc_death()
			Global.bc_death_animation_played = true
		elif Global.bc_death_animation_played == true:
			Global.bc_animation_cooldown -= delta
	elif Global.brown_cat_hunger > 0:
		Global.bc_death_animation_played = false
		Global.bc_animation_cooldown = 2
		
	if Global.orange_cat_hunger <= 0:
		if Global.oc_death_animation_played == false:
			Global._animate_oc_death()
			Global.oc_death_animation_played = true
		elif Global.oc_death_animation_played == true:
			Global.oc_animation_cooldown -= delta
	elif Global.orange_cat_hunger > 0:
		Global.oc_death_animation_played = false
		Global.oc_animation_cooldown = 2
	
	if Global.silver_cat_hunger <= 0:
		if Global.sc_death_animation_played == false:
			Global._animate_sc_death()
			Global.sc_death_animation_played = true
		elif Global.sc_death_animation_played == true:
			Global.sc_animation_cooldown -= delta
	elif Global.silver_cat_hunger > 0:
		Global.sc_death_animation_played = false
		Global.sc_animation_cooldown = 2
	
	if Global.caramel_cat_hunger <= 0:
		if Global.cc_death_animation_played == false:
			Global._animate_cc_death()
			Global.cc_death_animation_played = true
		elif Global.cc_death_animation_played == true:
			Global.cc_animation_cooldown -= delta
	elif Global.caramel_cat_hunger > 0:
		Global.cc_death_animation_played = false
		Global.cc_animation_cooldown = 2

func _on_dgc_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D:
		get_tree().change_scene_to_file("res://Cat Screen.tscn")

func _on_bc_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D:
		get_tree().change_scene_to_file("res://Brown Cat Screen.tscn")

func _on_oc_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D:
		get_tree().change_scene_to_file("res://Orange Cat Screen.tscn")

func _on_sc_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D:
		get_tree().change_scene_to_file("res://Silver Cat Screen.tscn")

func _on_cc_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D:
		get_tree().change_scene_to_file("res://Caramel Cat Screen.tscn")


func _on_bush_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D:
		if round(wait_2_secs) <= 0:
			get_tree().change_scene_to_file("res://map.tscn")
		else:
			pass
