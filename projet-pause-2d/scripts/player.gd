extends CharacterBody2D

const SPEED = 150.0

func _physics_process(delta: float) -> void:
	# Récupère les entrées (axes horizontaux et verticaux)
	var input_vector = Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down")
	)

	# Normalise pour éviter vitesse plus élevée en diagonale
	if input_vector != Vector2.ZERO:
		input_vector = input_vector.normalized()

	# Applique la vitesse
	velocity = input_vector * SPEED

	# Déplace le personnage
	move_and_slide()
