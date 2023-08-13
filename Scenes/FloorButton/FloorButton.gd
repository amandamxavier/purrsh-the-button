extends Node3D

signal _toggle_on
signal _toggle_off

var bodies = 0

@export var toggable: Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_interact_area_body_entered(body):
	print("ENTER")
	if (toggable && body.get_class() == "CharacterBody3D"):
		bodies += 1
		toggable.call('_toggle_on')

func _on_interact_area_body_exited(body):
	print("EXIT")
	bodies -= 1
	if (bodies <= 0 && toggable):
		toggable.call('_toggle_off')
