extends KinematicBody2D

var entered = false
var dialog = 0

onready var dialogBox = $RichTextLabel
onready var talkArea = $TalkRange/CollisionShape2D

const dialogArray = [
	"Greetings, chosen knight!",
	"You must seek for the flaming skull",
	"'Tis an ancient artifact with great power",
	"To achieve that, you must defeat a greater evil",
	"Which dwells within the deepest of caves",
	"First you must travel through the undead forest",
	"So much evil dwells within these woods",
	"Go for the little plants for your healing",
	"Keep your distance when fighting the evil",
	"Good luck on your path, chosen knight!"
]

func _on_TalkRange_body_entered(body):
	entered = true

func _on_TalkRange_body_exited(body):
	entered = false

func _process(delta):
	if entered == true:
		dialogBox.show()
		if Input.is_action_just_pressed("action"):
			dialogBox.text = dialogArray[dialog]
			dialog += 1
			if dialog > (dialogArray.size()-1):
				dialog = 0		
	else:
		dialogBox.hide()
		dialogBox.text = "Press F to talk"
