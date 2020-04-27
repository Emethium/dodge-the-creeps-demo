extends RigidBody2D

export var : float min_speed = 150
export var : float max_speed = 200
var mob_types = ["walk", "swim", "fly"]

func _ready():
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]
	
func _on_Visibility_screen_exited():
	queue_free()
