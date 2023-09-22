extends Area2D

func _on_HealthPotion_body_entered(body):
	if PlayerStats.health < PlayerStats.max_health:
		PlayerStats.health += 1
		queue_free()
