extends Node3D

var rot = $shelf2.rotation

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	rot.z = deg_to_rad(-90)
	$shelf2.rotation = rot

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	$shelf2.rotation = $shelf2.rotation.slerp(rot, 0.1)

func _toggle_on():
	rot.z = 0

func _toggle_off():
	rot.z = deg_to_rad(-90)
