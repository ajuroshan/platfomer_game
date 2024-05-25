extends Area2D

@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer



func _on_body_entered(_body):
	game_manager.add_score()
	game_manager.update_score_on_label()
	animation_player.play("pickup")
