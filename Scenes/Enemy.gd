extends KinematicBody2D
class_name fishEnemy

var horizontal_speed = 1
var vertical_directin = 1
var hp = 5
var towards = 10
var time = 60
func _ready():
	pass
#used for signal connections

func _physics_process(delta):
	position.x = position.x - horizontal_speed
	wave_movement(delta)

func _on_Area2D_body_entered(body):
	if body is Bullet:
		if hp <= 0:
			queue_free()
			body.queue_free()
		else:
			hp -=1
			body.queue_free()


func wave_movement(delta):
	time += delta
	position.y += sin(time) * 1.5

