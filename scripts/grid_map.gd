extends GridMap
const BLOCK_BREAK_PARTICLES = preload("res://scenes/block_break_particles.tscn")
var instance

func destroy_block(world_coordinate):
	var map_coordinate = local_to_map(world_coordinate)
	set_cell_item(map_coordinate,-1)
	instance = BLOCK_BREAK_PARTICLES.instantiate()
	instance.position = map_to_local(map_coordinate)
	add_child(instance)
	instance.emitting = true

func place_block(world_coordinate, block_index):
	var map_coordinate = local_to_map(world_coordinate)
	set_cell_item(map_coordinate,block_index)
