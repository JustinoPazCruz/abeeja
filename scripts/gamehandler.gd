extends Node

var puntos = 0

func update_puntos():
	get_tree().get_nodes_in_group("puntos")[0].text = String(puntos)
