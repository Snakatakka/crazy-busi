extends Control

var tween

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func onHover() -> void:
	if tween:
		tween.kill()
	
	tween = create_tween()
	tween.tween_property(self, "scale", Vector2(1.25, 1.25), 0.5).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_OUT)


func onNotHover() -> void:
	if tween:
		tween.kill()
	
	tween = create_tween()
	tween.tween_property(self, "scale", Vector2(1.0, 1.0), 1).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_OUT)
