extends CharacterBody2D

var chatting
var roaming
@onready var animation_player = $AnimationPlayer
var p_in_area = false

func _physics_process(delta):
	animation_player.play("default")
	if p_in_area and !GlobalPlayer.chatting:
		if Input.is_action_just_pressed("e"):
			#run dialogue
			Dialogic.start("Giving")
	

func _on_area_2d_body_entered(body):
	if body.has_method("player"):
		p_in_area = true

func _on_area_2d_body_exited(body):
	if body.has_method("player"):
		p_in_area = false
