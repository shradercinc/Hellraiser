/// @description Insert description here
// You can write your code in this editor
var spawn_x = random_range(100,room_width-100);
var spawn_y = random_range(500,room_height-500);


instance_create_layer(spawn_x, spawn_y, "Instances", obj_heart);