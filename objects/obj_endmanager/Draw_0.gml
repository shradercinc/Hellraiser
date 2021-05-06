/// @description Insert description here
// You can write your code in this editor


draw_self();


draw_set_font(fnt_verminvibes);
draw_set_halign(fa_left);

draw_text_transformed_color(x, y + 300, "Press ENTER to restart." , 3, 3, 0, c_white, c_white, c_grey, c_grey, 1);
draw_text_transformed_color(x, 600, "FINAL SCORE: " + string(global.P1points), 5, 5, 0, c_fuchsia, c_fuchsia, c_purple, c_purple, 1);