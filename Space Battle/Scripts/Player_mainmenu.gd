extends KinematicBody2D

var a;
var b;
var c;

func _physics_process(delta):
	if Input.is_action_pressed('ui_right') and position.x < 28:
		a = 0;
	elif Input.is_action_pressed('ui_left') and position.x > -116:
		b = 0;
	else:
		#$Sprite.stop();
		$Sprite.play("Idle");