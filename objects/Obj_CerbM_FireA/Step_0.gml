if(vanishing = false)
{
	x = Obj_CerbM.x;
	y = Obj_CerbM.y;
}

image_yscale = -scale / 128;
scale += scale_rate;

y += yspeed;

if(y > room_height + 64)
{
	instance_destroy(self);
}
