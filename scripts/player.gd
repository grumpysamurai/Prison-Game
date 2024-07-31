extends CharacterBody3D

const SPEED = 5.0
const JUMP_VELOCITY = 4.5
var dragposition : Vector2

var ismoving = false
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _physics_process(delta):
	move_and_slide()

func _input(event):
	if event is InputEventScreenTouch:
		if event.is_pressed():
			pass  # tap
		else:
			ismoving = false

	elif event is InputEventScreenDrag:
		ismoving = true
		dragposition = event.position

func gate(operation, value):
	pass
