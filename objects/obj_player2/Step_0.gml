

if(knockout != true){
	controller(ord("A"), ord("D"));
}

//directional anims
if(knockout == true){
	sprite_index = spr_player2DIE;
} else if(xSpeed > 0){
	sprite_index =  spr_player2RIGHT;	
}if(xSpeed < 0){
	sprite_index = spr_player2LEFT;	
}



var new_y = y + ySpeed;
for( var i = 0; i < abs(ySpeed); i++){
	
	new_y = y + sign(ySpeed);
	var collision_with_p1 = instance_place(x, y, obj_player1);
	var collision_with_plat = instance_place(x, y, obj_platform);
	
		if(ySpeed > 0 && collision_with_plat != noone && grav < launch_grav){   //platform collisions
		ySpeed = jump_vel;   //if collision, jump
		audio_play_sound(snd_cloud, 1, false);
		collision_with_plat.image_speed = 1;  //anim
		collision_with_plat.bonk = true;
		collision_with_plat.destroy_in = .5 * room_speed; //destroy inst
		y = new_y; 
		break;
		} 
	
	if(ySpeed > 0 && collision_with_p1 != noone && grav < launch_grav){
		instance_create_layer(x, y, "Instances", obj_die);
		audio_play_sound(snd_ouch, 1, false);
		ySpeed = jump_vel;
		global.P2points++;
		obj_player1.knockout = true; 
		//collision_with_p1.sprite_index = spr_player1DIE;
		collision_with_p1.y = collision_with_p1.y + 10;
		collision_with_p1.grav = launch_grav;
		y = new_y;
		break;
		} 
			
	y += ySpeed;
	
	}
	

if(y > room_height + 100){
	grav = 0.1;
	deathtimer += 1;
}

if(collision_line(0, room_height, room_width, room_height, obj_player1, false, true) == true){
	global.P2points--;
	instance_create_layer(x, room_height, "Instances", obj_die);
	audio_play_sound(snd_bonk, 1, false);
}

	

event_inherited();

