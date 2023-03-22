extends KinematicBody2D
class_name Bullet

export var bullet_speed = 400
var velocity = Vector2.ZERO
var direction = Vector2.RIGHT

func _physics_process(delta):
	
	velocity = bullet_speed * direction
	
	move_and_slide(velocity)


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
