global.P1points = 0;
global.P2points = 0;
global.playerlives = 5;

cam_vel_y = 0;
CamVelAcc = 0.05;
CamVelDrag = 0.8;

text_x = 20;
text_y = 20;

max_plat = 20;
randomize();

/*
for(var i = 0; i < max_plat; i++){
	p1xSpawn = random_range(0, room_width - sprite_width);
	p1ySpawn = room_height - 1;
	
	p2xSpawn = random_range(0, room_width - sprite_width);
	p2ySpawn = room_height - 1;
	
	if(i == max_plat - 1){
	instance_create_layer(p1xSpawn, p1ySpawn - 122, "Instances", obj_player1);	
	instance_create_layer(p2xSpawn, p2ySpawn - 122, "Instances", obj_player2);
	obj_player1.ySpeed = obj_player1.jump_vel*1.1;
	obj_player2.ySpeed = obj_player2.jump_vel*1.1;
	}
}
*/
camera_set_view_pos(view_camera[0], room_width/2, room_height/2);

alarm[0] = 1 * room_speed;
alarm[1] = 2 * room_speed;
alarm[2] = 1.1*room_speed;