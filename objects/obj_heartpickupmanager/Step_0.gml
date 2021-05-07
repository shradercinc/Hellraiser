/// @description Insert description here
// You can write your code in this edito
pickuptimer++
randomize();

if(pickuptimer > 500){
	instance_create_layer(random_range(30, room_width - 30), 0, "Instances", obj_heart);
	pickuptimer = 0;
}