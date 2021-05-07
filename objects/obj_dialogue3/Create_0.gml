/// @description Insert description here
// You can write your code in this editor
text_list3 = ds_list_create();
ds_list_add(text_list3,
	"Nothing like a good smash on the head will do it!",
	"I can't stop now, Cerberus is somewhere in this cave.",
	"I finally defeated all those monsters...",
	);
	
//positioning 

third_pos = ds_list_size(text_list3) -1;
third_text = text_list3[|third_pos];
ds_list_delete(text_list3,third_pos);