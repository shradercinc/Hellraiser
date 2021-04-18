/// @description Insert description here
// You can write your code in this editor

timer += 1;

if(timer < 50){
	image_alpha = 1;	
}

if(timer > 50){
	image_alpha = 0;	
}

if(timer == 100){
	timer = 0;	
	image_alpha = 1;
}


