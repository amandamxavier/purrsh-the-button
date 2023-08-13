extends VideoStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not is_playing():
		get_tree().change_scene_to_file("res://Levels/Main Menu/Main_Menu.tscn")
	pass

func _input(event):
	if event is InputEventKey:
		if event.pressed:
			get_tree().change_scene_to_file("res://Levels/Main Menu/Main_Menu.tscn")
