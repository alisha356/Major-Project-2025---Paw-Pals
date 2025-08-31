extends Node2D

var wait_2_secs = 2

func _ready():
	$Camera2D/Money.text = str(Global.player_coins)
	if Global.gttc_hunger <= 0:
		Global._dead_gttc()
	else:
		Global._idle_gttc()
	if Global.own_bttc == true:
		$"Brown TT Cat".visible = true
		$"Brown TT Cat".position = Vector2(169, 89)
		if Global.bttc_hunger <= 0:
			Global._dead_bttc()
		else:
			Global._idle_bttc()
	if Global.own_ottc == true:
		$"Orange TT Cat".visible = true
		$"Orange TT Cat".position = Vector2(249, 106)
		if Global.ottc_hunger <= 0:
			Global._dead_ottc()
		else:
			Global._idle_ottc()
	if Global.own_sttc == true:
		$"Silver TT Cat".visible = true
		$"Silver TT Cat".position = Vector2(89, 137)
		if Global.sttc_hunger <= 0:
			Global._dead_sttc()
		else:
			Global._idle_sttc()
	if Global.own_cttc == true:
		$"Caramel TT Cat".visible = true
		$"Caramel TT Cat".position = Vector2(233, 41)
		if Global.cttc_hunger <= 0:
			Global._dead_cttc()
		else:
			Global._idle_cttc()

func _process(delta: float):
	$Camera2D/Money.text = str(Global.player_coins)
	wait_2_secs -= delta

	if Global.gttc_hunger <= 0:
		if Global.gttc_death_animation_played == false:
			Global._animate_gttc_death()
			Global.gttc_death_animation_played = true
		elif Global.gttc_death_animation_played == true:
			Global.gttc_animation_cooldown -= delta
	elif Global.gttc_hunger > 0:
		Global.gttc_death_animation_played = false
		Global.gttc_animation_cooldown = 2
	
	if Global.bttc_hunger <= 0:
		if Global.bttc_death_animation_played == false:
			Global._animate_bttc_death()
			Global.bttc_death_animation_played = true
		elif Global.bttc_death_animation_played == true:
			Global.bttc_animation_cooldown -= delta
	elif Global.bttc_hunger > 0:
		Global.bttc_death_animation_played = false
		Global.bttc_animation_cooldown = 2
		
	if Global.ottc_hunger <= 0:
		if Global.ottc_death_animation_played == false:
			Global._animate_ottc_death()
			Global.ottc_death_animation_played = true
		elif Global.ottc_death_animation_played == true:
			Global.ottc_animation_cooldown -= delta
	elif Global.ottc_hunger > 0:
		Global.ottc_death_animation_played = false
		Global.ottc_animation_cooldown = 2
	
	if Global.sttc_hunger <= 0:
		if Global.sttc_death_animation_played == false:
			Global._animate_sttc_death()
			Global.sttc_death_animation_played = true
		elif Global.sttc_death_animation_played == true:
			Global.sttc_animation_cooldown -= delta
	elif Global.sttc_hunger > 0:
		Global.sttc_death_animation_played = false
		Global.sttc_animation_cooldown = 2
	
	if Global.cttc_hunger <= 0:
		if Global.cttc_death_animation_played == false:
			Global._animate_cttc_death()
			Global.cttc_death_animation_played = true
		elif Global.cttc_death_animation_played == true:
			Global.cttc_animation_cooldown -= delta
	elif Global.cttc_hunger > 0:
		Global.cttc_death_animation_played = false
		Global.cttc_animation_cooldown = 2

func _on_gttc_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D:
		get_tree().change_scene_to_file("res://GTTC Screen.tscn")

func _on_bttc_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D:
		get_tree().change_scene_to_file("res://BTTC Screen.tscn")

func _on_ottc_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D:
		get_tree().change_scene_to_file("res://OTTC Screen.tscn")

func _on_sttc_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D:
		get_tree().change_scene_to_file("res://STTC Screen.tscn")

func _on_cttc_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D:
		get_tree().change_scene_to_file("res://CTTC Screen.tscn")

func _on_bush_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body == $CharacterBody2D:
		if round(wait_2_secs) <= 0:
			get_tree().change_scene_to_file("res://Map.tscn")
		else:
			pass

func _on_market_button_pressed() -> void:
	Global.start_map = false
	Global.start_r1 = false
	Global.start_r2 = true
	get_tree().change_scene_to_file("res://Shop.tscn")
