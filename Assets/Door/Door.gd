extends Node3D

@onready var posE = $porta_e.position
@onready var posD = $porta_d.position
var buttons = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	print($porta_e)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	$porta_e.position = $porta_e.position.lerp(posE, 0.2)
	$porta_d.position = $porta_d.position.lerp(posD, 0.2)

func _toggle_on():
	buttons += 1
	if (buttons >= 1):
		posE.x = -1.707
		posD.x = 1.704

func _toggle_off():
	buttons -= 1
	if (buttons <= 0):
		posE.x = -0.547
		posD.x = 0.536
