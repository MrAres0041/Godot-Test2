extends Control

@onready var transition = $Transition/AnimationPlayer

#Play
func _on_play_pressed():
	transition.play("fade_in")
	await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file("res://scenes/map_1.tscn")

#Continue
func _on_continue_pressed():
	pass # Replace with function body.

#Options
func _on_options_pressed():
	pass # Replace with function body.

#Quit
func _on_quit_pressed():
	get_tree().quit()
