class_name CharacterState extends "../state.gd"

const States = { Idle = "idle", Walk = "walk", Run = "run", Fall = "fall", Attack = "attack", RunAttack = "run_attack" }

var character: CharacterBody3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
