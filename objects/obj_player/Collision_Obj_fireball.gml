if(knockout == false and invultimer < 0 and kick_active == false)
{
	instance_destroy(other);
	grav = pound_grav;
	part_particles_create(global.deathparts, x, y, global.blood, 10);
	audio_play_sound(snd_ouch, 1, false);
	knockout = true;
	image_index = 4;
}