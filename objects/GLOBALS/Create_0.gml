/// @description Insert description here


//// inventory
enum ItemId
{
	dagger,
	sword,
	wand,
	total
}

enum ItemType
{
	weapon,
	item,
	passive,
	food
}

enum ItemStats
{
	name,
	description,
	type,
	use_time,
	backswing,
	range,
	height = 3,
	total,
	hp_gain
}

global.item_info = ds_grid_create(ItemId.total, ItemStats.total)
global.inventory_size = 16
global.player_inventory = ds_grid_create(global.inventory_size, 2)