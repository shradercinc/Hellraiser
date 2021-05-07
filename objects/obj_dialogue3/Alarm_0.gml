/// @description Insert description here
// You can write your code in this editor
if ( i < string_length(first_text)){
	typewriter_out += string_char_at(first_text,i);
	i += 1;
	audio_play_sound(snd_dialogue, 1, false);
	alarm[0] = 0.05*room_speed;
} 