extends KinematicBody2D

var horizontal_speed = 1
var vertical_direction = 1
var hp = 5
var towards = 10
var time = 60
func _ready():
	pass
#used for signal connections

func _physics_process(delta):
	position.x = position.x - horizontal_speed
#	if towards > 1: #checks of towards is bigger than 1
#		position.y += towards #adds to the y position
#		towards -= 1 #subtracks from towards
#		print(towards)
#	if towards < 10:
#		position.y -= towards
#		towards += 1
	time += delta
	position.y += sin(time) * 2
	

func _on_Area2D_body_entered(body):
	if body is Bullet:
		if hp <= 0:
			queue_free()
			body.queue_free()
		else:
			hp -=1
			body.queue_free()


func wave_movement():
	pass
#	for n in towards:
#		towards -=1
#		position.y += towards
