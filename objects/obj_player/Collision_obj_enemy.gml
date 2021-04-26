if (knockout == false and other.knockout == false and kick_active = true)
{
	instance_create_layer(x, y, "Instances", obj_die)
	audio_play_sound(snd_ouch, 1, false)
	other.knockout = true;
	other.grav = other.knockoutgrav;
	global.P1points++
} else if (knockout == false and y < other.y + 32 and ySpeed > 0 and other.knockout == false)
	{
		instance_create_layer(x, y, "Instances", obj_die)
		audio_play_sound(snd_ouch, 1, false)
		other.knockout = true;
		other.grav = other.knockoutgrav;
		ySpeed = jump_vel;
		global.P1points++
	} else if(knockout == false and invultimer < 0 and other.knockout == false)
		{
			grav = pound_grav;
			instance_create_layer(x, y, "Instances", obj_die);
			audio_play_sound(snd_ouch, 1, false);
			knockout = true;
			image_index = 4;
			other.spawnvel = other.jump_vel;
		}

