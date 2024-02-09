extends Node2D

func _on_play_button_pressed():
	GameManager.load_level_scene()


func _on_exit_button_pressed():
	get_tree().quit()
