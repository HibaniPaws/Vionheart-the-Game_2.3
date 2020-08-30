/// @description CameraTo Step Event

#region Position State machine

switch (Player.CombatState)
{
	case "Passive": PositionState = "Passive"; break;	
	case "In Combat": PositionState = "Combat"; break;
	
}

#endregion


//Update Position with PositionState
var PositionX = x;
var PositionY = y;

switch(PositionState)
{
	case "Passive":
		{
			PositionX = Player.x; PositionY = Player.y; //Default / Failsafe
		if (Player.CurrentState == "Moving") {PositionX = Player.x + (Player.MoveX*48); PositionY = Player.y + (Player.MoveY*48);}
		if (Player.CurrentState == "Idle") {PositionX += (Player.x - x) / 20; PositionY += (Player.y - y) / 20;}
		if (Player.CurrentState == "Inventory Mode") {PositionX = Player.x + 64; PositionY = Player.y;}
		break;
		}
	case "Combat": 
	{
		
		var NearestEnemy = instance_nearest(Player.x,Player.y,ENEMY);
		
		PositionX = (Player.x + NearestEnemy.x) / 2;
		PositionY = (Player.y + NearestEnemy.y) / 2;
		
	break;
	}
}

x = PositionX;
y = PositionY;

//Show camera position when in developer mode.
if (Player.DEBUG_SHOW) {image_alpha=0.75;}
else {image_alpha=0;}