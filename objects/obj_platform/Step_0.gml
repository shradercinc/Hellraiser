/// @description Insert description here
// You can write your code in this editor

 anim_timer += 1;

if(destroy_in > 15){
	instance_destroy();
	anim_timer = 0;
	destroy_in = 0;
}


if(anim_timer > 0){
	sprite_index = spr_platform1;
	if(bonk == true){
		image_index = 2;
		image_speed = 1;
		destroy_in += 1;
	}
} 

if(anim_timer > 200){
	sprite_index = spr_platform2;
	if(bonk == true){
		image_index = 2;
		image_speed = 1;
		 destroy_in += 1;
	}
}

if(anim_timer > 400){
	sprite_index = spr_platform3;
	if(bonk == true){
		image_index = 2;
		image_speed = 1;
		 destroy_in += 1;
	}
}


if(anim_timer > 600){
	sprite_index = spr_platform4;	
	if(bonk == true){
		image_index = 2;
		image_speed = 1;
		 destroy_in += 1;
	}
}





	
	




