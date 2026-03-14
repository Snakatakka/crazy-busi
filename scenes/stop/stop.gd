extends Area2D

@export var currentStop = 0
@onready var stopTimer: Timer = $stopTimer

var playerInStopRadius = false
var currentLevel = str(player.levelEntered)

var stops = {
	'1' = {
		"stopNames" = [],
		"stopPositions" = [Vector2(0, 0), Vector2(0, 0)],
		"stopRotations" = [180, 0],
	},
	'2' = {
		"stopNames" = [],
		"stopPositions" = [Vector2(0, 0), Vector2(0, 0)],
		"stopRotations" = [180, 0],
	},
	'3' = {
		"stopNames" = [],
		"stopPositions" = [],
		"stopRotations" =  []
	}
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if playerInStopRadius:
		if stopTimer.is_stopped():
			stopTimer.start()

func onBodyEntered(body: Node2D) -> void:
	playerInStopRadius = true

func onBodyExited(body: Node2D) -> void:
	playerInStopRadius = false
	if !stopTimer.is_stopped():
		stopTimer.stop()

func onStopTimerTimeout() -> void:
	currentStop += 1
	print(currentStop)
	print((len(stops[str(currentLevel)]['stopPositions'])))
	
	# for some reason it only works if i have the greater than be the if
	# no idea why but it works so ¯\_(ツ)_/¯
	if currentStop >= (len(stops[str(currentLevel)]['stopPositions'])):
		get_tree().change_scene_to_file('res://scenes/menus/startMenu/finalScore.tscn')
	else:
		position = stops[str(currentLevel)]['stopPositions'][currentStop]
		rotation = stops[str(currentLevel)]['stopRotations'][currentStop]
