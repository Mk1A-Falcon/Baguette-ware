extends RichTextLabel
@onready var timer: RichTextLabel = $timer 

var time : float
func _ready() -> void:
	pass

func _process(delta: float) -> void:
	timer.text = str(snapped(time, 0.10)) 

func Timer(start_time: float): 

	
	time = start_time
	
	while time > 0.0: 
		await wait(0.10)
		time = time - 0.10
	
	return
	
func wait(seconds: float) -> void: 
	await get_tree().create_timer(seconds).timeout 
