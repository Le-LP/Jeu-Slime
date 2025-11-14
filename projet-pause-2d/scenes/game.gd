extends Node2D

var Niveau = 1
var exp = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func gainExp(experience) :
	exp += experience
