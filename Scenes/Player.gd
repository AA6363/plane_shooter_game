extends KinematicBody2D
class_name Player

onready var pos2D = $Position2D

export var SPEED = 600
export var velocity = Vector2.ZERO
const bullet = preload("res://Scenes/Bullet.tscn")


#func _ready():
#	pass # Replace with function body.

func _physics_process(delta):
	
	velocity.x = Input.get_axis("ui_left","ui_right") * SPEED
	velocity.y = Input.get_axis("ui_up","ui_down") * SPEED
	
	velocity.normalized()
	
	move_and_slide(velocity)
	if Input.is_action_just_pressed("shoot"):
		shoot()
func shoot():
	var b = bullet.instance()
	get_parent().add_child(b)
	b.global_position = pos2D.global_position

