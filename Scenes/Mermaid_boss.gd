extends KinematicBody2D


var hp = 50
var time = 60
var state

func _ready():
	pass # Replace with function body.
	state = 1


func _physics_process(delta):

	
	match state:
		1: not_ready_to_fight()
		2: fight(delta)



func _on_Area2D_body_entered(body):
	if body is Bullet :
		if hp <= 0:
			queue_free()
			body.queue_free()
		else:
			hp -= 1
			body.queue_free()

func not_ready_to_fight():
	position.x -=1
	
func fight(delta):
	time += delta
	position.y += sin(time) * 2 
	position.x += cos(time)  


func _on_Timer_timeout():
	state = 2
