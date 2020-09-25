/// @description CameraTo Step Event

#region Position State machine

	switch (Player.CombatState)
{
	case "Passive": PositionState = "Passive"; break;	
	case "In Combat": PositionState = "Combat"; break;
	
}
	
		//Room Collision
		//Room = collision_point(Player.x,Player.y,obj_RoomCamera,false,true);
		var Rooms = ds_list_create();
		RoomTo = collision_point_list(Player.x,Player.y,obj_RoomCamera,false,true,Rooms,true);
		
		Room = Rooms[| 0];
		if (RoomTo > 0) {PositionState = "Room";}
		
		//Room inside Room


		
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
		if (Player.CurrentState == "Idle") //{PositionX += (Player.x - x) / 20; PositionY += (Player.y - y) / 20;} //Old Idle Camera State
																{PositionX = x; PositionY = y;}
		if (Player.CurrentState == "Inventory Mode") {PositionX = Player.x + 40; PositionY = Player.y;}
		break;
		}
	case "Combat": 
		{
		
		var NearestEnemy = instance_nearest(Player.x,Player.y,ENEMY);
		
		PositionX = (Player.x + NearestEnemy.x) / 2;
		PositionY = (Player.y + NearestEnemy.y) / 2;
		
	break;
	}
	case "Room":
		{
			
			PositionX = Room.x; PositionY = Room.y;
			
			if (Player.CombatState == "In Combat")
			{
				var NearestEnemy = instance_nearest(Player.x,Player.y,ENEMY);
				if (!place_meeting(NearestEnemy.x,NearestEnemy.y,Room))
				{
				PositionState = "World";
				PositionX = (Player.x + NearestEnemy.x) / 2; PositionY = (Player.y + NearestEnemy.y) / 2;
				}
			}
			if (Player.CurrentState == "Inventory Mode") 
			{
			PositionState = "World";
			PositionX = Player.x + 40; PositionY = Player.y;
			}

			
			
			
		break;
		}
}

x = PositionX;
y = PositionY;

//Show camera position when in developer mode.
if (global.DEBUG_SHOW) {image_alpha=0.50;}
else {image_alpha=0;}