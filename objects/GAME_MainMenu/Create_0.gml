MenuScreen = "Main Menu";
MenuSelect = 0;

	#region Extra Menu Art
	
	Extra[0] = VTG_Menu_Red1;
	Extra[1] = VTG_Menu_Red2;
	Extra[2] = VTG_Menu_Red3;
	Extra[3] = Red_Fox_Guy;
	
		ExtraArt_Max = array_length(Extra)-1;
		ChosenExtraArt = irandom_range(0,ExtraArt_Max);
		
	
	#endregion
	GetCaption = array_get(GAME_CONTROLLER.WindowCaption,global.SetCaption); //Display window Caption