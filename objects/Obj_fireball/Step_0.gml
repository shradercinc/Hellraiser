yspeed -= grav;

y -= yspeed;


if(tick <= 0)
{
	image_angle = point_direction(oldx,oldy,x,y);
}

oldx = x;
oldy = y;
tick--