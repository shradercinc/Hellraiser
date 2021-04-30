if(ySpeed > 0 and y > other.y and knockout == false)
{
	grav = B_grav;
	if(drop_active == false)
	{
		ySpeed = jump_vel;   //if collision, jump
	}
	if(drop_active == true)
	{
		ySpeed = drop_bounce;
	}
	audio_play_sound(snd_cloud, 1, false);
	other.image_speed = 1;
	other.bonk = true;
	other.destroy_in = .5 * room_speed; //destroy inst
}


