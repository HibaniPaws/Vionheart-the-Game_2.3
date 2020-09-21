MenuScreen = "Main Menu";
MenuSelect = 0;
CreditsSequence = false;
TIME = 0;

	#region Extra Menu Art
	
	Extra[0] = VTG_Menu_Red1;
	Extra[1] = VTG_Menu_Red2;
	Extra[2] = VTG_Menu_Red3;
	Extra[3] = Red_Fox_Guy;
	
		ExtraArt_Max = array_length(Extra)-1;
		ChosenExtraArt = irandom_range(0,ExtraArt_Max);
		
	
	#endregion
	GetCaption = array_get(GAME_CONTROLLER.WindowCaption,global.SetCaption); //Display window Caption

#region Credits

CreditsFont = font_Credits;

	Test =
@"
This is a test
because I learned something new
and I wanna try it out!

if it works as expected:
~just like this

it will be a scientific breakthrough!


for me.

-The smart Sign Painter
";

	Credits =
@"
Programming
Xyril Placina
MoonAlex

Music
Tem's Human
CalculatinGenius

Special Thanks
Darkia
Zenogias
RedPsycho
";

#endregion