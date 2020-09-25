var _collision = place_meeting(x,y,Player);
var BGMusic = global.BGMusic;

if (_collision) && (global.CameraPosition.PositionState == "Room")
{
	if (global.CameraPosition.RoomTo < 2)
	{
		if (BGMusic != RoomMusic)
		{
		global.BGMusic = RoomMusic;
			if (BGMusic == RoomMusic)
			{
			ChangeMusic(RoomMusic,Rate);
			}
		}
	}

}