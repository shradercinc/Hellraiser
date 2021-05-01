if (knockout == false and other.knockout == false and kick_active = true)
{
	part_particles_create(global.killparts, x, y, global.enemyblood, 10);
	audio_play_sound(snd_ouch, 1, false)
	other.knockout = true;
	other.grav = other.knockoutgrav;
	global.P1points++
} else if (knockout == false and y < other.y + 32 and ySpeed > 0 and other.knockout == false)
	{
		part_particles_create(global.killparts, x, y, global.enemyblood, 10);
		audio_play_sound(snd_ouch, 1, false)
		other.knockout = true;
		other.grav = other.knockoutgrav;
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
	} else if(knockout == false and invultimer < 0 and other.knockout == false and y > other.y + 32)
		{
			grav = pound_grav;
			part_particles_create(global.deathparts, x, y, global.blood, 10);
			audio_play_sound(snd_ouch, 1, false);
			knockout = true;
			image_index = 4;
			other.spawnvel = other.jump_vel;
		}

