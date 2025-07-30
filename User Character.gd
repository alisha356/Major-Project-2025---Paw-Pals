extends CharacterBody2D

const SPEED = 100.0

func _physics_process(_delta):
# Get the input direction and handle the movement/deceleration.
	var horizontal_direction = Input.get_axis("move left", "move right")
	var vertical_direction = Input.get_axis("move up", "move down")

	if vertical_direction == 0 and horizontal_direction == 0:
		$AnimatedSprite2D.play("default")
	else:
		if horizontal_direction > 0:
			$AnimatedSprite2D.play("walk right")
		elif horizontal_direction < 0:
			$AnimatedSprite2D.play("walk left")
		elif vertical_direction > 0:
			$AnimatedSprite2D.play("default")
		elif vertical_direction < 0:
			$AnimatedSprite2D.play("walk up")

	if horizontal_direction:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		velocity.x = horizontal_direction * SPEED
		move_and_slide()
	elif vertical_direction:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = vertical_direction * SPEED
		move_and_slide()
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)

