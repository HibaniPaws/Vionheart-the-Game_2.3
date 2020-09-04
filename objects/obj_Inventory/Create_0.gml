
var function _add_item(item_id, num) {
	
	for (var i = 0; i < global.inventory_size; i++) {
	    
		if !player_inventory[# i, 0] {
			player_inventory[# i, 0] = item_id
			player_inventory[# i, 1] = num
			return true
		}
	}
	return false
}

player_inventory = ds_grid_create(global.inventory_size, 2)
inventory_slots = ds_list_create()
inventory_slots_number = 6

for (var i = 0; i < inventory_slots_number; i++) {
    
	inventory_slots[| i] = Item.none
}
inventory_slots[| 3] = Item.sword1

scr_add_item_info(Item.sword1, Item_type.sword, "sword1", "number one", 0)
scr_add_item_info(Item.dagger1, Item_type.dagger, "dagger", "no mercy", 0)
scr_add_item_info(Item.wand1, Item_type.wand, "whoa magic", "pew pew", 0)
scr_add_item_info(Item.heal1, Item_type.consumable, "almost as healthy as fresh milk", "mmmm...", 0)

_add_item(Item.dagger1, 1)
_add_item(Item.sword1, 1)