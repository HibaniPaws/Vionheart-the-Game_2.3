
var OriginX = display_get_width() - 24;
var OriginY = display_get_height() - 12;
var Margin = -80;

var SelectMax; // Max selection

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


		switch (MenuScreen) //Selection Screens
		{
	
			case "Main Menu": // Main Menu screen
			{
				
				
					//Selections
					SelectMax = 4;
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
							
									if (key_Confirm) MenuScreen = "Options Menu";
							
								break;
								}
							
								case 4: //Quit
								{
								draw_text(OriginX,OriginY+(Margin*0),"Quit");
							
									if (key_Confirm) game_end();
							
								break;
								}
						}
					
			break;		
			}
			
				case "Options Menu": //Options screen
												 //Main > Options
				{
				
						//Selections
						SelectMax = 4;
						draw_text(OriginX,OriginY+(Margin*0),"Back");
						draw_text(OriginX,OriginY+(Margin*1),"Delete Data");
						draw_text(OriginX,OriginY+(Margin*2),"Credits");
						draw_text(OriginX,OriginY+(Margin*3),"Audio");
						draw_text(OriginX,OriginY+(Margin*4),"Resolution");
			
							//Select color
							draw_set_color(c_black);
					
							switch (MenuSelect)
							{
								case 4: //Back
								{ draw_text(OriginX,OriginY+(Margin*0),"Back");
									if (key_Confirm) MenuScreen = "Main Menu";
									break;
								}
								case 3: //Delete Data
								{ draw_text(OriginX,OriginY+(Margin*1),"Delete Data");
							
								break;
								}
								case 2: //Credits
								{ draw_text(OriginX,OriginY+(Margin*2),"Credits");
									  if (key_Confirm)
									  {
											CreditsSequence = !CreditsSequence;
											MenuSelect = 2;
											TIME = 0;
									  }
								break;
								}
								case 1: //Audio
								{ draw_text(OriginX,OriginY+(Margin*3),"Audio");
						
								break;
								}
								case 0: //Resolution
								{draw_text(OriginX,OriginY+(Margin*4),"Resolution");
						
								break;
								}
							}
					break;
			}
	
	
		}
		
	
	//Selection loop
	if (MenuSelect > SelectMax) MenuSelect = 0;
	if (MenuSelect < 0 ) MenuSelect = SelectMax;
	
	//Reset MenuSelect variable on confirm
	if (key_Confirm) MenuSelect = 0;
	
	//Credits
	
	function PlayCredits(Text){
	

	
		if (CreditsSequence)
		{
			var Display_H = display_get_height();
			var Display_W = display_get_width();
			var TextSpeed = 2;
			TIME+=TextSpeed;
	
			draw_set_color(c_black);
			draw_set_alpha(0.9);
			draw_rectangle(0,0,Display_W,Display_H,false);


			var PositionX = display_get_width() * 0.2;
				var _PositionY = display_get_height();
			var PositionY = _PositionY - TIME;
	
				draw_set_color(c_white);
					draw_set_font(CreditsFont);
				draw_set_alpha(1);
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
				
				draw_text_ext(PositionX,PositionY-128,Text,80,global.max_W);
				
					//Credit end hint
					draw_set_halign(fa_right);
					draw_set_valign(fa_bottom);
					draw_set_font(font_Text);
					draw_text(global.max_W,global.max_H,"Press SPACE to end")
		}
	}

	
	
	
	 if (CreditsSequence)
	 {
		 PlayCredits(Credits);
		MenuSelect = 2;
	 }
	 
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