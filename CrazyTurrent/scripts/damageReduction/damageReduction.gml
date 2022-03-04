// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damageReducation(_def){
	var _rate=1.0/(1+0.12*_def);
	return _rate
}