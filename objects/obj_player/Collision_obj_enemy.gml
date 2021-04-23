
//	if(ySpeed > 0 && collision_with_enemy != noone && grav != launch_grav && knockout = false && invultimer > 0)
//	{





//		knockout = true;





//enemy
//if(spawnvel > 0 && collision_with_player == true){


//	global.P1points++;
//	ySpeed = jump_vel;
//	other.grav = other.knockoutgrav;


//	grav = pound_grav;
//	instance_create_layer(x, y, "Instances", obj_die);
//	audio_play_sound(snd_ouch, 1, false);
//	knockout = true;
//	image_index = 4;
//	other.spawnvel = other.jump_vel;

//	y += 10;

//getting knocked out
if(knockout == false and invultimer < 0 and other.spawnvel > 0 and y < other.y and other.knockout == false)
{
	grav = pound_grav;
	instance_create_layer(x, y, "Instances", obj_die);
	audio_play_sound(snd_ouch, 1, false);
	knockout = true;
	image_index = 4;
	other.spawnvel = other.jump_vel;
} else if (knockout == false and y > other.y and ySpeed > 0)
	{
		instance_create_layer(x, y, "Instances", obj_die)
		other.knockout = true;
		other.grav = other.knockoutgrav;
		ySpeed = jump_vel;
	}