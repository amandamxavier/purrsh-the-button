extends Node3D

signal _toggle_on
signal _toggle_off

var bodies = 0
var pos = $Cylinder_001.position

@export var toggables: Array[Node3D]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	$Cylinder_001.position = $Cylinder_001.position.lerp(pos, 0.2)

func _on_interact_area_body_entered(body):
	if (toggables.size() > 0 && body.get_class() == "CharacterBody3D"):
		bodies += 1
		pos.y = -0.266
		for toggable in toggables:
			toggable.call('_toggle_on')

func _on_interact_area_body_exited(body):
	bodies -= 1
	if (toggables.size() > 0 && bodies <= 0):
		pos.y = 0
		for toggable in toggables:
			toggable.call('_toggle_off')
