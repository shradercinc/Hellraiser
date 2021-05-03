/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_verminvibes);

draw_set_halign(fa_center);
draw_text_ext_transformed_color(room_width/2, 200, "HOW TO PLAY:", 0,1100, 3.5, 3.5, 0, c_white, c_white, c_grey, c_grey, 1);
draw_text_ext_transformed_color(room_width/2, 600, "Press BACKSPACE to go back", 0, 1100, 2, 2, 0, c_ltgray, c_ltgray, c_dkgrey, c_dkgrey, 1);


draw_set_halign(fa_left);
draw_text_ext_transformed(250, 300, "-[A] and [D] keys to move left and right.\n-Double tap [A] or [D] to dash-kick left or right. \n-[SPACE] to slash at enemies.\n-[S] to ground-pound.", 50, 100000, 1.5, 1.5, 0);
