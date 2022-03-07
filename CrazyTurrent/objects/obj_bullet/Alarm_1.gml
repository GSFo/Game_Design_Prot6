/// @description Insert description here
// You can write your code in this editor
alarm[1] = .3*room_speed;
if (chaosAmplifierLv>0){
	chaosX = random_range(-1,1)*(1+.2*chaosAmplifierLv)*500;
	chaosY = random_range(-1,1)*(1+.2*chaosAmplifierLv)*300;
}
