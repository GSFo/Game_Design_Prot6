/// @description shoot
// You can write your code in this editor
if (alarm[0]<=0){
	//chaos amplifier
	var _firePointX = firePointX;
	var _firePointY = firePointY;
	alarm[0] = getAttackCDFromAttackSpeed(attackSpd)*room_speed;
	
	for (var _chaosGhostShooter=0; _chaosGhostShooter<skillLv[5]+1;++_chaosGhostShooter){
		firePointXYDiff = getXYDiffFromFirePointAndAngle(_firePointX,_firePointY);
		var _deltaDir = 45/(1+max(skillLv[3]-skillLv[5],0));
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
				chainLightningLv = other.skillLv[6];
				chaosAmplifierLv = other.skillLv[5];
				pierceLv = other.skillLv[7];
				
				direction +=_dir;
				//critical hit
				if (_criticalChance>random_range(0,100)){
					image_xscale *= _criticalDamage;
					image_yscale *= _criticalDamage;
					damage *= _criticalDamage;
					speed *= _criticalDamage;
				}
				
				if (_chaosGhostShooter>0){
					damage /= 2;
					homingLv /= 2;
					sharpnelLv /=2;
					sprite_index = spr_ghostBullet;
				}
				else{
					frostAttack = other.skillLv[8];
					poisonAttack = other.skillLv[9];
					damageAmplification = other.skillLv[10];
					burnAttack = other.skillLv[11];
				}
			}
			_dir +=_deltaDir;
		}
		var _firePointX = random_range(-300*(1+.2*skillLv[5]),300*(1+.2*skillLv[5]))
		var _firePointY = random_range(-600*(1+.2*skillLv[5]),-100)
	}
	sprite_index = spr_turrent_shoot;
}