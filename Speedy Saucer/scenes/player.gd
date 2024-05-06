extends RigidBody2D


@export var move_speed:float = 2500.0

var move_direction:Vector2


func _process(delta):
	move_direction = Vector2(0,0)
	
	if Input.is_action_pressed("move_left"):
		move_direction.x -= 1.0
	if Input.is_action_pressed("move_right"):
		move_direction.x += 1.0
	if Input.is_action_pressed("move_up"):
		move_direction.y -= 1.0
	if Input.is_action_pressed("move_down"):
		move_direction.y += 1.0
	

func _physics_process(delta):
	apply_force(move_direction.normalized() * move_speed)
