extends Node2D


func _on_area_2d_body_entered(body: CharacterBody2D):
	if body == $CharacterBody2D:
		get_tree().change_scene_to_file("res://Room 1.tscn")
