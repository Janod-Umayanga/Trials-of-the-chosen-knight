extends Node2D

func _on_Menu_pressed():
	get_tree().change_scene("res://Main.tscn")
	PlayerStats.health = PlayerStats.max_health


func _on_Play_pressed():
	get_tree().change_scene("res://World.tscn")
	PlayerStats.health = PlayerStats.max_health
