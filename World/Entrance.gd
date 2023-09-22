extends Area2D

var entered = false

onready var dialogBox = $RichTextLabel

func _on_Entrance_body_entered(body):
	entered = true

func _on_Entrance_body_exited(body):
	entered = false
	
func _process(delta):
	if entered == true:
		dialogBox.show()
		if Input.is_action_just_pressed("action"):
			get_tree().change_scene("res://World/Cave.tscn")
	else:
		dialogBox.hide()
