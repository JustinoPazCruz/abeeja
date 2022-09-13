extends CanvasLayer

func _on_RestartButton_pressed():
	Gamehandler.puntos = 0
	get_tree().change_scene("res://scenes/Gameworld.tscn")

func _on_QuitButton_pressed():
	get_tree().quit()
