extends Area2D

var direction: Vector2 = Vector2.UP
var speed: float = 200.0
var damage: int = 10


func _ready():
	pass
	

func _process(delta):
	position += direction * speed * delta


func setup(pos: Vector2, dir: Vector2, sp: float, dmg: int) -> void:
	direction = dir
	speed = sp
	damage = dmg
	global_position = pos


func blow_up(area: Node2D) -> void:
	if !area.is_in_group(GameData.GROUP_HOMING_MISSILE):
		var net_position = global_position - area.global_position
		ObjectMaker.create_explosion(net_position, area)
	set_process(false)
	queue_free()
	
func get_damage() -> int:
	return damage


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_area_entered(area):
	blow_up(area)
