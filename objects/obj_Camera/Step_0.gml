/// @description Camera Step Event

//Current camera zoom
Current_Width = camera_get_view_width(Camera);
Current_Height = camera_get_view_height(Camera);

#region Camera Status

var SizeMultiplier = 17.5;
var CameraSpeed = 10; //Lower the number = Faster


switch (Player.CombatState)
{
	case "In Combat": SizeMultiplier = SizeMultiplier + 10; CameraSpeed += 5; break;

}
#endregion

#region Window Sizes

switch (WindowSize)
{
	case 1: WindowSizeW=900; WindowSizeH=600; break;
	case 2: WindowSizeW=1280; WindowSizeH=720; break;
	case 3: WindowSizeW=1600; WindowSizeH=900; break;
	case 4: WindowSize = 1; break;
}

#endregion

#region Fullscreen and Window Size change on input

if (keyboard_check_pressed(vk_f4)) {WindowSize++;}
if (keyboard_check_pressed(vk_f11)) {Fullscreen = !Fullscreen;}
if (Fullscreen) {window_set_fullscreen(true)}
else {window_set_fullscreen(false);}

#endregion

//Resize and Update Camera and Window
var ToCameraSizeW = RatioW*SizeMultiplier;
var ToCameraSizeH = RatioH*SizeMultiplier;

var FromCameraSizeW = Approach(Current_Width,ToCameraSizeW,RatioW*0.5);
var FromCameraSizeH = Approach(Current_Height,ToCameraSizeH,RatioH*0.5);

window_set_size(WindowSizeW,WindowSizeH);
camera_set_view_size(Camera,FromCameraSizeW,FromCameraSizeH);

//Update camera position to player.

x += (global.CameraPosition.x - x) / clamp(CameraSpeed,1,100);
y += (global.CameraPosition.y - y) / clamp(CameraSpeed,1,100);

//Center camera
var Xview_half = camera_get_view_width(Camera) * 0.5;
var Yview_half = camera_get_view_height(Camera) * 0.5;
camera_set_view_pos(Camera,x-Xview_half,y-Yview_half);

//Show camera position when in developer mode.
if (Player.DEBUG_SHOW) {image_alpha=0.75;}
else {image_alpha=0;}
