extends Area2D

@onready var stopTimer: Timer = $stopTimer
var playerInStopRadius = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if playerInStopRadius:
		print(stopTimer.time_left)
		if stopTimer.is_stopped():
			stopTimer.start()

func onBodyEntered(body: Node2D) -> void:
	playerInStopRadius = true

func onBodyExited(body: Node2D) -> void:
	playerInStopRadius = false
	if !stopTimer.is_stopped():
		stopTimer.stop()

func onStopTimerTimeout() -> void:
	pass # Replace with function body.
