/// @description Insert description here
// You can write your code in this editor
text_list1 = ds_list_create();
ds_list_add(text_list1,
	"Nothing like a good smash on the head will do it!",
	"I can't stop now, Cerberus is somewhere in this cave.",
	"I finally defeated all those monsters...",
	);
	
//positioning 

first_pos = ds_list_size(text_list1) -1;
first_text = text_list1[|first_pos];
ds_list_delete(text_list1,first_pos);


//typewriter stuff
i = 0; //start position
//currentline = ds_list_find_value(text_list1, first_pos);
typewriter_out = first_text; //string to be drawn

alarm[0] = 0.05*room_speed; //sets alarm