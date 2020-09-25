if (instance_exists(PLAYER))
{

	if (global.CameraPosition.PositionState != "Room")
	{
		if (global.BGMusic != LevelMusic)
		{
		global.BGMusic = LevelMusic;
		ChangeMusic(LevelMusic,MusicRate);
		}
	}
}
