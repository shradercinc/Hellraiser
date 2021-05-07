randomise();
death = false;
active = false;
x = room_width/2;
y = room_height + 256;


targety = room_height / 4 + 75;
accending = true;
ylerp = 0.08;

targetx = room_width / 2;
hosbob = false;
bobleft = true;
xlerp = 0.04;
yspeed = 0;


//appearance timer (slightly ahead of left and right cerb)
timerw_m = 3.2 * room_speed;
timerw = timerw_m;

//attack timer
timera_m = irandom_range(4,7.5) * room_speed;  
timera = timera_m

timera_an_m = 3 * room_speed;
timera_an = 0;

