extends KinematicBody2D

var entered = false
var dialog = 0

const EnemyDeathEffect = preload("res://Effects/EnemyDeathEffect.tscn")
const EndMenu = preload("res://End.tscn")

onready var dialogBox = $RichTextLabel

const dialogArray = [
	"So, you have achieved the flaming skull!",
	"No one ever has managed to achieve such power",
	"'Tis a gift or a course, that I do not know",
	"However, now you have no choice",
	"Except to dwell within this great power",
	"I knew 'twas a right decision to chose you for this task",
	"Farewell, chosen knight!",
	""
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
				var enemyDeathEffect = EnemyDeathEffect.instance()
				get_parent().add_child(enemyDeathEffect)
				enemyDeathEffect.global_position = global_position
				queue_free()
				
				var endMenu = EndMenu.instance()
				get_parent().add_child(endMenu)
				endMenu.global_position = global_position
	else:
		dialogBox.hide()
		dialogBox.text = "Press F to talk"
