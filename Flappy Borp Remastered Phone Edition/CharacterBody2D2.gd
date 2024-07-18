extends RigidBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")



func _process(delta):
	# Add the gravity.

	global_position.x -= 5
	
	if global_position.x <= -1:
		global_position.x = 800
		global_position.y = randf_range(-310, 304)

