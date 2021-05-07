event_inherited();

if(active == true and death == false)
{
	if(obj_player.x < x)
	{
		timera--;
	}
	timera_an--;
	if(timera_an > 0)
	{
		image_index = 1;
	} else
		{
			image_index = 0;
		}
	
	if(timera < 0)
	{
		timera_m = random_range(9,11) * room_speed;
		timera = timera_m;
		timera_an = timera_an_m;
		instance_create_layer(x,y,"Effects", Obj_Cerb_Fire);
	}
	
}