/// @description


#region Input
if (HasControl)
{
	//Movement Input
	key_MoveLeft = keyboard_check(vk_left);
	key_MoveRight = keyboard_check(vk_right);
	key_MoveUp = keyboard_check(vk_up);
	key_MoveDown = keyboard_check(vk_down);
	
	//Interact
	key_Interact = keyboard_check_pressed(vk_space);
	key_Inventory = keyboard_check_pressed(vk_tab);
	
	//Casts
	key_Cast[1] = keyboard_check_pressed(ord("Q"));
	key_CastHeld[1] = keyboard_check(ord("Q"));
	key_Cast[2] = keyboard_check_pressed(ord("W"));
	key_CastHeld[2] = keyboard_check(ord("W"));
	key_Cast[3] = keyboard_check_pressed(ord("E"));
	key_CastHeld[3] = keyboard_check(ord("E"));
	key_Cast[4] = keyboard_check_pressed(ord("R"));
	key_CastHeld[4] = keyboard_check(ord("R"));
	
	//Equipment
	key_Item[1] = keyboard_check_pressed(ord("Z"));
	key_ItemHeld[1] = keyboard_check(ord("Z"));
	key_Item[2] = keyboard_check_pressed(ord("X"));
	key_ItemHeld[2] = keyboard_check(ord("X"));
	key_Item[3] = keyboard_check_pressed(ord("C"));
	key_ItemHeld[3] = keyboard_check(ord("C"));
	key_Item[4] = keyboard_check_pressed(ord("A"));
	key_ItemHeld[4] = keyboard_check(ord("A"));
	key_Item[5] = keyboard_check_pressed(ord("S"));
	key_ItemHeld[5] = keyboard_check(ord("S"));
	key_Item[6] = keyboard_check_pressed(ord("D"));
	key_ItemHeld[6] = keyboard_check(ord("D"));
}
#endregion

#region Movement
	
	//Cannot move when inventory is shown.
	if (!ShowInventory)
	{
	var DirectionX = 0;
	var DirectionY = 0;
	
	if (key_MoveLeft) {DirectionX = -1;}
	if (key_MoveRight) {DirectionX = 1;}
	if (key_MoveUp) {DirectionY = -1;}
	if (key_MoveDown) {DirectionY = 1;}

	MoveX = (DirectionX * MovementSpeed) * global.Timescale;
	MoveY = (DirectionY * MovementSpeed) * global.Timescale;

	x=x+MoveX;
	y=y+MoveY;
	}

#endregion

#region Calculation

VURS_script(STRENGTH);

#endregion

#region Inventory

if (key_Inventory)&&(CombatState=="Passive")
{
	if (CurrentState == "Idle") || (CurrentState == "Moving") || (CurrentState == "Inventory Mode") {ShowInventory = !ShowInventory;}
}

if (ShowInventory) && (CombatState == "In Combat") {ShowInventory = false;}

Inventory_script();

#endregion

#region Tile recognition

TileRegister(); //Returns "OnTile" Variable

switch (OnTile)
{
	case "Grass": MovementSpeed = 1; break;
	case "Dirt": MovementSpeed = 0.5; break;
	case "Water": MovementSpeed = 0.25; CurrentState = "In Water"; break;
}

#endregion

#region States
	
	//Check movement
	if (MoveX == 0) || (MoveY == 0)
	{CurrentState = "Idle";}
	
	if (MoveX != 0) || (MoveY != 0)
	{CurrentState = "Moving";}
	
	//Check last direction
	if (MoveX != 0) || (MoveY != 0)
	{
		if (MoveX < 0) {LastDirection = "Left";}
		if (MoveX > 0) {LastDirection = "Right";}
		if (MoveY < 0) {LastDirection = "Up";}
		if (MoveY > 0) {LastDirection = "Down";}
	}
	
	//Check if in Inventory Mode
	if (ShowInventory)
	{CurrentState = "Inventory Mode";}
	
	//Check if in combat or passive
	if (CombatAlert) {CombatState = "In Combat";}
	else if (!CombatAlert) {CombatState = "Passive";}

#endregion

#region Animation

	image_alpha = 1;
	image_speed = global.Timescale;

	if (MOVING_LEFT) image_xscale = -1;
	if (MOVING_RIGHT) image_xscale = 1;

#endregion


#region DEVELOPER MODE STUFF
if (DEVELOPER_MODE)
{
	
	
	
	if (keyboard_check_pressed(vk_f1)) {CombatAlert=!CombatAlert};

	if (keyboard_check_pressed(vk_f3)) {DEBUG_SHOW = !DEBUG_SHOW};


	if (keyboard_check_pressed(vk_backspace)) {game_restart()};
}
#endregion