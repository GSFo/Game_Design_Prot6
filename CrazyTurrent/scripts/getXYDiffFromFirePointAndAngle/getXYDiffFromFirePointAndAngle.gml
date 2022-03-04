// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getXYDiffFromFirePointAndAngle(_firePointX,_firePointY){
	return [x+_firePointX*dcos(image_angle)+_firePointY*dsin(image_angle),y+_firePointY*dcos(image_angle)+_firePointX*dsin(image_angle)]
}