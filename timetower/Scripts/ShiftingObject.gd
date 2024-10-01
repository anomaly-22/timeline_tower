extends Node2D
class_name ShiftingObject

@export var current_sprite : AnimatedSprite2D
@export var past_collision : CollisionShape2D
@export var future_collision : CollisionShape2D

func _ready() -> void:
	future_collision.disabled = false
	past_collision.disabled = true


func _process(delta: float) -> void:
	if Input.is_action_just_released("ui_accept"):
		current_sprite.play(timelogic.current_time)
#OBJECT EXISTS IN THE PAST AND ONLY THE PAST
		if timelogic.current_time == "past": 
			past_collision.disabled = false
			future_collision.disabled = true
		if timelogic.current_time == "future": 
				past_collision.disabled = true
				future_collision.disabled = false
