class_name Idle extends CharacterState

func enter(previous_state_path: String, data := {}) -> void:
	character.velocity.x = 0.0
	character.velocity.z = 0.0
	character.animation_player.play(self.States.Idle)

func physics_update(_delta: float) -> void:
	character.velocity.y += character.gravity * _delta
	character.move_and_slide()

	if not character.is_on_floor():
		finished.emit(self.States.Falling)
