extends Node3D

@export var door: Node3D
var bodies = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_3d_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if (body.get_class() == "CharacterBody3D"):
		bodies += 1
		if (bodies >= 2):
			door.call('_toggle_on')

func _on_area_3d_body_shape_exited(body_rid, body, body_shape_index, local_shape_index):
	bodies -= 1
