extends ColorRect


# Called when the node enters the scene tree for the first time.
#1.0 = true
#0.0 false


func _ready() -> void:
	pass
		#var lightcolor_past = material.get_shader_parameter(lightcolor_past)
		#var darkcolor_past = material.get_shader_parameter(darkcolor_past)
		#var lightcolor_future = material.get_shader_parameter(lightcolor_future)
		#var darkcolor_future = material.get_shader_parameter(darkcolor_future)
		#
		#var future_active
		#var past_active

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if timelogic.current_time == "future":
		material.set_shader_parameter("lightcolor", [0.87,0.74,0.8, 1.0])
		material.set_shader_parameter("darkcolor", [0.19,0.176,0.28, 1.0])
	else:
		material.set_shader_parameter("lightcolor", [0.84,0.7,0.6, 1.0])
		material.set_shader_parameter("darkcolor", [0.33,0.12,0.0, 1.0])
		#future_active = 1
		#past_active = 0
	##	material.set_shader_parameter("future_active", 1)
	##	material.set_shader_parameter("past_active", 0.0)
	#else:
		#future_active = 0
		#past_active = 1
	##	material.set_shader_parameter("future_active", 0)
	##	material.set_shader_parameter("past_active", 1)
	#var lightcolor = lightcolor_past*past_active + lightcolor_future
	#material.set_shader_parameter("lightcolor", 
