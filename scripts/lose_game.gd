extends Node2D

#same as :win_gane.tscn" almost wrote it as if it was a slack emoji :|
func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")



func _on_quit_pressed() -> void:
	get_tree().quit()
