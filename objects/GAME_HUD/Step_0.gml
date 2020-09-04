
if PLAYER.ShowInventory {
	
	#region input
	// move pointer
	key_MoveLeft = keyboard_check_pressed(vk_left)
	key_MoveRight = keyboard_check_pressed(vk_right)
	key_MoveUp = keyboard_check_pressed(vk_up)
	key_MoveDown = keyboard_check_pressed(vk_down)
	
	key_Cast[1] = keyboard_check_pressed(ord("Q"))
	key_Cast[2] = keyboard_check_pressed(ord("W"))
	key_Cast[3] = keyboard_check_pressed(ord("E"))
	key_Cast[4] = keyboard_check_pressed(ord("R"))
	
	key_Item[0] = keyboard_check_pressed(ord("Z"))
	key_Item[1] = keyboard_check_pressed(ord("X"))
	key_Item[2] = keyboard_check_pressed(ord("C"))
	key_Item[3] = keyboard_check_pressed(ord("A"))
	key_Item[4] = keyboard_check_pressed(ord("S"))
	key_Item[5] = keyboard_check_pressed(ord("D"))
	#endregion 
	
	#region inventory pointer
	pointer_i += key_MoveDown - key_MoveUp
	pointer_j += key_MoveRight - key_MoveLeft
	// limit pointers' movement
	pointer_i = min(item_grid_h-1, max(pointer_i, 0)) 
	pointer_j = min(item_grid_w-1, max(pointer_j, 0))
	#endregion
	
	#region control inventory slots
	for (var i = 0; i < obj_Inventory.inventory_slots_number; i++) {
		
		// if a slot button pressed
		if key_Item[i] {
			
			// if pointer is on an item select this item
			item_in_inventory = obj_Inventory.player_inventory[# pointer_i*item_grid_w + pointer_j, 0]
			
			if item_in_inventory {
				// if chosen item is already in the slot remove it
				if obj_Inventory.inventory_slots[| i] == item_in_inventory {
					
					obj_Inventory.inventory_slots[| i] = Item.none
				}
				// add an item to slot otherwise
				else {
					
					scr_set_slot_item(i, item_in_inventory, obj_Inventory.inventory_slots)
				}
			}
		}
	}
	#endregion
}
