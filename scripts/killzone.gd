extends Area2D

@onready var timer = $Timer
@onready var animation_player = $AnimationPlayer




func _on_body_entered(body):
	timer.start()
	body.velocity.y = -200
	animation_player.play("die")
	body.get_node("CollisionShape2D").queue_free()
	Engine.time_scale = 0.5
	print("You Died!!")


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
