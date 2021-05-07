event_inherited();
randomise();

if(active == true and death == false)
{
	timera--;
	timera_an--;
	if(timera_an > 0)
	{
		global.shake = true;
		image_index = 1;
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
		audio_play_sound(Snd_Windup,10,false);
		instance_create_layer(x,y,"Effects", Obj_CerbM_FireA);
	}
	
}
