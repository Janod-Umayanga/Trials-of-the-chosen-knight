extends Area2D

var entered = false

func _on_Entrance_body_entered(body):
	entered = true

func _on_Entrance_body_exited(body):
	entered = false
	
func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("action"):
			get_tree().change_scene("res://World/Cave.tscn")
