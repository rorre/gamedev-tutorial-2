extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed: float = 500.0;
export var rotationSpeed: float = 2;

var disabled: bool = true
var thrustVec = Vector2(0, -speed);
var screen_size: Rect2
var shipSize: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	disabled = true
	screen_size = get_viewport_rect()
	shipSize = $Sprite.texture.get_size()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if disabled:
		return

	if Input.is_action_pressed("move_left"):
		rotation_degrees -= rotationSpeed
	if Input.is_action_pressed("move_right"):
		rotation_degrees += rotationSpeed
	
	
	var forward = thrustVec.rotated(rotation)
	if Input.is_action_pressed("move_up"):
		move_and_collide(forward * delta)
	elif Input.is_action_pressed("move_down"):
		move_and_collide(-forward * delta)
	
	position.x = clamp(position.x,  shipSize.x/2, screen_size.size.x - (shipSize.x/2))
	position.y = clamp(position.y, shipSize.y/2, screen_size.size.y - (shipSize.y/2))


