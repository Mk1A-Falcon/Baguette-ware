extends Node2D
@onready var node_2d_timer: Node2D = $timer
#defining variables
var baguettes_pressed = 0
var timer_end = false

func _ready() -> void:
	await node_2d_timer.TIMERWORKSBROTRUST(5.0)
	timer_end = true
func _process(delta: float) -> void:
	if baguettes_pressed == 5:
		if GlobalGodough.baguettes_played > 2:
			get_tree().change_scene_to_file("res://scenes/win_game.tscn")
		else: 
			get_tree().change_scene_to_file("res://scenes/level_scence.tscn")
	
	if timer_end:
		GlobalGodough.runs_left -= 1
		GlobalGodough.baguettes_played -=1
		get_tree().change_scene_to_file("res://scenes/level_scence.tscn")
