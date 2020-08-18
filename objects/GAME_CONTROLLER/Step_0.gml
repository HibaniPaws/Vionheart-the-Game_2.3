/// @description

if (global.SetWindowCaption) {window_set_caption(global.SetCaption); global.SetWindowCaption=false;} //When script SetWindowCaption(arg0); is called, change caption into arg0.
if (global.SetCaption == 12) {SetWindowCaption(WindowCaption[13]);}