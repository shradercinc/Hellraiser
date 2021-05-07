draw_set_halign(fa_left);

// draws text box 

draw_rectangle_color(0, 700,1500, 900, c_white, c_white, c_white, c_white, false); //outline
draw_rectangle_color(10,710, 1490, 890, c_purple, c_purple, c_black, c_black, false);	//actual box

// draw text
draw_set_font(fnt_dialogue);
draw_text(100,765,first_text);
