/// @description enemy spawn
// You can write your code in this editor

randomize();
	xSpawn = random_range(0, room_width - sprite_width);
	ySpawn = room_height - 100 ;
	

	instance_create_layer(xSpawn, ySpawn, "Instances", obj_enemy);	
	
alarm[2] = 0.7*room_speed;