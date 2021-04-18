/// @description Insert description here
// You can write your code in this editor


draw_self();


draw_set_font(fnt_score);
draw_set_halign(fa_center);

draw_text_color(room_width/2, 600, "FINAL SCORE:" + string(global.P1points), c_red, c_red, c_orange, c_orange, 1);