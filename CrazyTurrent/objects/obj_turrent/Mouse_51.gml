/// @description Insert description here
// You can write your code in this editor
if (alarm[0]<=0){
	alarm[0] = getAttackCDFromAttackSpeed(attackSpd)*room_speed;
	firePointXYDiff = getXYDiffFromFirePointAndAngle(firePointX,firePointY);
	var _deltaDir = 45/(1+skillLv[3])
	var _dir = -skillLv[2]/2*_deltaDir;
	var _criticalDamage = (max(skillLv[4]-10,0))/10+1.5;
	var _criticalChance = skillLv[4] *10;
	for (var _scatterNumber = 0; _scatterNumber<skillLv[2]+1;++_scatterNumber){	
		with (instance_create_layer(firePointXYDiff[0],firePointXYDiff[1],"Projectiles",obj_bullet)){
			move_towards_point(mouse_x,mouse_y,spd);
			range = other.range;
			damage = other.damage;
			homingLv = other.skillLv[0];
			sharpnelLv = other.skillLv[1];
			direction +=_dir;
			//critical hit
			if (_criticalChance>random_range(0,100)){
				image_xscale *= _criticalDamage;
				image_yscale *= _criticalDamage;
				damage *= _criticalDamage;
				speed *= _criticalDamage;
			}
			
		}
		_dir +=_deltaDir;
	}
}