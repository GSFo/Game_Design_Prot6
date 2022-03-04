// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getAttackCDFromAttackSpeed(_attackspeed){
	return 5*exp(-(3+_attackspeed)/10);	
}