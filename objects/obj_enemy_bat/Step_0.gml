if(death ==  false)
{
	//					ANIMATION 
	
	//idle bobbing animation, made smooth by the duel lerp value
	if(abs(targety - y) < 25)
	{
		y = lerp(y, targety, 0.2);
	}
	if(abs(targety - y) > 25)
	{
		y = lerp(y, targety, 0.1);
	}

	//continued bobbing anim, determining the distance they have to bob and whether they reach the top of their bob
	if(accending == true and abs(targety - y) < 5)
	{
		targety += 55;
		accending = false;
		idle = true;
	}
	if(accending == false and abs(targety - y) < 5)
	{
		targety -= 55;
		accending = true;
	}
	
	//							FIRE CONTROL
	
	firet--
	if(firet < 0 and abs(obj_player.x - x) < 512 and obj_player.knockout == false)
	{
		instance_create_layer(x,y,"Instances",Obj_fireball)
		firet = firet_max;
	}
	
	
}



