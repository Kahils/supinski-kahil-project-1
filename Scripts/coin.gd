extends Area2D

var player_ref:PlayerBody2D
@export var speed_boost_value : float = 300
@onready var speed_buff_timer: Timer = $SpeedBuffTimer
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D



func _on_body_entered(body: Node2D) -> void:
	player_ref = body as PlayerBody2D
	player_ref.coincount += 1 
	print(player_ref.coincount)
	player_ref.speed = speed_boost_value
	collision_shape_2d.set_deferred("disabled", true)
	animated_sprite_2d.visible = false
	speed_buff_timer.start()

func _on_speed_buff_timer_timeout() -> void:
	player_ref.speed = 150.0
	queue_free()
# queue_free is the same as delete
