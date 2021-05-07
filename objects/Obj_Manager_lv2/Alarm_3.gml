/// @description Enemy Bat Spawn

randomise();
if(Batno < 3)
{
	instance_create_layer(room_width/2, room_height + 128, "Enemies", obj_enemy_bat);
	Batno++;
}

if(Batno = 3)
{
	alarm[3] = random_range(4.5,6.5) * room_speed;
}
if(Batno < 3)
{
	alarm[3] = random_range(0.5,1) * room_speed;
}
