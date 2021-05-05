if(death ==  false)
{
	//					ANIMATION 
	
	//idle bobbing animation, made smooth by the duel lerp value
	if(abs(targety - y) < 25)
	{
		y = lerp(y, targety, 0.1);
	}
	if(abs(targety - y) > 25)
	{
		y = lerp(y, targety, 0.05);
	}

	//continued bobbing anim, determining the distance they have to bob and whether they reach the top of their bob
	if(accending == true and abs(targety - y) < 5)
	{
		targety += 75;
		accending = false;
		idle = true;
	}
	if(accending == false and abs(targety - y) < 5)
	{
		targety -= 75;
		accending = true;
	}
}