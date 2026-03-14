extends Button

@export var levelToTransition: String
@export var numLevel: int

func onPressed() -> void:
	player.levelEntered = numLevel
	print(player.levelEntered)
	get_tree().change_scene_to_file(levelToTransition)
