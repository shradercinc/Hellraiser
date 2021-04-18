/// @description Insert description here
// You can write your code in this editor
cam_y_pos = camera_get_view_y(view_camera[0]);
cam_x_pos = camera_get_view_x(view_camera[0]);

var numplayers = instance_number(obj_player);

var camy = 0;
var camx = 0
for (i=0; i<numplayers; i++){
	var p = instance_find(obj_player,i);
	if (!p.knockout){
		camy += p.y - 0.5*camera_get_view_height(view_camera[0]);
		camx += p.x - 0.5*camera_get_view_height(view_camera[0]); 
	}
	else {
		camy += room_height - camera_get_view_height(view_camera[0]);
	}
}

cam_y_pos = lerp(cam_y_pos,camy,0.4);
cam_x_pos = lerp(cam_x_pos, camx, 0.4);

cam_y = camera_get_view_y(view_camera[0]);
cam_vel_y += CamVelAcc * (cam_y_pos-cam_y);
cam_vel_y *= CamVelDrag;
cam_y += cam_vel_y;

cam_x = camx;

cam_y = max(cam_y, 0);
cam_y = min(cam_y, room_height - camera_get_view_height(view_camera[0]));

cam_x = max(cam_x, 0);
cam_x = min(cam_x, room_width - camera_get_view_width(view_camera[0]));

camera_set_view_pos(view_camera[0], cam_x, cam_y);

