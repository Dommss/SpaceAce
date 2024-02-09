extends Node2D

func _process(_delta):
	if Input.is_key_pressed(KEY_Q) == true:
		GameManager.load_main_scene()
	
	if Input.is_action_just_pressed("test"):
		ObjectMaker.create_power_up(Vector2(200, 200), GameData.POWERUP_TYPE.SHIELD)
