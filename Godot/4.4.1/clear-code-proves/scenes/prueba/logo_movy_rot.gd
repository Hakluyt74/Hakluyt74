extends Sprite2D

#var pos: Vector2 = Vector2.ZERO
#const speed: int = 2
#
#var test_rotation: int = 0
#
#func _ready() -> void:
	#pos = Vector2(100,550)
	#position = pos
#
#func _process(delta: float) -> void:
	#pos.x += speed
	#position = pos
	#
	#test_rotation += 1
	#rotation_degrees = test_rotation
