extends Area2D


#Collides with player on contact
func _on_body_entered(_body: Node2D) -> void:
	print("+1 Coin")
	queue_free()
