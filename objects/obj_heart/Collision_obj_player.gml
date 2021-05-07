/// @description Insert description here
// You can write your code in this editor

if(global.playerlives < 7 and !obj_player.knockout){
	global.playerlives ++
	audio_play_sound(snd_pickup, 1, false);
	global.r -= global.g*0.35; //change hp bar color
	global.g += global.g*0.35; //""
	obj_heartpickupmanager.alarm[0]=room_speed * 10 // respawn timer
	instance_destroy();
}