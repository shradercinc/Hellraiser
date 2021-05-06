/// @description Insert description here
// You can write your code in this editor
 
 //skill activation particles
 global.skillparts = part_system_create();
 global.sparks = part_type_create();

 var c_cyan = make_color_rgb(0, 255, 255);
 
 part_type_shape(global.sparks, pt_shape_pixel);
	part_type_size(global.sparks, 9, 19, -0.2, 5);
	part_type_speed(global.sparks, 5, 10, 0.60, 0);
	part_type_direction(global.sparks, 330, 390, 0, 0);
	part_type_color2(global.sparks, c_silver, c_cyan);
	part_type_life(global.sparks, 10, 40);
	
	
//death particles
global.deathparts = part_system_create();
global.blood = part_type_create();

 part_type_shape(global.blood, pt_shape_pixel);
	part_type_size(global.blood, 10, 20, -0.1, 1);
	part_type_speed(global.blood, 8, 10, 0.1, 1);
	part_type_direction(global.blood, 0, 360, 0, 0);
	part_type_color2(global.blood, c_maroon, c_orange);
	part_type_life(global.blood, 20, 35);


//enemy kill parts
global.killparts = part_system_create();
global.enemyblood = part_type_create();
 part_type_shape(global.enemyblood, pt_shape_pixel);
	part_type_size(global.enemyblood, 10, 20, -0.1, 1);
	part_type_speed(global.enemyblood, 5, 8, 0.20, 1);
	part_type_direction(global.enemyblood, 0, 360, 0, 2);
	part_type_color2(global.enemyblood, c_blue, c_fuchsia);
	part_type_life(global.enemyblood, 10, 25);

//platform part
global.plat = part_type_create();
global.platparts = part_system_create();
 part_type_shape(global.plat, pt_shape_pixel);
	part_type_size(global.plat, 7, 10, -0.4, 1);
	part_type_speed(global.plat, 5, 8, 0.50, 1);
	part_type_direction(global.plat, 10, 170, 0, 0);
	part_type_color2(global.plat, c_red, c_orange);
	part_type_life(global.plat, 10, 15);

//heart
global.heartpart = part_system_create();
global.sparkle = part_type_create();
  part_type_shape(global.plat, pt_shape_pixel);
	part_type_size(global.plat, 7, 10, -0.4, 1);
	part_type_speed(global.plat, 5, 8, 0.50, 1);
	part_type_direction(global.plat, 10, 170, 0, 0);
	part_type_color2(global.plat, c_red, c_orange);
	part_type_life(global.plat, 20, 25);
