if (knockout == false and y < other.y and ySpeed > 0 and other.death == false)
{
	part_particles_create(global.killparts, x, y, global.enemyblood, 10);
	audio_play_sound(snd_ouch, 1, false)
	
	speedtimer = 0;
	room_speed = 40.5;
	
	other.death = true;
	global.shake = true;
	alarm[4] = 0.1*room_speed;
	grav = B_grav
	if(drop_active == false)
	{
		ySpeed = jump_vel;   //if collision, jump
	}
	if(drop_active == true)
	{
		ySpeed = drop_bounce;
		drop_active = false;
	}
	global.P1points++
	global.score_state = 1;
	
} else if(knockout == false and other.death == false and kick_active = true)
	{
		part_particles_create(global.killparts, x, y, global.enemyblood, 10);
		audio_play_sound(snd_ouch, 1, false)
		
		speedtimer = 0;
		room_speed = 40.5;
		
		other.death = true;
		global.shake = true;
		alarm[4] = 0.1*room_speed;
		global.P1points++
		global.score_state = 1;
	}