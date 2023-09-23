extends Area2D

const EnemyDeathEffect = preload("res://Effects/EnemyDeathEffect.tscn")
const Guardian = preload("res://NPCs/EndGuardian.tscn")

var entered = false

onready var dialogBox = $RichTextLabel

func _on_Trophy_body_entered(body):
	entered = true

func _on_Trophy_body_exited(body):
	entered = false

func _process(delta):
	if entered == true:
		dialogBox.show()
		if Input.is_action_just_pressed("action"):
			queue_free()
			var enemyDeathEffect = EnemyDeathEffect.instance()
			get_parent().add_child(enemyDeathEffect)
			enemyDeathEffect.global_position = global_position
			
			var guardian = Guardian.instance()
			get_parent().add_child(guardian)
			guardian.global_position = global_position
	else:
		dialogBox.hide()
