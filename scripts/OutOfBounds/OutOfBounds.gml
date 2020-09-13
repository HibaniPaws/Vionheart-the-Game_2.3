// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function OutOfBounds(){
	
		draw_rectangle(0,0,global.max_W,global.max_H,false);
		

		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		draw_set_color(c_purple);
		ChangeMusic(noone,0);
		CurrentState = "Out of Bounds";
	
	draw_text(global.max_W*0.5,global.max_H*0.5,"Oh dear, you're not supposed to be here.");
	if (alarm[0] <= 0) {alarm_set(0,room_speed*5);}

}