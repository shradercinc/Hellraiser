/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_space)){
	ds_list_delete(text_list3,third_pos);
	third_pos = ds_list_size(text_list3) -1;
	third_text = text_list3[|third_pos];
}

//if text reaches end go to next room
if (third_text == undefined ){
	room_goto(Room2);
}