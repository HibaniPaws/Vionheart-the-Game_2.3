
if PLAYER.ShowInventory {
	key_MoveLeft = keyboard_check_pressed(vk_left);
	key_MoveRight = keyboard_check_pressed(vk_right);
	key_MoveUp = keyboard_check_pressed(vk_up);
	key_MoveDown = keyboard_check_pressed(vk_down);
	
	pointer_i += key_MoveDown - key_MoveUp
	pointer_j += key_MoveRight - key_MoveLeft
	// limit pointers' movement
	pointer_i = min(item_grid_h, max(pointer_i, 0)) 
	pointer_j = min(item_grid_w, max(pointer_j, 0))
}
