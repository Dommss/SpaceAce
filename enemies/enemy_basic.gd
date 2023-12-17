extends PathFollow2D

@export var shoots: bool = false
@export var aims_at_player: bool = false

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var laser_timer = $LaserTimer
@onready var booms = $Booms

var player_ref: Player
var speed: float = 0.0
var can_shoot: bool = false
var dead: bool = false
var anim_string: String


func _ready():
	player_ref = get_tree().get_first_node_in_group(GameData.GROUP_PLAYER)
	if !player_ref:
		queue_free()
	animated_sprite_2d.play(anim_string)

func _process(delta):
	progress_ratio += speed * delta
	
	if progress_ratio > 0.99:
		queue_free()


func setup(speed: float, anim_name: String) -> void:
	self.speed = speed
	anim_string = anim_name


func _on_laser_timer_timeout():
	pass # Replace with function body.


func _on_visible_on_screen_notifier_2d_screen_entered():
	pass # Replace with function body.


func _on_visible_on_screen_notifier_2d_screen_exited():
	set_process(false)
	queue_free()


func _on_area_2d_area_entered(area):
	pass # Replace with function body.
