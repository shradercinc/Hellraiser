/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_font(fnt_verminvibes);

draw_text_ext_transformed_color(x +10, y+10, "DEFEAT " + string(enemyrequirement) + " ENEMIES.", 20, 100, 5, 5, 0, c_black, c_black, c_black, c_black, 0.4);
draw_text_ext_transformed_color(x, y, "DEFEAT " + string(enemyrequirement) + " ENEMIES.", 20, 100, 5, 5, 0, c_white, c_white, c_ltgray, c_ltgray, 1);

