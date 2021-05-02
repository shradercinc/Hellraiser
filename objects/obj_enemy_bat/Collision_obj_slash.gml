if(death == false)
{
	part_particles_create(global.killparts, x, y, global.enemyblood, 10);
	audio_play_sound(snd_ouch, 1, false);
	global.shake = true;
	alarm[4] = 0.1*room_speed;
	global.P1points++;
	death = true;
}