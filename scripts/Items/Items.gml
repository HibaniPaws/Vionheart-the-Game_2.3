

function scr_add_item_info(item_id, type, name, description, passive_bonus){
	
	// set new item's info
	global.item_info[# item_id, Item_stat.name] = name
	global.item_info[# item_id, Item_stat.type] = type
	global.item_info[# item_id, Item_stat.description] = description
	global.item_info[# item_id, Item_stat.passive_bonus] = passive_bonus
}

function scr_set_slot_item(slot, item, slot_arr) {
	
	// if this item already in some slot remove it
	for (var i = 0; i < PLAYER.ActiveSlotsNum; i++) {
		
		if slot_arr[@ i] == item {
			
			slot_arr[@ i] = Item.none
		}
	}
	
	// set item in slot
	slot_arr[@ slot] = item
}