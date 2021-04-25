if(ySpeed > 0 and y > other.y and knockout == false)
{
	grav = B_grav;
	ySpeed = jump_vel;   //if collision, jump
	audio_play_sound(snd_cloud, 1, false);
	other.image_speed = 1;
	other.bonk = true;
	other.destroy_in = .5 * room_speed; //destroy inst
}


