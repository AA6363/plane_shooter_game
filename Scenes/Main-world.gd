extends Node2D

var Bg_color = Color.cyan

func _ready():
	VisualServer.set_default_clear_color(Bg_color)
	
func _physics_process(delta):
	pass


func _on_Timer_timeout():
	Bg_color = Color.cadetblue
	VisualServer.set_default_clear_color(Bg_color)
