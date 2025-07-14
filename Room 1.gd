extends Node2D

func _ready():
	$Money.text = str(Global.player_coins)
	
func _process(_delta: float):
	$Money.text = str(Global.player_coins)
