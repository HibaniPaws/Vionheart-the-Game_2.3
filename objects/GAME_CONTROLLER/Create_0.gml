/// @description	Initialize

global.Timescale = 1;


#region Window Captions
	global.SetWindowCaption = false;
	randomise(); //Randomise game initial seed
						//GMS2 always sets the initial seed to a default one everytime unless randomise(); are called in game initialization.
						//Turn off when necessary.
						// >>X: Why I need this is so that Window Captions are random, if false, initial caption is always the same.

	WindowCaption[0] = "Vionheart: the Game | Not yet a Prototype!"; //Default Caption.
	WindowCaption[1] = "Vionheart: the Game | Now in GitHub!";
	WindowCaption[2] = "Vionheart: the Game | Whew, that took awhile, at least now it's properly imported to GMS2_2.3";
	WindowCaption[3] = "Vionheart: the Game | Support us on Patreon!";
	WindowCaption[4] = "Vionheart: the Game | Window Captions, now with scripts!";
	WindowCaption[5] = "Vionheart: the Game | What's up with Window Captions?";
	WindowCaption[6] = "Vionheart: the Game | Window Captions will probably be important";

	var MaxCaptions = array_length(WindowCaption) - 1; //Check max amount of Window Captions and store it into a variable.
	global.SetCaption = irandom(MaxCaptions); //This variable will be the one used to set the Window Caption.
	window_set_caption(WindowCaption[global.SetCaption]); //Set Initial Window Caption.
#endregion
