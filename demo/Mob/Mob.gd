extends RigidBody2D

export var  min_speed : float = 150
export var max_speed : float = 200
var mob_types = ["walk", "swim", "fly"]

func _ready():
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
