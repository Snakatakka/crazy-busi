extends Camera2D

var tween

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func onStartButtonPressed() -> void:
	if tween:
		tween.kill()
	
	tween = create_tween()
	tween.tween_property(self, "position", Vector2(0, 1080), 0.75).set_trans(Tween.TRANS_QUART).set_ease(Tween.EASE_IN_OUT)


func onReturnButtonPressed() -> void:
	if tween:
		tween.kill()
	
	tween = create_tween()
	tween.tween_property(self, "position", Vector2(0, 0), 0.75).set_trans(Tween.TRANS_QUART).set_ease(Tween.EASE_IN_OUT)
