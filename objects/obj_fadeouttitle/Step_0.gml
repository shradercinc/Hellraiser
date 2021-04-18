/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_enter)){
	start = true;
	audio_play_sound(snd_startscreen, 1, false);
}

if(start == true){
	image_alpha += 0.1;	
}

if(image_alpha == 1){
	room_goto(Room1);	
}
