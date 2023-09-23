extends Node2D

func _on_Play_pressed():
	PlayerStats.health = PlayerStats.max_health
	get_tree().change_scene("res://World.tscn")


func _on_Controls_pressed():
	get_tree().change_scene("res://Controls.tscn")


func _on_Quit_pressed():
	get_tree().quit()
