extends CharacterBody2D

func _process(delta: float) -> void:
	
	# Direction
	var direction = Vector2(1,0)
	
	# Velocity
	velocity = direction * 400
	
	# Move adn slide
	move_and_slide()
