extends Control

var current_level = 0

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_" + str(current_level) + ".tscn")
	



func _on_exit_pressed() -> void:
	get_tree().quit()
