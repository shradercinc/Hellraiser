/// @description Insert description here
// You can write your code in this editor

if(global.playerlives == 0){
	start = true;
}

if(start == true){
	image_alpha += 0.1;	
}

if(image_alpha == 1){
	room_goto(dead);	
}
