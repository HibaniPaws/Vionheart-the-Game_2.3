/// @description Draw HUD on screen

display_set_gui_size(global.max_W,global.max_H);
draw_set_font(font_Text);
draw_set_alpha(1);

#region Attribute Icons

//Strength
draw_set_color(c_red);
draw_circle(Margin,Top_Stack*1,32,false);
draw_set_halign(fa_center); draw_set_valign(fa_center); draw_set_color(c_white);
draw_text(Margin,Top_Stack*1,Player.Health); draw_text(Margin*2.5, Top_Stack*1,Player.MAX_STRENGTH);

//Arcane
draw_set_color(c_blue);
draw_circle(Margin,Top_Stack*2,32,false);
draw_set_halign(fa_center); draw_set_valign(fa_center); draw_set_color(c_white);
draw_text(Margin,Top_Stack*2,Player.Magic); draw_text(Margin*2.5, Top_Stack*2,Player.MAX_ARCANE);

//Agility
draw_set_color(c_green);
draw_circle(Margin,Top_Stack*3,32,false);
draw_set_halign(fa_center); draw_set_valign(fa_center); draw_set_color(c_white);
draw_text(Margin,Top_Stack*3,Player.AGILITY);

#endregion

#region Cast HUD

draw_set_color(c_black);

var CAST_BoxSize = 32;
var CAST_BoxOriginX = Margin*5;
var CAST_BoxOriginY = Top_Stack*2;
var CAST_BoxMargin = (CAST_BoxSize*2) + 16;

//Cast Slot 1
draw_rectangle(CAST_BoxOriginX-CAST_BoxSize,CAST_BoxOriginY-CAST_BoxSize,CAST_BoxOriginX+CAST_BoxSize,CAST_BoxOriginY+CAST_BoxSize,true);
//Case Slot 2
draw_rectangle((CAST_BoxOriginX+CAST_BoxMargin)-CAST_BoxSize,CAST_BoxOriginY-CAST_BoxSize,(CAST_BoxOriginX+CAST_BoxMargin)+CAST_BoxSize,CAST_BoxOriginY+CAST_BoxSize,true);
//Cast Slot 3
draw_rectangle((CAST_BoxOriginX+CAST_BoxMargin*2)-CAST_BoxSize,CAST_BoxOriginY-CAST_BoxSize,(CAST_BoxOriginX+(CAST_BoxMargin*2))+CAST_BoxSize,CAST_BoxOriginY+CAST_BoxSize,true);
//Cast Slot 4
draw_rectangle((CAST_BoxOriginX+CAST_BoxMargin*3)-CAST_BoxSize,CAST_BoxOriginY-CAST_BoxSize,(CAST_BoxOriginX+(CAST_BoxMargin*3))+CAST_BoxSize,CAST_BoxOriginY+CAST_BoxSize,true);

X_CastSlot[1] = CAST_BoxOriginX; Y_CastSlot[1] = CAST_BoxOriginY;
X_CastSlot[2] = (CAST_BoxOriginX+CAST_BoxMargin*1); Y_CastSlot[2] = CAST_BoxOriginY;
X_CastSlot[3] = (CAST_BoxOriginX+CAST_BoxMargin*2); Y_CastSlot[3] = CAST_BoxOriginY;
X_CastSlot[4] = (CAST_BoxOriginX+CAST_BoxMargin*3); Y_CastSlot[4] = CAST_BoxOriginY;

#endregion

#region Item HUD

draw_set_color(c_black);

var INV_BoxSize = 32;
var INV_BoxOriginX = Margin;
var INV_BoxOriginY = Bottom_Stack-Margin;
var INV_BoxMargin = (INV_BoxSize*2) + 16;
var INV_Stack2 = (INV_BoxSize*2) + 8;

//Inventory Slot 1 ~~~ First Stack / Bottom Stack
draw_rectangle(INV_BoxOriginX-INV_BoxSize,INV_BoxOriginY-INV_BoxSize,INV_BoxOriginX+INV_BoxSize,INV_BoxOriginY+INV_BoxSize,true);
//Inventory Slot 2 
draw_rectangle((INV_BoxOriginX+INV_BoxMargin)-INV_BoxSize,INV_BoxOriginY-INV_BoxSize,(INV_BoxOriginX+INV_BoxMargin)+INV_BoxSize,INV_BoxOriginY+INV_BoxSize,true);
//Inventory Slot 3
draw_rectangle((INV_BoxOriginX+INV_BoxMargin*2)-INV_BoxSize,INV_BoxOriginY-INV_BoxSize,(INV_BoxOriginX+(INV_BoxMargin*2))+INV_BoxSize,INV_BoxOriginY+INV_BoxSize,true);
//Array for Slot Origins
X_InventorySlot[1] = INV_BoxOriginX; Y_InventorySlot[1] = INV_BoxOriginY;
X_InventorySlot[2] = (INV_BoxOriginX+INV_BoxMargin*1); Y_InventorySlot[2] = INV_BoxOriginY;
X_InventorySlot[3] = (INV_BoxOriginX+INV_BoxMargin*2); Y_InventorySlot[3] = INV_BoxOriginY;

