extends Node2D

func _process(delta):
	if Input.is_action_just_pressed("shoot"):
		_on_play_button_pressed()

func _on_play_button_pressed():
	GameManager.load_level_scene()


func _on_exit_button_pressed():
	get_tree().quit()
