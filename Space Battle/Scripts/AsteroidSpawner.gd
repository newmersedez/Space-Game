extends Node

const enemy_asteroid = preload("res://tscn/Asteroid.tscn");

func _physics_process(delta):
	spawn();
	pass

func spawn():
	randomize();
	var enemy = enemy_asteroid.instance();
	var pos = Vector2();
	pos.x = rand_range(0,180);
	pos.y = -180
	pos.y -= 1;
	enemy.set_position(pos);
	get_node("Container").add_child(enemy);
	
	if enemy.position.y == get_viewport().size.y:
		print("deleted");
	