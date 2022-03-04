/// @description Insert description here
// You can write your code in this editor
if (click){
	switch (attributeIndex){
		case 0:
			obj_turrent.damage +=5;
		break;
		case 1:
			obj_turrent.attackSpd +=5;
		break;
		case 2:
			obj_turrent.range +=5;
		break;
		case 3:
			obj_turrent.defense +=5;
		break;
		default:
			if (attributeIndex-3<array_length(obj_turrent.skillLv)){
				obj_turrent.skillLv[attributeIndex-3] +=1;
			}
			else{
				throw("Skill Index Out Of Bound!");
			}
	}
	instance_destroy();
}