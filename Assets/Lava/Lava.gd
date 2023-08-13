extends Node3D

@export var spawnPoint: Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_body_entered(body):
	if (spawnPoint && body.get_class() == "CharacterBody3D"):
		body.position = spawnPoint.position
