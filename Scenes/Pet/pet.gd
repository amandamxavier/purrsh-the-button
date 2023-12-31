extends CharacterBody3D


@onready var active = false
@onready var Cam = $Head/Camera3d as Camera3D
@export var _bullet_scene : PackedScene
var mouseSensibility = 1200
var mouse_relative_x = 0
var mouse_relative_y = 0
const SPEED = 5.0
const JUMP_VELOCITY = 5.5
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _ready():
	if active:
		#Captures mouse and stops rgun from hitting yourself
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
		
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta
	if active:
		# Handle Jump.
		if Input.is_action_just_pressed("Jump") and is_on_floor():
			velocity.y = JUMP_VELOCITY
		# Get the input direction and handle the movement/deceleration.
		var input_dir = Input.get_vector("moveLeft", "moveRight", "moveUp", "moveDown")
		var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
		if direction:
			velocity.x = direction.x * SPEED
			velocity.z = direction.z * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			velocity.z = move_toward(velocity.z, 0, SPEED)
	move_and_slide()

func _input(event):
	if active:
		if event is InputEventMouseMotion:
			rotation.y -= event.relative.x / mouseSensibility
			$Head/Camera3d.rotation.x -= event.relative.y / mouseSensibility
			$Head/Camera3d.rotation.x = clamp($Head/Camera3d.rotation.x, deg_to_rad(-90), deg_to_rad(90) )
			mouse_relative_x = clamp(event.relative.x, -50, 50)
			mouse_relative_y = clamp(event.relative.y, -50, 10)
