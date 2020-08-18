/// @description

// Inherit the parent event
event_inherited();

VURS_script(STRENGTH);

#region Tile Recognition

switch(OnTile)
{
	case "Grass": MovementSpeed = 1.5; break;
	case "Dirt": MovementSpeed = 1; break;
	case "Water": MovementSpeed = 0.25; CurrentState = "In Water"; break;
}

#endregion

#region Animation

	mask_index = PASSIVENEUTRAL;



		#region Moving Animations
		if (CurrentState == "Moving")
		{
			if (MOVING_LEFT) || (MOVING_RIGHT) {sprite_index=WALKNEUTRAL;}
			if (MOVING_UP) {sprite_index=WALKUP;}
			if (MOVING_DOWN) {sprite_index=WALKDOWN;}
		}
		#endregion
	
		#region Idle Animations
		if (CurrentState == "Idle")
		{
			#region Passive idle Animation
			if (CombatState == "Passive")
			{
				switch (LastDirection)
				{
					case "Left": sprite_index=PASSIVENEUTRAL; break;
					case "Right": sprite_index=PASSIVENEUTRAL; break;
					case "Up": sprite_index=PASSIVEUP; break;
					case "Down": sprite_index=PASSIVEDOWN; break;
				}
			}
			#endregion
			#region Combat idle Animations
			if (CombatState == "In Combat")
			{
							switch (LastDirection)
				{
					case "Left": sprite_index=COMBATNEUTRAL; break;
					case "Right": sprite_index=COMBATNEUTRAL; break;
					case "Up": sprite_index=COMBATUP; break;
					case "Down": sprite_index=COMBATDOWN; break;
				}
			}
			#endregion
		}
		#endregion
		
		if (CurrentState == "Inventory Mode")
		{ sprite_index = CHECK_INVENTORY; }
	
		#region In Water animation
		if (CurrentState == "In Water")
		{
			sprite_index = IN_WATER;
		}
		#endregion

#endregion
