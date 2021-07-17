extends Node2D

var speedy = 0;

func _on_Area2D_body_entered(body):
	print("killed");
	$Player/Sprite.stop(); 
