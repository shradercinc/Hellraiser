/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_score);

p1score = global.P1points;
p1health = global.playerlives;
p1maxhealth = 50;

//draw HP bar 
	//shadow underneath
	draw_sprite_ext(spr_uihpbar, 1, 40, 60, 5.5, 5.5, 0, c_black, 0.4);
	
draw_rectangle_color(50, 55, 590, 80, c_gray, c_gray, c_gray, c_gray, false); //grey underneath
draw_sprite_stretched(spr_uihp, 0, healthbar_x , healthbar_y, (p1health/p1maxhealth) * healthbar_width, healthbar_height); //blue bar
draw_sprite_ext(spr_uihpbar, 1, 30, 50, 5.5, 5.5, 0, c_white, 1); //top visual


//draw skills
	//shadows underneath
	draw_sprite_ext(spr_uidash, 1, uidashslot_x + 10, ui_y +10, 4.5, 4.5, 0, c_black, 0.4);
	draw_sprite_ext(spr_uipound, 1, uigroundpoundslot_x +10, ui_y +10, 4.5, 4.5, 0, c_black, 0.4);
	draw_sprite_ext(spr_uislash, 1, uislashslot_x +10, ui_y +10, 4.5, 4.5, 0, c_black, 0.4);

draw_sprite_ext(spr_uidash, 1, uidashslot_x, ui_y, 4.5, 4.5, 0, c_white, 1);
draw_sprite_ext(spr_uipound, 1, uigroundpoundslot_x, ui_y, 4.5, 4.5, 0, c_white, 1);
draw_sprite_ext(spr_uislash, 1, uislashslot_x, ui_y, 4.5, 4.5, 0, c_white, 1);

