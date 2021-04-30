if(obj_player.ySpeed <= 0)
{
	direction = point_direction(x,y, obj_player.x, obj_player.y + obj_player.ySpeed * 100);
	image_angle = point_direction(x,y, obj_player.x, obj_player.y + obj_player.ySpeed * 100);
} else
	{
		direction = point_direction(x,y, obj_player.x, obj_player.y);
		image_angle = point_direction(x,y, obj_player.x, obj_player.y);	
	}

grav = 0.35;
yspeed = 0;
init_vel = 20;
speed = init_vel;


tick = 1;
oldx = x;
oldy = y;