// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sprcheck(){
	if(sprite_index == spr_platform1){
		collision_with_plat.sprite_index = spr_platform1gone;	
	}
	
	if(sprite_index == spr_platform2){
		collision_with_plat.sprite_index = spr_platform2gone;	
	}
	
	if(sprite_index == spr_platform3){
		collision_with_plat.sprite_index = spr_platform3gone;	
	}
	
	if(sprite_index == spr_platform4){
		collision_with_plat.sprite_index = spr_platform4gone;	
	}
	
}