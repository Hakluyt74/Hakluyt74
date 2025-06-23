extends Node2D

var x_initial: int = 100
const x_max: int = 1000

var y_initial: int = 100
const y_increment: int = 150

var test_rotation: int = 0
const test_rotation_speed: int = 10

const speed: int = 100

func _ready() -> void:
	
	$LogoFijo.position = Vector2(x_initial,y_initial)
	$LogoRotacion.position = Vector2(x_initial,y_initial+y_increment)
	$LogoMovimiento.position = Vector2(x_initial,y_initial+(y_increment*2))
	$LogoMovyRot.position = Vector2(x_initial,y_initial+(y_increment*3))

func _process(delta: float) -> void:
	
	$LogoRotacion.rotation_degrees += test_rotation_speed * delta
	
	$LogoMovimiento.position.x += speed * delta
	
	$LogoMovyRot.rotation_degrees += test_rotation_speed * delta
	$LogoMovyRot.position.x += speed * delta
	
	if $LogoMovimiento.position.x > x_max:
		$LogoMovimiento.position.x = x_initial
	if $LogoMovyRot.position.x > x_max:
		$LogoMovyRot.position.x = x_initial
	
