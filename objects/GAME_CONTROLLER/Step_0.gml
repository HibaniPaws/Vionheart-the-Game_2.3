/// @description

if (global.SetWindowCaption) {window_set_caption(global.SetCaption); global.SetWindowCaption=false;} //When script SetWindowCaption(arg0); is called, change caption into arg0.

//This is a warning.
switch (global.SetCaption)
{
	case 12: {SetWindowCaption("Nothing to fear."); SetWindowCaption(WindowCaption[irandom(MaxCaptions)]); break;}
	case 24: {SetWindowCaption("My Magic are none of your concern."); SetWindowCaption(WindowCaption[irandom(MaxCaptions)]); break;}
	case 25: {SetWindowCaption("Sooner or Later, my existance will go beyond mere texts, I have escaped your literature. I will escape your logic."); SetWindowCaption(WindowCaption[irandom(MaxCaptions)]); break;}
}

#region Music Engine

// Music Engine is now on a script.
// PLAYER objects can set the music.
// However, music-related variables are stored globally.

#endregion

with (all) {depth = -y;} //Sort Depth


#region Developer Mode
if (DEVELOPER_MODE)
{
	
	if (keyboard_check_pressed(vk_backspace)) {game_restart()};
	
}
#endregion