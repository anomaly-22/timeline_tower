extends TileMapLayer

@export var future_tilemap : TileMapLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if timelogic.current_time == "future":
		future_tilemap.visible = true
		future_tilemap.collision_enabled = true
	if timelogic.current_time == "past":
		future_tilemap.visible = false
		future_tilemap.collision_enabled = false
