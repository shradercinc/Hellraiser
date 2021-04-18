/// @description Insert description here
// You can write your code in this editor
 destroy_in += -1;
 anim_timer += 1;

if(destroy_in == 0){
	instance_destroy();
	anim_timer = 0;
}


if(anim_timer > 0){
	sprite_index = spr_platform1;
	if(bonk == true){
		instance_create_layer(x, y, "Instances", obj_cloudgone);
	}
} 

if(anim_timer > 200){
	sprite_index = spr_platform2;
	if(bonk == true){
		instance_create_layer(x, y,"Instances", obj_cloudgone1);
	}
}

if(anim_timer > 400){
	sprite_index = spr_platform3;
	if(bonk == true){
		instance_create_layer(x, y,"Instances", obj_cloudgone2);
	}
}


if(anim_timer > 600){
	sprite_index = spr_platform4;	
	if(bonk == true){
		instance_create_layer(x, y,"Instances", obj_cloudgone3);
	}
}




	
	
	
	




