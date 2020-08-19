/// @description	Initialize

global.Timescale = 1;


#region Window Captions
	global.SetWindowCaption = false;
	randomise(); //Randomise game initial seed
						//GMS2 always sets the initial seed to a default one everytime unless randomise(); are called in game initialization.
						//Turn off when necessary.
						// >>X: Why I need this is so that Window Captions are random, if false, initial caption is always the same.

	Window_Captions(); //All captions are located in this script.

	MaxCaptions = array_length(WindowCaption) - 1; //Check max amount of Window Captions and store it into a variable.
	global.SetCaption = irandom(MaxCaptions); //This variable will be the one used to set the Window Caption.
	window_set_caption(WindowCaption[global.SetCaption]); //Set Initial Window Caption.
#endregion

#region Music

global.Music = noone;
global.MusicVolume = 1;

#endregion