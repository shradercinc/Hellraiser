

if(pa == true)
{
	targety = obj_player.y;
	targetx = obj_player.x ;
}
if(pa == false)
{
	targety = room_height/2;
	targetx = room_width/2;
}

cam0_ya += (targety - cam0_ya) / cya;
cam0_xa += (targetx - cam0_xa) / cxa;
	
cam0_y = cam0_ya - cam0_h + 64; //sets the current y of the camera
if(cam0_y > room_height - (cam0_h * 2)) //holds the camera above the bottom of the screen
{
	cam0_y = room_height - (cam0_h * 2);
}
if(cam0_y < 0) //holds the camera above the bottom of the screen
{
	cam0_y = 0;
}

cam0_x = cam0_xa - cam0_w;	
if(cam0_x > room_width - (cam0_w * 2)) //holds the camera within the right side of the screen
{
	cam0_x = room_width - (cam0_w * 2);
}
if(cam0_x < 0) //holds the camera within the left side of the screen
{
	cam0_x = 0;
}



if(global.shake == true)
{
	camera_set_view_pos(view_camera[0], cam0_x + irandom_range(-25, 25), cam0_y + irandom_range(-15, 15));
} 
	else 
	{
		camera_set_view_pos(view_camera[0], cam0_x, cam0_y);	
	}



//dead state for now 
if(global.playerlives == 0)
{
	room_goto(dead);	
}



if(global.shake == true){
 alarm[4] = room_speed;	
}

show_debug_message(global.shake);