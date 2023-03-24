extends KinematicBody2D


var hp = 50
var time = 60

func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	time += delta
	position.y += sin(time) * 2 
	position.x += cos(time)  
	
	



func _on_Area2D_body_entered(body):
	if body is Bullet :
		if hp <= 0:
			queue_free()
			body.queue_free()
		else:
			hp -= 1
			body.queue_free()
