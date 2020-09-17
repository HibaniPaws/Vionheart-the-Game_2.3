/// @description

// Inherit the parent event
event_inherited();

draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_set_font(font_EntityName);
draw_text(x,bbox_top,"DUMMY");

shader_set(shd_invert);
draw_self();

shader_reset();