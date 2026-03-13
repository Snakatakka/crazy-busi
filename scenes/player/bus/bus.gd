extends CharacterBody2D

@export var speed = 0.0
@export var maxSpeed = 1600.0
@export var minSpeed = -1600.0

var rotationSpeed = 0
var rotationDirection = 0


func get_input():
	if speed != 0:
		rotationDirection = Input.get_axis("left", "right")
	
	if Input.is_action_pressed("up"):
		if speed < maxSpeed:
			speed += 4.0
	elif Input.is_action_pressed("down"):
		if speed > minSpeed:
			speed -= 4.0
	else:
		if speed != 0:
			if speed > 0:
				speed -= 4.0
			else:
				speed += 4.0
	
	velocity = transform.x * speed

func _physics_process(delta):
	if speed != 0:
		rotationSpeed = 3
	
	get_input()
	rotation += rotationDirection * (rotationSpeed) * delta
	move_and_slide()
