
//global.playerlives = 5;

global.player_active = false;
global.shake = false;






pa = false;
//checks the camera height and width and stores them
cam0_h = camera_get_view_height(view_camera[0]) / 2;
cam0_w = camera_get_view_width(view_camera[0]) / 2;

cya = 15; //camera y acceleration
cam0_ya = room_height - cam0_h * 2; //y approaching
cam0_y = room_height - cam0_h * 2; //y actual

cxa = 15; //camera x acceleration
cam0_xa = room_width/2; //x approaching
cam0_x = room_width/2; //x actual

targetx = room_width/2;
targety = room_height/2;

max_plat = 10;
randomize();

alarm[0] = 1 * room_speed;
alarm[1] = 2 * room_speed;
alarm[2] = 1.1 * room_speed;
alarm[3] = 1.1 * room_speed;

Batno = 0;

