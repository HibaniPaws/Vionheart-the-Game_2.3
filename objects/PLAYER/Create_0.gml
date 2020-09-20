/// @description

HasControl = true;
global.Player_Name = "Camaer";

#region	Create Camera Object

	global.Camera = instance_create_layer(x,y,HIDDEN,obj_Camera);
	with (global.Camera){
		
			Player=other.id;
		
			//Create Camera To object
			global.CameraPosition = instance_create_layer(x,y,HIDDEN,obj_CameraTo);
			with (global.CameraPosition){Player=other.Player;};
		}

#endregion
#region Create Game Hud Object

	HUD = instance_create_layer(x,y,HIDDEN,GAME_HUD);
	with (HUD) {Player = other.id;}

#endregion
#region Create Inventory Object

	Inventory = instance_create_layer(x,y,HIDDEN,obj_Inventory);
	with (Inventory)
	{
		Player = other.id;
	}

#endregion

#region	Base variables/stats

BaseStats(1,1,1);

MovementSpeed = 1;

LastDirection = false;
CurrentState = "NO_STATE";
OnTile = "PROTECTED";
CombatAlert = false;
CombatState = false;
ShowInventory = false;
#endregion
#region Default variables if Missing.

	#region Default Animation Variables
	COMBATDOWN = spr_AnimationIsMissing;
	COMBATNEUTRAL = spr_AnimationIsMissing;
	COMBATUP = spr_AnimationIsMissing;

	USEDOWN = spr_AnimationIsMissing;
	USENEUTRAL = spr_AnimationIsMissing;
	USEUP = spr_AnimationIsMissing;

	PASSIVEDOWN = spr_AnimationIsMissing;
	PASSIVENEUTRAL = spr_AnimationIsMissing;
	PASSIVEUP = spr_AnimationIsMissing;

	WALKDOWN = spr_AnimationIsMissing;
	WALKNEUTRAL = spr_AnimationIsMissing;
	WALKUP = spr_AnimationIsMissing;
	#endregion


#endregion

#region Developer Stuff

DEBUG_SHOW = false;
DEBUG_MENU = false;

#endregion