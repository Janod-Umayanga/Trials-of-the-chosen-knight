extends Control

var hp = 4 setget set_hp
var max_hp = 4 setget set_max_hp

onready var hpFull = $HpFull
onready var hpEmpty = $HpEmpty
onready var stats = $Stats

func set_hp(value):
	hp = clamp(value, 0, max_hp)
	if hpFull != null:
		hpFull.rect_size.x = hp * 8

func set_max_hp(value):
	max_hp = max(value, 1)
	self.hp = min(hp, max_hp)
	if hpEmpty != null:
		hpEmpty.rect_size.x = max_hp * 8
	
func _ready():
	self.max_hp = stats.max_health
	self.hp = stats.health
	stats.connect("health_changed", self, "set_hp")
	stats.connect("max_health_changed", self, "set_max_hp")
