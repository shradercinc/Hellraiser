if(death ==  false)
{
	if(abs(targety - y) < 25)
	{
		y = lerp(y, targety, 0.2);
	}
	if(abs(targety - y) > 25)
	{
		y = lerp(y, targety, 0.1);
	}

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
	
}