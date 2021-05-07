/// @description Insert description here
if(drop_active == true and y > other.y)
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
}