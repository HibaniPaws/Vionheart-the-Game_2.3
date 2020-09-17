// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function OutOfBounds(){

		var RestartTimer = room_speed*6;
		ChangeMusic(noone,0);
		CurrentState = "Out of Bounds";
	
	if (alarm[0] <= 0) {alarm_set(0,RestartTimer);}

}