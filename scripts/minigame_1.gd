extends Node2D
@onready var node_2d: Node2D = $"tIMER"

var baguettes_connected = 0 
var timer_end = false

func _ready() -> void:
	await node_2d.TIMERWORKSBROTRUST(10.0)
	timer_end = true

func _process(delta: float) -> void:
	if baguettes_connected == 3:
		if GlobalGodough.baguettes_played > 3:
			get_tree().change_scene_to_file("res://scenes/baguette_win.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/level_scence.tscn")
	if timer_end:
		GlobalGodough.baguettes_played -= 1
		GlobalGodough.runs_left -= 1
		get_tree().change_scene_to_file("res://scenes/level_scence.tscn")

func baguettes_collected() -> void:
	baguettes_connected +=1
	return
