extends Area2D

var stops = {
	'1' = {
		"stopNames" = [],
		"stopPositions" = [Vector2(0, 0), Vector2(0, 0)],
		"stopRotations" = [180, 180],
	},
	'2' = {
		"stopNames" = [],
		"stopPositions" = [Vector2(0, 0), Vector2(0, 0)],
		"stopRotations" = [180, 180],
	},
}

@export var currentStop = 0
@onready var stopTimer: Timer = $stopTimer
var playerInStopRadius = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if playerInStopRadius:
		# print(stopTimer.time_left)
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
	if currentStop < (len(stops['1']['stopPositions'])):
		position = stops['1']['stopPositions'][currentStop]
