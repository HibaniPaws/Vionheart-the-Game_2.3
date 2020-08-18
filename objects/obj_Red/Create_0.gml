/// @description

// Inherit the parent event
event_inherited();

global.Player_Name = "Red";

#region Animation and Rendering stuff

COMBATDOWN = VTG_Player_Red_C_Down;
COMBATNEUTRAL = VTG_Player_Red_C_Neutral;
COMBATUP = VTG_Player_Red_C_Up;

USEDOWN = VTG_Player_Red_Use_Down;
USENEUTRAL = VTG_Player_Red_Use_Neutral;
USEUP = VTG_Player_Red_Use_Up;

PASSIVEDOWN = VTG_Player_Red_P_Down;
PASSIVENEUTRAL = VTG_Player_Red_P_Neutral;
PASSIVEUP = VTG_Player_Red_P_Up;

WALKDOWN = VTG_Player_Red_Walk_Down;
WALKNEUTRAL = VTG_Player_Red_Walk_Neutral;
WALKUP = VTG_Player_Red_Walk_Up;

CHECK_INVENTORY = VTG_Player_Red_P_Neutral;

IN_WATER = VTG_Player_Red_Water;

#endregion

BaseStats(4,3,2);

MovementSpeed = 1.5;