/// @description Insert description here
// You can write your code in this editor
if(death == false)
{
	part_particles_create(global.killparts, x, y, global.enemyblood, 35);
	audio_play_sound(snd_ouch, 1, false);
	global.shake = true;
	global.score_state = 1;
	room_speed = 40.5;
	alarm[4] = 0.2*room_speed;
	global.P1points++;
	grav = knockoutgrav;
	death = true;
}