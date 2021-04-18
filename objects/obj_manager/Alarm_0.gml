/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i < max_plat; i++){
	
	var xSpawn = random_range(0, room_width - 150);
	var ySpawn = random_range(room_height/4, room_height - 120);
	
	if(instance_number(obj_platform) < max_plat){
		var new_platform = instance_create_layer(xSpawn, ySpawn, "Instances", obj_platform);
	
		with(new_platform){
		var attempts = 0;
			while(collision_rectangle(x, y, x+150, y+48, obj_platform, false, true) != noone && attempts < 9999){
				x = random_range(0, room_width - sprite_width);
				attempts += 1;
			}
		}
	}
}

alarm[0] = 2 * room_speed;