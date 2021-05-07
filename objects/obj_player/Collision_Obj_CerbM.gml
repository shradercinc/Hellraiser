if(drop_active == true and y < other.y)
{
	other.death = true;
	ySpeed = drop_bounce;
	drop_active = false;
	part_particles_create(global.killparts, x, y, global.enemyblood, 35);
	audio_play_sound(snd_ouch, 1, false)
	speedtimer = 0;
	room_speed = 40.5;
	global.shake = true;
	alarm[4] = 0.2*room_speed;
	grav = B_grav;
	global.P1points += 10;
	global.score_state = 1;
} else
	{
		if(other.death = false)
		{
			instance_create_layer(other.x,other.y, "Effects", Obj_Shield)
			if(x > other.x)
			{
				if(xSpeed < 0)
				{
					xSpeed *= -1
				}
			}
			if(x < other.x)
			{
				if(xSpeed > 0)
				{
					xSpeed *= -1
				}
			}
			if(xSpeed = 0)
			{
				xSpeed = -20;
			}
			if(y < other.y)
			{
				ySpeed = jump_vel;
			}
			if(y > other.y)
			{
				ySpeed = 5;
			}
		}	
	}