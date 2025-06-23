extends CharacterBody2D


func _process(_delta: float) -> void:
	
	# Input
	var direction = Input.get_vector("left", "right", "up", "down")
	# print(direction)
	# position += direction * 400 * delta
	
	velocity = direction * 400
	move_and_slide()
	
	# Shoot
	if Input.is_action_pressed("primary action"):
		print("shoot laser")
	
	
	if Input.is_action_pressed("secondary action"):
		print("shoot grenade")
