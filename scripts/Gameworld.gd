extends Node2D

var obstacle = preload("res://scenes/FallingObject.tscn")
var obstacle2 = preload("res://scenes/FallingObject2.tscn")
var obstacle3 = preload("res://scenes/FallingObject3.tscn")
var t = rand_range(0.3,1)
var t2 = rand_range(0.3,7)
var t3 = rand_range(0.3,7)

func ready():
	$Timer.start(t)
	$Timer2.start(t2)
	$Timer3.start(t3)

func _on_Timer_timeout():
	var screen = get_viewport_rect().size
	var position = Vector2(rand_range(0, screen.x), -600)
	
	var obstacle = load("res://scenes/FallingObject.tscn")
	obstacle = obstacle.instance()
	
	obstacle.position = position
	
	add_child(obstacle)

func _on_Timer2_timeout():
	var screen = get_viewport_rect().size
	var position = Vector2(rand_range(0, screen.x), -600)
	
	var obstacle2 = load("res://scenes/FallingObject2.tscn")
	obstacle2 = obstacle2.instance()
	
	obstacle2.position = position
	
	add_child(obstacle2)

func _on_Timer3_timeout():
	var screen = get_viewport_rect().size
	var position = Vector2(rand_range(0, screen.x), -600)
	
	var obstacle2 = load("res://scenes/FallingObject3.tscn")
	obstacle3 = obstacle3.instance()
	
	obstacle3.position = position
	
	add_child(obstacle2)

func _ready():
	Gamehandler.update_puntos()
