extends CharacterBody2D
#Variables
var an_state
var an_tree
const speed = 150

func player():
	pass

#Initializing variables
func _ready():
	#Animation Variables
	an_tree = get_node("AnimationTree")
	an_state = an_tree.get("parameters/playback")
	
#Animation	
func update_an(dir):
	if(dir != Vector2.ZERO):
		an_state.travel("walk")
		an_tree.set("parameters/idle/blend_position", dir)
		an_tree.set("parameters/walk/blend_position", dir)
	else:
		an_state.travel("idle")

func _physics_process(delta):
	#Capture direction
	var in_dir = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up"),
		)

	#And we walk with style!
	if !GlobalPlayer.chatting:
		velocity = in_dir.normalized() * speed
		move_and_slide()
		update_an(in_dir)
