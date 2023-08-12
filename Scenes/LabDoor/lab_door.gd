extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	print('DOOR IS READY')
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _toggle_on():
	print('DOOR IS OPEN')

func _toggle_off():
	print('DOOR IS CLOSED')
