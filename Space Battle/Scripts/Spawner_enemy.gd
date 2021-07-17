extends Node

const enemy_asteroid = preload("res://tscn/Asteroid.tscn");

func _ready():
	spawn();
	pass

func spawn():
	var enemy = enemy_asteroid.instance();
	get_node("Container").add_child(enemy);