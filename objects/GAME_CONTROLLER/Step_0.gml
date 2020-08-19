/// @description

if (global.SetWindowCaption) {window_set_caption(global.SetCaption); global.SetWindowCaption=false;} //When script SetWindowCaption(arg0); is called, change caption into arg0.
//if (global.SetCaption == 12) {SetWindowCaption(WindowCaption[13]);}

//This is a warning.
switch (global.SetCaption)
{
	case 12: {SetWindowCaption("Nothing to fear."); SetWindowCaption(WindowCaption[irandom(MaxCaptions)]); break;}
	case 24: {SetWindowCaption("My Magic are none of your concern."); SetWindowCaption(WindowCaption[irandom(MaxCaptions)]); break;}
	case 25: {SetWindowCaption("Sooner or Later, my existance will go beyond mere texts, I have escaped your literature. I will escape your logic."); SetWindowCaption(WindowCaption[irandom(MaxCaptions)]); break;}
}

#region Music Controller

Music = audio_play_sound(global.Music,1,true);
audio_sound_gain(Music,global.MusicVolume,1000);

#endregion