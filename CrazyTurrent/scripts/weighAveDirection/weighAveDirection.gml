// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weighAveDirection(dir1, dir2, weigh1){
	if (dir1-dir2>180){
		var newDirection = dir1*(weigh1)+(dir2+360)*(1-weigh1);
	}
	else if (dir1-dir2<-180){
		newDirection = (dir1+360)*(weigh1)+(dir2)*(1-weigh1);
	}
	else{
		newDirection = dir1*(weigh1)+(dir2)*(1-weigh1);
	}
	if (newDirection>360){
		newDirection-=360;
	}
	return newDirection
}