//Inventory Slot 4 ~~~ Second Stack / Top Stack
draw_rectangle(INV_BoxOriginX-INV_BoxSize,(INV_BoxOriginY-INV_Stack2)-INV_BoxSize,INV_BoxOriginX+INV_BoxSize,(INV_BoxOriginY-INV_Stack2)+INV_BoxSize,true);
//Inventory Slot 5 
draw_rectangle((INV_BoxOriginX+INV_BoxMargin)-INV_BoxSize,(INV_BoxOriginY-INV_Stack2)-INV_BoxSize,(INV_BoxOriginX+INV_BoxMargin)+INV_BoxSize,(INV_BoxOriginY-INV_Stack2)+INV_BoxSize,true);
//Inventory Slot 6 
draw_rectangle((INV_BoxOriginX+INV_BoxMargin*2)-INV_BoxSize,(INV_BoxOriginY-INV_Stack2)-INV_BoxSize,(INV_BoxOriginX+INV_BoxMargin*2)+INV_BoxSize,(INV_BoxOriginY-INV_Stack2)+INV_BoxSize,true);
//Array for Slot Origins
X_InventorySlot[4] = INV_BoxOriginX; Y_InventorySlot[4] = INV_BoxOriginY-INV_Stack2;
X_InventorySlot[5] = (INV_BoxOriginX+INV_BoxMargin*1); Y_InventorySlot[5] = INV_BoxOriginY-INV_Stack2;
X_InventorySlot[6] = (INV_BoxOriginX+INV_BoxMargin*2); Y_InventorySlot[6] = INV_BoxOriginY-INV_Stack2;

#region draw inventory slot items

for (var i = 0; i < obj_Inventory.inventory_slots_number; i++) {
	
	draw_sprite(spr_items, obj_Inventory.inventory_slots[| i], X_InventorySlot[i+1], Y_InventorySlot[i+1])
}
#endregion

#endregion

#region Inventory Menu
if (Player.ShowInventory)
{
	
var Box_Alpha = 0.66;
draw_set_alpha(Box_Alpha);


//Draw Rectangle background for Inventory
draw_rectangle(inv_window_x0,0+inv_window_y0,inv_window_x1,inv_window_y1,false);

draw_set_halign(fa_left); draw_set_valign(fa_top); draw_set_color(c_white); draw_set_alpha(1);
draw_text(global.max_W*0.5+8,0+Margin,global.Player_Name);
draw_set_halign(fa_right);
draw_text(global.max_W-Margin,0+Margin,"Casts");
draw_text(inv_label_x, inv_label_y, "Inventory");

#region draw inventory grid
for (var i = 0; i < item_grid_w; ++i) {
    
	for (var j = 0; j < item_grid_h; ++j) {
		
		var xx = item_grid_x + j*item_cell_delta
		var yy = item_grid_y + i*item_cell_delta
		var item_id = obj_Inventory.player_inventory[# i*item_grid_w + j, 0]
		var pointer_x = item_grid_x + pointer_j * item_cell_delta
		var pointer_y = item_grid_y + pointer_i * item_cell_delta
		
	    draw_sprite(item_cell_spr, 0, xx, yy)
		draw_sprite_ext(cell_highlight_spr, 0, pointer_x, pointer_y, 1, 1, 0, c_white, 0.3)
		draw_sprite(spr_items, item_id, xx, yy)
	}
}
#endregion

}
#endregion

#region Debug Screen
if (Player.DEBUG_SHOW)
{
	
	draw_set_font(font_Debug);
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	draw_set_color(c_white)
	draw_set_alpha(1);
	
	//Player's Current State
	draw_text(Margin,Bottom_Stack-(72*1),Player.CurrentState);
	//Player's Combat State
	draw_text(Margin,Bottom_Stack-(72*2),Player.CombatState);
	//Player on tile
	draw_text(Margin,Bottom_Stack-(72*3),Player.OnTile);
	
	//Camera Position State
	draw_text(Margin,Bottom_Stack-(72*4),"Camera Position Status:");
	draw_text(Margin*8,Bottom_Stack-(72*4),global.CameraPosition.PositionState);
	
	//FPS
	draw_set_halign(fa_right);
	draw_text(Right_Stack-(Margin*1),Top_Stack*1,fps);
	
	//Slot Tests

	if (Player.key_CastHeld[1]) draw_circle(X_CastSlot[1],Y_CastSlot[1],16,false);
	if (Player.key_CastHeld[2]) draw_circle(X_CastSlot[2],Y_CastSlot[2],16,false);
	if (Player.key_CastHeld[3]) draw_circle(X_CastSlot[3],Y_CastSlot[3],16,false);
	if (Player.key_CastHeld[4]) draw_circle(X_CastSlot[4],Y_CastSlot[4],16,false);
	
	if (Player.key_ItemHeld[1]) draw_circle(X_InventorySlot[1],Y_InventorySlot[1],16,false);
	if (Player.key_ItemHeld[2]) draw_circle(X_InventorySlot[2],Y_InventorySlot[2],16,false);
	if (Player.key_ItemHeld[3]) draw_circle(X_InventorySlot[3],Y_InventorySlot[3],16,false);
	if (Player.key_ItemHeld[4]) draw_circle(X_InventorySlot[4],Y_InventorySlot[4],16,false);
	if (Player.key_ItemHeld[5]) draw_circle(X_InventorySlot[5],Y_InventorySlot[5],16,false);
	if (Player.key_ItemHeld[6]) draw_circle(X_InventorySlot[6],Y_InventorySlot[6],16,false);
	
	//Show loaded items
	draw_text(Right_Stack-(Margin*2),Top_Stack*2,Player.Inventory.LoadItem);
	
}
#endregion