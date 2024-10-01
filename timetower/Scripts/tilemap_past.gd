extends TileMapLayer

@export var past_tilemap : TileMapLayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if timelogic.current_time == "past":
		past_tilemap.visible = true
		past_tilemap.collision_enabled = true
	if timelogic.current_time == "future":
		past_tilemap.visible = false
		past_tilemap.collision_enabled = false
