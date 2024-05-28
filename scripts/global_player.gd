extends Node

@export_range(0, 100, 1.5, "or_greater", "or_less") var health: int
var chatting = false

func on_chatting():
	chatting = true

func off_chatting():
	chatting = false
