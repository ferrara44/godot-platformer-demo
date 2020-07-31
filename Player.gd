extends KinematicBody2D

var speed = Vector2()

func _process(_delta):
		handle_movement()
		handle_gravity()
		jump()
		speed = move_and_slide(speed)
		
func handle_movement():
	if Input.is_action_pressed("left"):
		speed.x = -200
	elif Input.is_action_pressed("right"):
		speed.x = 200
	else:
		speed.x = 0

func handle_gravity():
	speed.y += 10

func jump():
	if Input.is_action_just_pressed("up"):
		speed.y -= 300
