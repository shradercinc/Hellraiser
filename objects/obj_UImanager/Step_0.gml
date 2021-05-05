/// @description Insert description here
// You can write your code in this editor


// kill counter scaling 

if(global.score_state == 1){
	if(scalekill < scalekill_max and scalekill_state = 0){
		scalekill += 0.095;	
	}
	
	if(scalekill >= scalekill_max){
		scalekill_state = 1;	
	}
	
	if(scalekill > 5.5 and scalekill_state == 1){
		scalekill -= 0.095;	
	}
	
	if(scalekill <= 5.5 and scalekill_state == 1){
		scalekill_state = 0;
		global.score_state = 0;
		scalekill = 5.5;
	}
}




//skill activation scaling

if(global.skillpound_state == 1){
	if(scaleskill_pound < scaleskill_max and scaleskill_pound_state = 0){
		scaleskill_pound += 0.095;	
	}
	
	if(scaleskill_pound >= scaleskill_max){
		scaleskill_pound_state = 1;	
	}
	
	if(scaleskill_pound > 4.5 and scaleskill_pound_state == 1){
		scaleskill_pound -= 0.095;	
	}
	
	if(scaleskill_pound <= 4.5 and scaleskill_pound_state == 1){
		scaleskill_pound_state = 0;
		global.skillpound_state = 0;
		scaleskill_pound = 4.5;
	}
}


if(global.skilldash_state == 1){
	if(scaleskill_dash < scaleskill_max and scaleskill_dash_state = 0){
		scaleskill_dash += 0.095;	
	}
	
	if(scaleskill_dash >= scaleskill_max){
		scaleskill_dash_state = 1;	
	}
	
	if(scaleskill_dash > 4.5 and scaleskill_dash_state == 1){
		scaleskill_dash -= 0.095;	
	}
	
	if(scaleskill_dash <= 4.5 and scaleskill_dash_state == 1){
		scaleskill_dash_state = 0;
		global.skilldash_state = 0;
		scaleskill_dash = 4.5;
	}
}



