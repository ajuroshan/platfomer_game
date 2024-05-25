extends AnimatedSprite2D

var SPEED = 40 

var direction = 1
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var enemy = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_left.is_colliding():
		enemy.flip_h = false
		direction = 1
	if ray_cast_right.is_colliding():
		enemy.flip_h = true
		direction = -1
	position.x += SPEED * delta * direction 
