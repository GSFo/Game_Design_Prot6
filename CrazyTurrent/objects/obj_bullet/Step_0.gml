/// @description Insert description here
// You can write your code in this editor
range-=speed*delta_time/10000;
image_angle = direction-90;
x+=delta_time/1000000*chaosX;
y+=delta_time/1000000*chaosY;
//homing bullet
if (homingLv>0){	
	if (homingTarget!=pointer_null&&instance_exists(homingTarget)&&distance_to_object(homingTarget)>homingLv*200){
		homingTarget = pointer_null;
	}
	if (homingTarget == pointer_null||!instance_exists(homingTarget)){	
		//find closest enemy;
		homingTarget = pointer_null;
		var closestEnemy = pointer_null;
		var minDistance = infinity;
		for (var i=0;i<ds_list_size(obj_spawner.enemyLst);++i){
			var enemy = ds_list_find_value(obj_spawner.enemyLst,i);
			var distance = distance_to_object(enemy);
			if (distance<minDistance&&ds_list_find_index(hitTargetLst,enemy.id)==-1){
				show_debug_message("homing new:" + string(enemy))
				closestEnemy = enemy;
				minDistance = distance;
			}
		}
		
		if (minDistance<homingLv*100){
			homingTarget = closestEnemy;
		}
	}
	if (homingTarget!=pointer_null&&homingTarget!=pointer_invalid){
		homingDirection = point_direction(x,y,homingTarget.x,homingTarget.y);
		direction = weighAveDirection(homingDirection, direction, homingLv*.07)
	}
	
}
	
//range
if (range<0){
	instance_destroy()
}