extends Node

func _ready():
	$Player.set_proyectile_container(self)
	$Turrent.set_values($Player,self)
