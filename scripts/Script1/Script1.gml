// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controller(keypressedL, keypressedR){

if(keyboard_check(keypressedL)){
	xSpeed -= x_accel;	
}

if(keyboard_check(keypressedR)){
	xSpeed += x_accel;	
}

}