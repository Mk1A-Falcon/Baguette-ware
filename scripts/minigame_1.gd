extends Node2D
@onready var node_2d: Node2D = $"tIMER"

var baguettes_collected = 0 
var timer_end = false

func _ready() -> void:
	$baguette_pickup.baguettes_connected.connect(baguettes_connected)
	$baguette_pickup2.baguettes_connected.connect(baguettes_connected)
	$baguette_pickup3.baguettes_connected.connect(baguettes_connected)
	$baguette_pickup4.baguettes_connected.connect(baguettes_connected)
	#had to watch a 10 min tutorial on how singals and stuff work btw
	#cause the original guide doesnt connect it :(
	await node_2d.TIMERWORKSBROTRUST(10.0)
	timer_end = true

func _process(_delta: float) -> void:
	if baguettes_collected == 4:
		if GlobalGodough.baguettes_played > 2:
			get_tree().change_scene_to_file("res://scenes/baguette_win.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/level_scence.tscn")
	if timer_end:
		GlobalGodough.baguettes_played -= 1
		GlobalGodough.runs_left -= 1
		get_tree().change_scene_to_file("res://scenes/level_scence.tscn")

func baguettes_connected() -> void:
	baguettes_collected = baguettes_collected + 1
	print ("yay 1 collected ples check terminal") #was debug to find the function wasn't even being called 
	return
