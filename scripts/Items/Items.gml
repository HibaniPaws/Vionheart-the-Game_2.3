

function scr_add_item_info(item_id, type, name, description, passive_bonus){
	
	// set new item's info
	global.item_info[# item_id, Item_stat.name] = name
	global.item_info[# item_id, Item_stat.type] = type
	global.item_info[# item_id, Item_stat.description] = description
	global.item_info[# item_id, Item_stat.passive_bonus] = passive_bonus
}