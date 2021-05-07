/// @description Insert description here
// You can write your code in this editor


draw_self();


draw_set_font(fnt_dialogue);
draw_set_halign(fa_left);

draw_text_transformed_color(x+100, y +130, "YOU DEFEATED THE WILD BEAST CERBERUS\nAND SAVED THE CITY!" , 1, 1, 0, c_white, c_white, c_grey, c_grey, 1);
draw_text_transformed_color(x +285, 410, "FINAL SCORE: " + string(global.P1points), 2.1, 2.1, 0,  c_white, c_white, c_grey, c_grey, 1);
draw_text_transformed_color(x +285, 620, "PRESS ENTER TO RETURN\nTO MAIN MENU.", 1, 1, 0,  c_white, c_white, c_grey, c_grey, 1);