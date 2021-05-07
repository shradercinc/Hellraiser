/// @description Insert description here
// You can write your code in this editor
//cycle through text

if(keyboard_check_pressed(vk_space)){
	ds_list_delete(text_list2,second_pos);
	second_pos = ds_list_size(text_list2) -1;
	second_text = text_list2[|second_pos];
}

//if text reaches end go to next room
if (second_text == undefined ){
	room_goto(Room3);
}