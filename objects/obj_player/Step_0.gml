
invultimer--; //timer that affects how soon you can die when you respawn

if( (x+xSpeed) < 0 || (x+xSpeed) > room_width){
	xSpeed = -xSpeed;
	audio_play_sound(snd_wall,1,false);
}

ySpeed += grav; 
if(ySpeed > 5)
{
	ySpeed = 5;
}

x += xSpeed;
if(kick_active = false)
{
	xSpeed *= drag;
}

if(knockout != true){
	controller(ord("A"), ord("D"));
	
	
	charge++
	timer_dl--
	timer_dr--
	//right dash
	if(keyboard_check_released(ord("D")) and kick_active == false and charge > charge_max)
	{
		timer_dr = timer_d_m;
	}
	if(keyboard_check_pressed(ord("D")) and kick_active == false and charge > charge_max and timer_dr > 0)
	{
		audio_play_sound(snd_kick, 1, false);
		image_index = 6;
		xSpeed = xSpeed + kick_accel;
		kick_active = true;
		ySpeed = 0;
		grav = 0;
		charge = 0;
		alarm[1] = 0.15*room_speed;
		alarm[2] = 0.25*room_speed;
	}	
	//left dash
	if(keyboard_check_released(ord("A")) and kick_active == false and charge > charge_max)
	{
		timer_dl = timer_d_m;
	}
	if(keyboard_check_pressed(ord("A")) and kick_active == false and charge > charge_max and timer_dl > 0)
	{
		audio_play_sound(snd_kick, 1, false);
		image_index = 6;
		xSpeed = xSpeed - kick_accel;
		kick_active = true;
		ySpeed = 0;
		grav = 0;
		charge = 0;
		alarm[1] = 0.15*room_speed;
		alarm[2] = 0.25*room_speed;
	}
	
	
	
//	if(keyboard_check_pressed(ord("E")) && kick_active == false)
//	{
//		audio_play_sound(snd_kick, 1, false);
//		if(xSpeed >= 0)
//		{
//			image_index = 6;
//			xSpeed = xSpeed + kick_accel;
//		}
//		if(xSpeed < 0)
//		{
//			image_index = 6;
//			xSpeed = xSpeed - kick_accel;		
//		}
//		kick_active = true;
//		ySpeed = 0;
//		grav = 0;
//		alarm[1] = 0.15*room_speed;
//		alarm[2] = 0.25*room_speed;
//	}
	
	
	if(keyboard_check_pressed(ord("S")) && drop_active == false){
		audio_play_sound(snd_drop, 1, false);
		xSpeed = 0;
		ySpeed = 3;
		grav = pound_grav;
		drop_active = true;
		alarm[3] = 0.8*room_speed;
		}
	
	if(keyboard_check_pressed(vk_space)){
		image_index = 4;
		audio_play_sound(snd_slash, 1, false);
		instance_create_depth(obj_player.x, obj_player.y, -y, obj_slash);
	}
	
}

//directional anims
if(knockout == true){
	image_index = 3;	
} else if(xSpeed > 0){
	image_xscale =  -1;	
} else if(xSpeed < 0){
	image_xscale = 1;	
} 


//collisions
//var new_y = y + ySpeed;
for(var i = 0; i < abs(ySpeed); i++)
{
		y += ySpeed;
//	new_y = y + sign(ySpeed);
//	var collision_with_plat = instance_place(x, y, obj_platform);
//	var collision_with_enemy = instance_place(x, y, obj_enemy);
//	if(ySpeed > 0 && collision_with_plat != noone && grav != launch_grav ) //platform collisions
//	{  
//		grav = B_grav;
//		ySpeed = jump_vel;   //if collision, jump
//		audio_play_sound(snd_cloud, 1, false);
//		collision_with_plat.image_speed = 1;
//		collision_with_plat.bonk = true;
//		collision_with_plat.destroy_in = .5 * room_speed; //destroy inst
//		y = new_y; 
//		break;
//	} 	
//	if(ySpeed > 0 && collision_with_enemy != noone && grav != launch_grav && knockout = false && invultimer > 0)
//	{
//		grav = B_grav;
//		instance_create_layer(x, y, "Instances", obj_die);
//		ySpeed = jump_vel;
//		audio_play_sound(snd_ouch, 1, false);
//		global.P1points++;
//		knockout = true;
//		collision_with_enemy.y = collision_with_enemy.y + 10;
//		collision_with_enemy.grav = collision_with_enemy.knockoutgrav;
//		y = new_y;
//		break;
//	}
}


//hits bottom of room
if((y > room_height + 100) && (deathtimer == 0)){
	obj_manager.pa = false;
	grav = init_grav;
	deathtimer += 1;
	obj_UImanager.r += obj_UImanager.g*0.35; //change hp bar color
	obj_UImanager.g -= obj_UImanager.g*0.35; //""
	global.playerlives -= 1;
	alarm[0] = 2*room_speed
	knockout = true;
	instance_create_layer(x, room_height, "Instances", obj_die);
	audio_play_sound(snd_bonk, 1, false);
}


//sprites
if(knockout == true){
	image_index = 3;
} else
if(keyboard_check(vk_space)){
	image_index = 4;
} else
if(kick_active == true){
	image_index = 5;	
} else 
if( ySpeed < 0){ //if going up, up spr
	image_index = 0;
} else 
if( ySpeed > 0){ //going down, down spr
	image_index = 2;
} else
if( ySpeed == 0){ //if at top of jump, inbetween frame
	image_index = 1;
}

//dash charge flames
if(charge < charge_max/2){  //first half of charge
	obj_UImanager.dashcurrentfire = spr_uifiresm;
	obj_UImanager.dashcolorshift = c_red;
}
else if(charge < charge_max){ //second half of charge
	obj_UImanager.dashcurrentfire = spr_uifiremid;
	obj_UImanager.dashcolorshift = c_yellow;
} 
else if (charge > charge_max){ //fully charged
	obj_UImanager.dashcurrentfire = spr_uifirelg;	
	obj_UImanager.dashcolorshift = c_aqua;
} 
/*
else if(){ //activated
	obj_UImanager.dashcurrentfire = spr_uifireextinguished;
	obj_UImanager.dashcolorshift = c_blue;
}
*/