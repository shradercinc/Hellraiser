/// @description Insert description here
// You can write your code in this editor
hpcolorshift = make_color_rgb(global.r, global.g, global.b);


p1score = global.P1points;
p1health = global.playerlives;
p1maxhealth = 7;

//draw HP bar 
	//shadow underneath
	draw_sprite_ext(spr_uihpbar, 1, 35, 55, 5.5, 5.5, 0, c_black, 0.4);
	
draw_rectangle_color(50, 55, 590, 80, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false); //grey underneath
draw_sprite_ext(spr_uihp, 0, healthbar_x , healthbar_y, (p1health/p1maxhealth) * healthbar_width, 1, 0, hpcolorshift, 1); //blue bar
draw_sprite_ext(spr_uihpbar, 1, 30, 50, 5.5, 5.5, 0, c_white, 1); //top visual

//draw kill counter 
	draw_set_font(fnt_verminvibes);
	draw_set_halign(fa_left);
	draw_sprite_ext(spr_uikillcounter, 0, healthbar_x + 15, healthbar_y + 85, scalekill, scalekill, 0, c_black, 0.4);
	draw_sprite_ext(spr_uikillcounter, 0, healthbar_x + 10, healthbar_y + 80, scalekill, scalekill, 0, c_white, 1);
	draw_text_transformed_color(healthbar_x + 65, healthbar_y + 75, "X " + string(p1score), scalekill-3, scalekill-3, 0, c_black, c_black, c_black, c_black, 0.4);
	draw_text_transformed_color(healthbar_x + 60, healthbar_y + 70, "X " + string(p1score), scalekill-3, scalekill-3, 0, c_white, c_white, c_white, c_white, 1);

//shadows underneath skills
	draw_sprite_ext(spr_uidash, 1, uidashslot_x + 10, ui_y +10, 4.5, 4.5, 0, c_black, 0.4);
	draw_sprite_ext(spr_uipound, 1, uigroundpoundslot_x +10, ui_y +10, 4.5, 4.5, 0, c_black, 0.4);
	//draw_sprite_ext(spr_uislash, 1, uislashslot_x +10, ui_y +10, 4.5, 4.5, 0, c_black, 0.4);
	
	draw_sprite_ext(dashcurrentfire, image_index, uidashslot_x +34, ui_y-50, 4.5, 4.5, 0, c_black, 0.4);
	draw_sprite_ext(poundcurrentfire, image_index, uigroundpoundslot_x +34, ui_y-50, 4.5, 4.5, 0, c_black, 0.4);

//draw skill loading flames
draw_sprite_ext(dashcurrentfire, image_index, uidashslot_x +24, ui_y-60, scaleskill_dash, scaleskill_dash, 0, dashcolorshift, 1);
draw_sprite_ext(poundcurrentfire, image_index, uigroundpoundslot_x +24, ui_y-60, scaleskill_pound, scaleskill_pound, 0, poundcolorshift, 1);
//draw_sprite_ext(spr_uifiresm, image_index, uislashslot_x +25, ui_y-60, 4.5, 4.5, 0, c_red, 1);

//draw skills
draw_sprite_ext(spr_uidash, 1, uidashslot_x, ui_y, scaleskill_dash, scaleskill_dash, 0, c_white, 1);
draw_sprite_ext(spr_uipound, 1, uigroundpoundslot_x, ui_y, scaleskill_pound, scaleskill_pound, 0, c_white, 1);
//draw_sprite_ext(spr_uislash, 1, uislashslot_x, ui_y, 4.5, 4.5, 0, c_white, 1);



//key text
draw_set_halign(fa_center);
draw_set_font(fnt_verminvibes);
draw_text_color(uidashslot_x -14, ui_y + 55, "a / d", c_white, c_white, c_white, c_white, 0.7);
draw_text_color(uigroundpoundslot_x -14, ui_y + 55, "S", c_white, c_white, c_white, c_white, 0.6);

