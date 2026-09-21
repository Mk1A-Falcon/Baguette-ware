extends Node2D

#copied logic behind functionality from "main_menu.tscn"
func _on_quit_pressed() -> void:
	get_tree().quit()
	

func _on_menu_pressed() -> void:
	GlobalGodough.stat_reset()
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
