/// @description Insert description here
// You can write your code in this editor

if(global.playerlives == 0)
{
	gameover = true;	
}
if(global.P1points == 12)
{
	win = true;
}

if(gameover == true or win == true)
{
	image_alpha += 0.1;	
}

if(image_alpha == 1)
{
	if(gameover == true)
	{
		room_goto(dead);	
	}
	if(win == true)
	{
		room_goto(Room2);
	}
	
}
