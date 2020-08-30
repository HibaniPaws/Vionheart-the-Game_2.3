/// @description Draw HUD on screen

display_set_gui_size(global.max_W,global.max_H);
var Margin=40;
var Top_Stack=72;
var Bottom_Stack=(global.max_H);
var Right_Stack=(global.max_W);

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

#endregion

#region Inventory Menu
if (Player.ShowInventory)
{
	
var Box_Alpha = 0.66;
draw_set_alpha(Box_Alpha);


//Draw Rectangle background for Inventory
draw_rectangle(global.max_W*0.5,0+Margin,global.max_W-Margin,global.max_H-Margin,false);

draw_set_halign(fa_left); draw_set_valign(fa_top); draw_set_color(c_white); draw_set_alpha(1);
draw_text(global.max_W*0.5+8,0+Margin,global.Player_Name);
draw_set_halign(fa_right);
draw_text(global.max_W-Margin,0+Margin,"Casts");
draw_text(global.max_W-Margin,global.max_H*0.50 + Margin,"Inventory");

}
#endregion

#region Debug Screen

if (DEVELOPER_MODE) //Show if Build is in DEVELOPER mode
{
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	draw_set_font(font_Text);
	draw_set_color(c_white);
	
	draw_text(global.max_W,global.max_H,"DEVELOPER BUILD");
	draw_text(global.max_W,global.max_H - 36,"Combat Camera Test"); //Text above Developer Build
}

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
	draw_text(Margin*8.25,Bottom_Stack-(72*4),global.CameraPosition.PositionState);
	
	//Show currently playing music.
	
	var PlayingMusic = audio_get_name(global.Music); //Get current music name
	
	draw_text(Margin,Bottom_Stack-(72*5),"Playing Music:");
	draw_text(Margin*5.25,Bottom_Stack-(72*5),PlayingMusic);
	
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
	//draw_text(Right_Stack-(Margin*2),Top_Stack*2,Player.Inventory.LoadItem); >>X: This is redundant now with the new inventory/item list system you're making, Alex!
	

	
	
}
	
if (Player.DEBUG_MENU) //Not used
{
	
	
	
}
#endregion