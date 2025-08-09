class_name Run extends CharacterState

@export var run_speed_mod := 5.0

func enter(previous_state_path: String, data := {}) -> void:
	character.velocity.x += run_speed_mod
	character.velocity.z += run_speed_mod
	character.animation_player.play(self.States.Run)

func physics_update(_delta: float) -> void:
	character.velocity.y += character.gravity * _delta
	character.move_and_slide()

	if not character.is_on_floor():
		finished.emit(self.States.Falling)
