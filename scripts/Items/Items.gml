

function scr_add_item_info(item_id, type, name, description, passive_bonus){
	
	// set new item's info
	global.item_info[# item_id, Item_stat.name] = name
	global.item_info[# item_id, Item_stat.type] = type
	global.item_info[# item_id, Item_stat.description] = description
	global.item_info[# item_id, Item_stat.passive_bonus] = passive_bonus
}

function scr_set_slot_item(slot, item, slot_list) {
	
	// if this item already in some slot remove it
	for (var i = 0; i < obj_Inventory.inventory_slots_number; i++) {
		
		if slot_list[| i] == item {
			
			slot_list[| i] = Item.none
		}
	}
	
	// set item in slot
	slot_list[| slot] = item
}