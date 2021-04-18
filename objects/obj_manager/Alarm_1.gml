/// @description first player spawn
// You can write your code in this editor

randomize();
	xSpawn = room_width /2;
	ySpawn = room_height - 1;
	instance_create_layer(xSpawn, ySpawn, "Instances", obj_player);

	audio_play_sound(snd_woosh, 1, false);
	obj_player.ySpeed = obj_player.jump_vel*1.1;
	obj_player.knockout = false;