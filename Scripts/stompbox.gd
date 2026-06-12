extends Area2D

@export var parent_to_kill : Node2D

func _on_body_entered(body: Node2D) -> void:
	parent_to_kill.queue_free()
