/// @description Insert description here
// You can write your code in this editor
var delta_second = delta_time /1000000;
image_angle += 720*delta_second;
rangeLeft -= speed*delta_time/10000;
if(!onWayBack){
	if(rangeLeft/bodyRange>.05){
		//show_debug_message(rangeLeft);
		speed =abs(rangeLeft/bodyRange)*spd;
	}else{
		onWayBack = true;
	}
}
if (onWayBack){
	newDir = point_direction(x,y,obj_turrent.x,obj_turrent.y);
	direction = weighAveDirection(newDir,direction,.6);
	speed += 8*delta_second;
	if (place_meeting(x,y,obj_turrent)){
		instance_destroy();
	}
}

//update body hit cd
if (bodyHitRefreshTime>0){
	bodyHitRefreshTime-=delta_second;
	if (bodyHitRefreshTime<0){
		ds_list_clear(bodyHitList);
	}
}



//shoot laser
if (laserCD<=0){
	var attacking = false;
	for (var i=0; i<ds_list_size(obj_spawner.enemyLst); ++i){
		var enemy = ds_list_find_value(obj_spawner.enemyLst,i);
		if (distance_to_object(enemy)<laserRange){
			enemy.life -= laserDamage;
			ds_list_add(laserTargets,[enemy.x,enemy.y]);
			attacking = true;
		}
	}
	
	if (attacking){
		laserCD = getAttackCDFromAttackSpeed(laserAttackSpeed);
		laserRenderTimeLeft = laserRenderTime;
	}
}
else{
	laserCD -= delta_time/1000000;
}
