extends Node2D


func _ready():
	$Money.text = str(Global.player_coins)

