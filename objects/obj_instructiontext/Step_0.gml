/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space)){
	room_goto(instructions);
	audio_play_sound(snd_slash, 1, false);
	audio_stop_sound(snd_titleambient);
}