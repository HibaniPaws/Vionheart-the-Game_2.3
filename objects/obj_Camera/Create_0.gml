/// @description Camera Create Event

//Set camera
Camera = view_camera[0];
camera_set_view_size(Camera,3,3);
WindowSize = 2; //Variable for changing resolutions.
Fullscreen = false; //Enable Fullscreen.
DEBUG_SHOW = false; //Show Debug stuff when in Developer mode.

view_visible[Camera]=true;
view_enabled=true;

view_wport[Camera] = global.max_W;
view_hport[Camera] = global.max_H;

//Aspect Ratio
RatioW=16;
RatioH=9;







