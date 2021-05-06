
spawnvel += grav;
if(spawnvel > 4 and knockout = false)
{
	spawnvel = 4;
}

if(spawnvel > 0)
{
	image_yscale = 1;	
} 
if(spawnvel < 0)
{
	image_yscale = -1;	
}

if(y > room_height)
{
	instance_destroy();	
}


for(var i = 0; i < abs(spawnvel); i++)
{
	
	if(!knockout)
	{
	
		var collision_with_slash = place_meeting(x, y, obj_slash);
//		var collision_with_player = place_meeting(x, y, obj_player);

		if(collision_with_slash == true){
		knockout = true;
		part_particles_create(global.killparts, x, y, global.enemyblood, 35);
		audio_play_sound(snd_ouch, 1, false);
		global.shake = true;
		global.score_state = 1;
		alarm[4] = 0.1*room_speed;
		
		room_speed = 40.5;
		
		global.P1points++;
		grav = knockoutgrav;
	break;
	}

//if(spawnvel > 0 && collision_with_player == true){
//	spawnvel = jump_vel;
//	obj_player.grav = obj_player.launch_grav;
//	obj_player.y = obj_player.y + 10;
//	instance_create_layer(x, y, "Instances", obj_die);
//	audio_play_sound(snd_ouch, 1, false);
//	obj_player.knockout = true;
//	obj_player.image_index = 4;
//	break;
//	}
}
	y += spawnvel;
}

