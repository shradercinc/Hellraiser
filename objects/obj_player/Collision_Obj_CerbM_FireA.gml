if(knockout == false and invultimer < 0)
{
	grav = pound_grav;
	part_particles_create(global.deathparts, x, y, global.blood, 10);
	audio_play_sound(snd_ouch, 1, false);
	knockout = true;
	global.shake = true;
	alarm[4] = 0.1*room_speed;
	alarm[0] = room_speed;
	image_index = 4;
}