if(knockout == false and invultimer < 0 and kick_active == false)
{
	instance_destroy(other);
	grav = pound_grav;
	instance_create_layer(x, y, "Instances", obj_die);
	audio_play_sound(snd_ouch, 1, false);
	knockout = true;
	image_index = 4;
}