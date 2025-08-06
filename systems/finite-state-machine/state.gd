class_name State extends Node

signal finished(next_state_path: String, data: Dictionary)

## Called by the state machine when receiving unhandled input events.
func handle_input(_event: InputEvent) -> void:
	pass

func update(_delta: float) -> void:
	pass

func physics_update(_delta: float) -> void:
	pass

func enter(previous_state_path: String, data := {}) -> void:
	pass

func exit() -> void:
	pass
