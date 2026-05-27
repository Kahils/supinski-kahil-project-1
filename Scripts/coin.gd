extends Area2D



func _on_body_entered(body: Node2D) -> void:
	var player_ref:PlayerBody2D
	player_ref = body as PlayerBody2D
	player_ref.coincount += 1 
	print(player_ref.coincount)
	player_ref.speed = 300
	queue_free()
# queue_free is the same as delete 
