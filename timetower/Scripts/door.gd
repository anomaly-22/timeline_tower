extends Node2D

#door will usally be locked by a key but this makes it able to be entered without key
#sprite also gets changed maybe
@export var no_door_in = ""

@export var locked = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	#DO NOT JUST PUT PASS HERE.
	pass
	
