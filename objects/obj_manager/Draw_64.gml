/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_score);

p1score = global.P1points;
p1health = global.playerlives;


draw_set_halign(fa_left);
draw_text_color(text_x , text_y, "LIVES:" + string(p1health), c_red, c_red, c_orange, c_orange, 1);
draw_text_color(text_x, text_y + 60, "POINTS:" + string(p1score), c_red, c_red, c_orange, c_orange, 1);

