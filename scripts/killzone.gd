extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print("You Died!")
	
	#engine.time_scale adds a slow mo effect
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	#queue free removes the collision
	timer.start()
	

func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
