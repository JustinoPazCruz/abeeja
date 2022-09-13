extends Area2D

func _process(delta):
	position.y += rand_range(5,10)

func _on_FallingObject_area_entered(area):
	if(area.is_in_group("Player")):
		get_tree().change_scene("res://scenes/Game Over Screen.tscn")
