//create dialogue list

text_list1 = ds_list_create();
ds_list_add(text_list1,
	"I must get to the bottom of this, but first I need to defeat these monsters.",
	"Its been overrun by terrible monsters!",
	"W-What happened to the City of Dis?!?!",
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