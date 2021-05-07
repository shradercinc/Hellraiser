if(other.death == false and knockout == false and invultimer < 0)
{
	if(drop_active == true and y < other.y) // pound collision
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
		global.cerbskilled ++
	} else
		{
			if(kick_active == true) //kicking collision
			{
				audio_play_sound(snd_wall, 1, false);
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
					x += -20;
				}
				if(y < other.y)
				{
					ySpeed = jump_vel;
				}
				if(y > other.y)
				{
					ySpeed = 1;
				}
			} else //regular collision
				{
					grav = pound_grav;
					part_particles_create(global.deathparts, x, y, global.blood, 10);
					audio_play_sound(snd_ouch, 1, false);
					knockout = true;
					global.shake = true;
					alarm[4] = 0.2*room_speed;
					alarm[0] = room_speed;
					image_index = 4;
				}
				
		}
		
}