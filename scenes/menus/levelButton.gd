extends Button

@export var levelToTransition: String
@export var numLevel: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func onPressed() -> void:
	stop.currentLevel = numLevel
	get_tree().change_scene_to_file(levelToTransition)
