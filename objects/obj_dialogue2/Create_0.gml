/// @description Insert description here
// You can write your code in this editor
text_list1 = ds_list_create();
ds_list_add(text_list1,
	"I'm coming for your heads next after I'm finished with the rest of these monsters!",
	"Only someone with great power like you is capable of this chaos.",
	"Cerberus! I knew it was you behind all of this.",
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