//cycle through text

if(keyboard_check_pressed(vk_space)){
	ds_list_delete(text_list1,first_pos);
	first_pos = ds_list_size(text_list1) -1;
	first_text = text_list1[|first_pos];
	audio_play_sound(snd_dialogue,1,false);
}

//if text reaches end go to next room
if (first_text == undefined ){
	room_goto(Room1);
}