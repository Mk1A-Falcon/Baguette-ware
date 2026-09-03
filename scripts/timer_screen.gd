extends Node2D
@onready var baguette_container: HBoxContainer = $BaguetteContainer
@onready var baguette_1: TextureRect = $BaguetteContainer/Baguette1
@onready var baguette_2: TextureRect = $BaguetteContainer/Baguette2
@onready var baguette_3: TextureRect = $BaguetteContainer/Baguette3
@onready var baguette_4: TextureRect = $BaguetteContainer/Baguette4
@onready var baguette_5: TextureRect = $BaguetteContainer/Baguette5
@onready var level: RichTextLabel = $Level
@onready var timer: RichTextLabel = $Timer

var time
func _ready() -> void:
	await Timer(5.0)
	
	if GlobalGodough.baguettes_played < 3:
		GlobalGodough.baguettes_played = GlobalGodough.baguettes_played + 1
		get_tree().change_scene_to_file("res://scenes/minigame_" + str(GlobalGodough.baguettes_played) + ".tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/title_screen.tscn")

func _process(delta: float) -> void:
	match GlobalGodough.runs_left: 

		4:
			baguette_1.hide()
		3:
			baguette_1.hide()
			baguette_2.hide()
		2:
			baguette_1.hide()
			baguette_2.hide()
			baguette_3.hide()
		1:
			baguette_1.hide()
			baguette_2.hide()
			baguette_3.hide()
			baguette_4.hide()
		0:
			baguette_container.hide()
	
	timer.text = str(time) 
	level.text = "Level " + str(GlobalGodough.baguettes_played) 

func Timer(start_time: float): 
	time = start_time 
	while time > 0.0:
		await wait(0.1) 
		time -= 0.1 
	return

func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout 
