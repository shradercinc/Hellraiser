/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_enter)){
	global.P1points = 0;
	global.playerlives = 5;
	audio_stop_all();
	room_goto(title);
}