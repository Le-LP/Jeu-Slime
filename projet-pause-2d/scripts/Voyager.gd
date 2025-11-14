extends Area2D

@onready var label: Label = $"../Label"
@onready var game: Node2D = $"../.."

func _on_body_entered(body: Node2D) -> void:
	label.visible = true


func _on_body_exited(body: Node2D) -> void:
	label.visible = false

func _process(delta: float) -> void:
	if (Input.is_action_just_pressed("interact")) and label.visible:
		print("voyaer c'est chouette")
		
