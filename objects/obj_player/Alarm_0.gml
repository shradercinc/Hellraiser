/// @description respawn

randomize();
	p1xSpawn = room_width/2;
	p1ySpawn = room_height - 1;
	p1spawnspeed = random_range(-10, 10);
	invultimer = invultimerM;
	obj_manager.pa = true;
	charge = charge_max;
	poundcharge = poundcharge_max;
	
	obj_player.deathtimer =  0;
	audio_play_sound(snd_woosh, 1, false);
	obj_player.y = p1ySpawn;
	obj_player.x = p1xSpawn;
	obj_player.ySpeed = obj_player.jump_vel*1.1;
	obj_player.xSpeed = p1spawnspeed;
	obj_player.knockout = false;

	
