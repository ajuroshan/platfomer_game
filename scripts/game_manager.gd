extends Node

var SCORE = 0
@onready var panel = $"../CanvasLayer/Panel"
@onready var audio_stream_player_2d = $AudioStreamPlayer2D
@onready var game_over = $"../CanvasLayer/GameOver"

func add_score():
	SCORE += 1
	print(SCORE)

var won = false
func _on_win_area_body_entered(body):
	if SCORE >= 200 and not won :
		audio_stream_player_2d.play()
		game_over.visible = true
		won = true


func update_score_on_label():
	panel.get_node("Label").text = str(SCORE) + "/200"
