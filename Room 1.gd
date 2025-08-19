extends Node2D

func _ready():
	$Camera2D/Money.text = str(Global.player_coins)
	if Global.own_plain_brown == true:
		$"Brown Cat".visible = true
		$"Brown Cat".position = Vector2(329, 393)
	if Global.own_plain_orange == true:
		$"Orange Cat".visible = true
		$"Orange Cat".position = Vector2(457, 346)
	if Global.own_plain_silver == true:
		$"Silver Cat".visible = true
		$"Silver Cat".position = Vector2(425, 393)
	if Global.own_plain_caramel == true:
		$"Caramel Cat".visible = true
		$"Caramel Cat".position = Vector2(313, 329)
	
func _process(_delta: float):
	$Camera2D/Money.text = str(Global.player_coins)


func _on_dgc_button_pressed():
	get_tree().change_scene_to_file("res://Cat Screen.tscn")

func _on_bc_button_pressed():
	get_tree().change_scene_to_file("res://Brown Cat Screen.tscn")

func _on_oc_button_pressed():
	get_tree().change_scene_to_file("res://Orange Cat Screen.tscn")

func _on_sc_button_pressed():
	get_tree().change_scene_to_file("res://Silver Cat Screen.tscn")

func _on_cc_button_pressed():
	get_tree().change_scene_to_file("res://Caramel Cat Screen.tscn")
