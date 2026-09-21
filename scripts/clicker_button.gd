extends TextureButton
@onready var linkssmothing : Node2D = $".." #made it more absolute(non-relative so reusable)


func _on_pressed() -> void:
	hide()
	linkssmothing.baguettes_pressed += 1 
