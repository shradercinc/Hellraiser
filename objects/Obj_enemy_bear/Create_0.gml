if(room == Room2)
{
	x = obj_permaplatform.x;
	y = obj_permaplatform.y - 64;
}

active = false;
death = false;

timerSm = 5 * room_speed;
timerS = timerSm;

xSpeed = 0;
ySpeed = 0;

xaccel = 0.98;
drag = 0.95;

