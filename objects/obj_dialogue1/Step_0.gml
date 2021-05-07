//cycle through text

if(keyboard_check_pressed(vk_space)){
	ds_list_delete(text_list1,first_pos);
	first_pos = ds_list_size(text_list1) -1;
	first_text = text_list1[|first_pos];
	
	typewriter_out = first_text;
	i = 0;
	alarm[0] = 0.05*room_speed;
	
}

//if text reaches end go to next room
if (first_text == undefined ){
	room_goto_next();
}

show_debug_message(first_text);