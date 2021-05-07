event_inherited();
randomise();

if(active == true and death == false)
{
	timera--;
	timera_an--;
	if(timera_an > 0)
	{
		image_index = 1;
		global.shake = true;
	} else
		{
			image_index = 0;
			global.shake = false;
		}
	
	if(timera < 0)
	{
		timera_m = random_range(9,11) * room_speed;
		timera = timera_m;
		timera_an = timera_an_m;
		instance_create_layer(x,y,"Instances", Obj_CerbM_FireA);
	}
	
}
