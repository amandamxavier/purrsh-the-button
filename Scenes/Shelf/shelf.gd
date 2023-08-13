extends Node3D

var rot = $Cube_001.rotation

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	rot.z = -1.570796
	$Cube_001.rotation = rot

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	$Cube_001.rotation = $Cube_001.rotation.slerp(rot, 0.1)

func _toggle_on():
	rot.z = 0

func _toggle_off():
	rot.z = -1.570796
