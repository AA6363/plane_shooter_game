extends Area2D



func _ready():
	pass # Replace with function body.


func _on_EnemyTerminator_body_entered(body):
	if body is fishEnemy:
		body.queue_free()
