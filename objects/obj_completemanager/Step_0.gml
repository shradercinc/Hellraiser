/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter)){
	global.P1points = 0;
	room_speed = 60;
	global.playerlives = 7;
	audio_stop_all();
	room_goto(title);
}