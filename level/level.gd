extends Node2D

func _process(_delta):
    if Input.is_key_pressed(KEY_Q) == true:
        GameManager.load_main_scene()