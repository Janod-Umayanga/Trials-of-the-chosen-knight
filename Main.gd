extends Node2D

func _on_Play_pressed():
	get_tree().change_scene("res://World.tscn")


func _on_Controls_pressed():
	pass # Replace with function body.


func _on_Quit_pressed():
	get_tree().quit()
