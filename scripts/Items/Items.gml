

function scr_add_weapon(name, item_id, description, use_time, backswing, range, height){
	
	// set new item's info
	global.item_info[# item_id, GLOBALS.ItemStats.name] = name
	global.item_info[# item_id, GLOBALS.ItemStats.type] = ItemType.weapon
	global.item_info[# item_id, GLOBALS.ItemStats.description] = description
	global.item_info[# item_id, GLOBALS.ItemStats.use_time] = use_time
	global.item_info[# item_id, GLOBALS.ItemStats.backswing] = backswing
	global.item_info[# item_id, GLOBALS.ItemStats.range] = range
	global.item_info[# item_id, GLOBALS.ItemStats.height] = height
	
}

function scr_add_food(name, item_id, description, hp_gain){
	
	//
	global.item_info[# item_id, GLOBALS.ItemStats.name] = name
	global.item_info[# item_id, GLOBALS.ItemStats.type] = ItemType.food
	global.item_info[# item_id, GLOBALS.ItemStats.description] = description
	global.item_info[# item_id, GLOBALS.ItemStats.hp_gain] = hp_gain
}