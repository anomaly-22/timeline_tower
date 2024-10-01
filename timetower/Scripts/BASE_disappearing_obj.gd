extends Node2D
class_name DisappearingObj

@export var collision : CollisionShape2D
@export var obj_sprite : Sprite2D
@export var object_in_past = false
@export var object_in_future = false




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta) -> void:
	#print(timelogic.current_time)
	if object_in_past == true: 
#OBJECT EXISTS IN THE PAST AND ONLY THE PAST
		if timelogic.current_time == "past" and collision.disabled == true: 
			collision.disabled = false
			obj_sprite.visible = true
		if timelogic.current_time == "future" and collision.disabled == false: 
			collision.disabled = true
			obj_sprite.visible = false
	if object_in_future == true: 
#OBJECT EXISTS IN THE FUTURE AND ONLY THE FUTURE
		if timelogic.current_time == "future" and collision.disabled == true: 
			collision.disabled = false
			obj_sprite.visible = true
		if timelogic.current_time == "past" and collision.disabled == false: 
			collision.disabled = true
			obj_sprite.visible = false
	
		
