if(Obj_Manager_lv2.pa == true)
{
	active = true;
}
if(death == false and active = true)
{
	timerw--;


	//					ANIMATION 
	if(timerw < 0)
	{
		//idle bobbing animation, made smooth by the duel lerp value
		if(abs(targety - y) < 23)
		{
			y = lerp(y, targety, 0.08);
		}
		if(abs(targety - y) > 23)
		{
			y = lerp(y, targety, 0.04);
		}

		//continued bobbing anim, determining the distance they have to bob and whether they reach the top of their bob
		if(accending == true and abs(targety - y) < 5)
		{
			targety += 75;
			accending = false;
			idle = true;
			hosbob = true;
		}
		if(accending == false and abs(targety - y) < 5)
			{
			targety -= 75;
			accending = true;
		}
		
//		horizontal bobbing	
		if(hosbob == true)
		{
			if(abs(targetx - x) < 15)
			{
				x = lerp(x, targetx, 0.04);
			}
			if(abs(targetx - x) > 15)
			{
				x = lerp(x, targetx, 0.02);
			}
			
			if(bobleft == true and abs(targetx - x) < 5)
			{
				targetx += 55;
				bobleft = false;
			}
			if(bobleft == false and abs(targetx - x) < 5)
			{
				targetx -= 55;
				bobleft = true;
			}
		}
	}
}