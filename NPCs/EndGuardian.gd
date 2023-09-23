extends KinematicBody2D

var entered = false

onready var dialogBox = $RichTextLabel

func _on_TalkRange_body_entered(body):
	entered = true

func _on_TalkRange_body_exited(body):
	entered = false

func _process(delta):
	if entered == true:
		dialogBox.show()
		if Input.is_action_just_pressed("action"):
			dialogBox.text = "So, you have achieved the flaming skull!"
	else:
		dialogBox.hide()
		dialogBox.text = "Press F to talk"
