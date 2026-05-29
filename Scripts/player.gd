extends CharacterBody2D
class_name PlayerBody2D

var speed : float = 150.0
var jump_velocity : float = -300.0

var coincount : int = 0

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = jump_velocity

	# Get the input direction and handle the movement/deceleration.
	var direction : float = Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * speed
# Flip sprite based on input direction 
		if direction < 0:
			animated_sprite_2d.flip_h = true 
		if direction > 0:
			animated_sprite_2d.flip_h = false 
	else:
		velocity.x = move_toward(velocity.x, 0.0, speed)

# this is to get everything working 
	move_and_slide()
