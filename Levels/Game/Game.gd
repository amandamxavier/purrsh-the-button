extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("switchPlayer"):
		var player_temp_state = $Pet.active
		var cam_temp_state = $Pet.Cam.current
		$Pet.active = $Player.active
		$Pet.Cam.current = $Player.Cam.current
		$Player.active = player_temp_state
		$Player.Cam.current = cam_temp_state
