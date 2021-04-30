/// @description Insert description here
// You can write 

depth = -20;

knockout = false; 
kick_active = false;

jump_vel = -5.8;

drop_active = false;
drop_bounce = jump_vel * 1.2;

grav = 0.1;
launch_grav = 0.55;
pound_grav = 0.8; //grav that affects the player when they're knocked out
B_grav = 0.19; //base grav that is consistent through most of the game
init_grav = 0.1; //grav when you respawn

global.player_active = true;

x_accel = 0.92;

//horizontal drag and its variations
drag = 0.95;


deathtimer = 0;
invultimerM = 2 * room_speed;
invultimer = invultimerM;

xSpeed = 0;
ySpeed = 0;

image_speed = 0;

//kick variables
kick_accel = 20;
timer_dl = 0;
timer_dr = 0;
timer_d_m = 0.085 * room_speed;

charge_max = 2.5*room_speed;
charge = charge_max;









