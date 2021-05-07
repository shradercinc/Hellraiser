/// @description Insert description here
// You can write your code in this editor
text_list2 = ds_list_create();
ds_list_add(text_list2,
	"I'm coming for your heads next after I'm finished with the rest of these monsters!",
	"Only someone with great power like you is capable of this chaos.",
	"Cerberus! I knew it was you behind all of this.",
	);
	
//positioning 

second_pos = ds_list_size(text_list2) -1;
second_text = text_list2[|second_pos];
ds_list_delete(text_list2,second_pos);

/*typewriter stuff
typewriter_out = first_text; //string to be drawn
i = 1; //start position
alarm[0] = 1; //sets alarm
*//// @description Insert description here
// You can write your code in this editor
