extends KinematicBody2D

const speed = 15000;
const top = 8000;
const VTOP = Vector2(0, -1);
const yspeed = 100;
var vel = Vector2();

func _physics_process(delta):
	if Input.is_action_pressed('ui_right') and position.x < 28:
		$Sprite.play("Fly");
		vel.x = speed * delta;
	elif Input.is_action_pressed('ui_left') and position.x > -116:
		$Sprite.play("Fly");
		vel.x = -speed * delta;
	else:
		vel.x = 0;
		#$Sprite.stop();
		$Sprite.play("Idle");
	vel.y = -top * delta;
		
	vel = move_and_slide(vel, VTOP);
	

#func _on_Area2D_area_entered(area):
#	print("killed");
#	top = 0;
#	speed = 0;
