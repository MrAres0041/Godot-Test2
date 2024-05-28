extends Node2D

@onready var transition = $Transition/AnimationPlayer


func _ready():
	transition.get_parent().get_node("ColorRect").color.a = 255
	transition.play("fade_out")
	await get_tree().create_timer(0.5).timeout
