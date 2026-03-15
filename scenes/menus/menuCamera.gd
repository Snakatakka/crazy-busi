extends Camera2D

var tween

func onReturnButtonPressed() -> void:
	if tween:
		tween.kill()
	
	tween = create_tween()
	tween.tween_property(self, "position", Vector2(0, 0), 1).set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)


func onStartButtonPressed() -> void:
	print('igowalla')
	if tween:
		tween.kill()
	
	tween = create_tween()
	tween.tween_property(self, "position", Vector2(0, 1080), 1).set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)
