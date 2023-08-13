extends Node3D

var pos = $Cube_001.position
var yPosUp = 0
var yPosDown = -3.722
var yPosDefault = yPosDown
var yPosActive = yPosUp

@export var defaultIsOnTop = false

# Called when the node enters the scene tree for the first time.
func _ready():
	if (defaultIsOnTop):
		yPosDefault = yPosUp
		yPosActive = yPosDown
	else:
		pos.y = yPosDown
		$Cube_001.position = pos

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	$Cube_001.position = $Cube_001.position.lerp(pos, 0.05)

func _toggle_on():
	pos.y = yPosActive
	print('ELEVATOR IS ON')

func _toggle_off():
	pos.y = yPosDefault
	print('ELEVATOR IS OFF')
