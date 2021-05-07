/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
 
 

if(global.cerbskilled >= totalcerbs){
	audio_play_sound(snd_cerbdeath, 1, false);
	room_speed = 10;
	cerbtimer ++
	instance_create_layer(0, 0, "Instances", obj_fadeoutcerb)
	if(cerbtimer > 50){
		audio_stop_sound(snd_cerbdeath);
	room_goto_next();
	}
}