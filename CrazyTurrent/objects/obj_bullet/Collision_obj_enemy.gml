/// @description Insert description here
// You can write your code in this editor


if (ds_list_find_index(hitTargetLst,other.id)==-1){
	if (pierceLv>=0){
		--pierceLv;
		ds_list_add(hitTargetLst,other.id);
		other.life -= damage * damageReducation(other.defense);
		if (homingTarget == other.id){
			homingTarget = pointer_null;
		}
		if (pierceLv == -1){
			instance_destroy();
		}
		
		//add debuffs
		if (frostAttack >0){
			other.alarm[0] = (2+.5*frostAttack)*room_speed;
			other.frostDebuff = frostAttack;
		}
		if (poisonAttack>0){
			other.alarm[1] = (2+.5*poisonAttack)*room_speed;
			other.poisonDebuff = poisonAttack;
		}
		if (damageAmplification>0){
			other.alarm[2] = (2+.5*damageAmplification)*room_speed;
			other.damageAmplificationDebuff = damageAmplification;
		}
		if (burnAttack>0){
			other.alarm[3] = (2+.5*burnAttack)*room_speed;
			other.burnDebuff = burnAttack;
		}
		
		//release chain lightning
		if (chainLightningLv>0){
			var _enemyOnChain = ds_list_create();
			var _lightningRenderer = instance_create_layer(0,0,"Projectiles",obj_lightningRenderer);
			ds_list_add(_enemyOnChain,other);
			ds_list_add(_lightningRenderer.lightningVertex, [other.x,other.y])
			other.life -= chainLightningLv*5 + 5;
			for (var _bouncingTime =0; _bouncingTime<chainLightningLv;++_bouncingTime){
				//find closest enemy
				var _currEnemy = other;
				var _minDistance = infinity;
				var _closestEnemy = pointer_null;
				for (var _enemyIndex = 0; _enemyIndex<ds_list_size(obj_spawner.enemyLst);++_enemyIndex){
					with (_currEnemy){
						if (ds_list_find_index(_enemyOnChain,ds_list_find_value(obj_spawner.enemyLst,_enemyIndex))==-1){
							var _currDistance = distance_to_object(ds_list_find_value(obj_spawner.enemyLst,_enemyIndex));
							if (_currDistance < _minDistance){
								_closestEnemy = ds_list_find_value(obj_spawner.enemyLst,_enemyIndex);
								_minDistance = _currDistance;
							}
						}
					}
				}
				//bounce if close enough
				if (_minDistance<200+(chainLightningLv*100)){
					ds_list_add(_enemyOnChain,_closestEnemy);
					ds_list_add(_lightningRenderer.lightningVertex,[_closestEnemy.x,_closestEnemy.y]);
					_closestEnemy.life -= chainLightningLv*5+5;
					_currEnemy = _closestEnemy;
				}
			}
		}
	}
}
	