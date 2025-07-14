extends Camera3D

@export var moveSpeed=20.0
@export var rotSpeed = 5.0

func _process(delta: float) -> void:
	var moveDir = 0.0
	var rotDir = 0.0
	var moveUpDir = 0.0
	
	if Input.is_action_pressed("move_forward"):
		moveDir = 1.0
	elif Input.is_action_pressed("move_backward"):
		moveDir = -1.0
		
	if Input.is_action_pressed("move_right"):
		rotDir = -1.0
	elif Input.is_action_pressed("move_left"):
		rotDir = 1.0
		
	if Input.is_action_pressed("move_up"):
		moveUpDir = 1.0
	elif Input.is_action_pressed("move_down"):
		moveUpDir = -1.0

	rotate(get_global_transform().basis.y, delta * rotSpeed * rotDir)
	translate(Vector3(0.0,0.0,-1.0) * delta * moveSpeed * moveDir)
	translate(get_global_transform().basis.y.normalized() * delta * moveSpeed * moveUpDir)
	
