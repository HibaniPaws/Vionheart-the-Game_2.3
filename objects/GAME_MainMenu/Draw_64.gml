
var OriginX = display_get_width() - 24;
var OriginY = display_get_height() - 12;
var Margin = -80;

#region Menu Drawing

			var ChosenExtraArtDraw = array_get(Extra,ChosenExtraArt);
		draw_sprite(ChosenExtraArtDraw,current_time/100,12,OriginY+13); //Extra Art 
		draw_sprite(VionheartTheGameTitleText,0,OriginX,0); //Title Screen Text
		
			draw_set_color(c_fuchsia);
			draw_set_font(font_MainMenu_sub); //Subtext Font
			draw_set_halign(fa_right);
			draw_set_valign(fa_bottom);

		draw_text_ext(OriginX-34,OriginY*0.41,GetCaption,40,display_get_width());
		
#endregion

	#region Menu Selection
	
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	draw_set_color(c_white); //Default color
	draw_set_font(font_MainMenu); //Font for Main Menu

	switch (MenuScreen)
	{
	
			case "Main Menu":
			{
				
				
				//Selections
				var SelectMax = 4;
				draw_text(OriginX,OriginY+(Margin*0),"Quit");
				draw_text(OriginX,OriginY+(Margin*1),"Options");
				draw_text(OriginX,OriginY+(Margin*2),"Developer");
				draw_text(OriginX,OriginY+(Margin*3),"Continue");
				draw_text(OriginX,OriginY+(Margin*4),"New Game");
				
				//Select color
				draw_set_color(c_black);
				
					switch (MenuSelect)
					{
							case 0: //New Game
							{
							draw_text(OriginX,OriginY+(Margin*4),"New Game");
							
							break;
							}
							
							case 1: //Continue
							{
							draw_text(OriginX,OriginY+(Margin*3),"Continue");
							
							break;
							}
							
							case 2: //DEV
							{
							draw_text(OriginX,OriginY+(Margin*2),"Developer");
							
								if (key_Confirm) room_goto(room_VuleLabs);
							
							break;
							}
							
							case 3: //Options
							{
							draw_text(OriginX,OriginY+(Margin*1),"Options");
							
							break;
							}
							
							case 4: //Quit
							{
							draw_text(OriginX,OriginY+(Margin*0),"Quit");
							
								if (key_Confirm) game_end();
							
							break;
							}
					}
			}
	
	
	
	}
	
	//Selection loop
	if (MenuSelect > SelectMax) MenuSelect = 0;
	if (MenuSelect < 0 ) MenuSelect = SelectMax - 1;
	
	#endregion
	
if (DEVELOPER_MODE)
{
	if (keyboard_check(vk_f3))
	{
	draw_text(OriginX,OriginY,"Test!");
	draw_text(OriginX,OriginY+(Margin*1),"Test Two!");
	draw_text(OriginX,OriginY+(Margin*2),"Test Three!");
	}
}