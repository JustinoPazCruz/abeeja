extends Area2D

func _process(delta):
	position.y += rand_range(5,10)
	
func _on_FallingObject_area_entered(area):
		queue_free()
		if(area.is_in_group("Player")):
					Gamehandler.puntos += 10
		Gamehandler.update_puntos()
