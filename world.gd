extends Node2D

# BOMB FOLLOW SCRIPT

# Lag Speed
@export var follow_speed = 0.5

# Reference to the current target
var pemegang_bola: Node2D = null

func _ready():
	# Set initial target to $Player
	pemegang_bola = $gerak

func _process(delta):
	if pemegang_bola != null:
		var direction_to_holder = pemegang_bola.global_position - $ball.global_position
		var target_position = pemegang_bola.global_position
		$ball.global_position += direction_to_holder.normalized() * (direction_to_holder.length() * follow_speed)


func _on_gerak_tukar():
	if pemegang_bola == $gerak:
		pemegang_bola = $diam
	elif pemegang_bola == $diam:
		pemegang_bola = $gerak
