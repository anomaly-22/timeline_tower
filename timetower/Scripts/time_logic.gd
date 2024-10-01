extends Node2D
#exports: current_time


var current_time = "future"
#var color1 = 
#var color2 = 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("ui_accept") and (current_time == "future"):
		current_time = "past"
		#var color1 = 
		#var color2 = 
		#print_debug(current_time)
	elif Input.is_action_just_pressed("ui_accept"):
		current_time = "future"
		#var color1 = 
		#var color2 = 
		#print_debug(current_time)
	
