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
	obj_player.ySpeed = obj_player.jump_vel*1.1;
	obj_player.xSpeed = p1spawnspeed;
	obj_player.knockout = false;
	if(cerb == false)
	{
		obj_player.x = p1xSpawn;
	}
	if(cerb == true)
	{
		if(Obj_CerbM.timera < 1.5 or Obj_CerbM.timera_an > 0 + (1.5 * room_speed))
		{
			obj_player.x = choose(room_width / 4, room_width / 4 * 3);
		} else
			{
				obj_player.x = room_width / 2;
			}
	}
	
