extends Node3D

var pos = $Cube_001.position
var buttons = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	print('DOOR IS READY')
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	$Cube_001.position = $Cube_001.position.lerp(pos, 0.2)

func _toggle_on():
	buttons += 1
	if (buttons >= 1):
		pos.y = -2.86
		print('DOOR IS OPEN')

func _toggle_off():
	buttons -= 1
	if (buttons <= 0):
		pos.y = 0
		print('DOOR IS CLOSED')
