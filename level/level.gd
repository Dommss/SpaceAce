extends Node2D

func _process(_delta):
	if Input.is_key_pressed(KEY_Q) == true:
		GameManager.load_main_scene()
	if Input.is_key_pressed(KEY_E) == true:
		ObjectMaker.create_explosion(Vector2(100, 200))
	if Input.is_key_pressed(KEY_B) == true:
		ObjectMaker.create_boom(Vector2(200, 100))
