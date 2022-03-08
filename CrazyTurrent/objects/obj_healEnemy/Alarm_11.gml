/// @description heal wave
// You can write your code in this editor
alarm[11] = 5*room_speed;
var _enemyOnChain = ds_list_create();
var _lightningRenderer = instance_create_layer(0,0,"Projectiles",obj_healWaveRenderer);
ds_list_add(_enemyOnChain,other);
ds_list_add(_lightningRenderer.lightningVertex, [other.x,other.y])
for (var _bouncingTime =0; _bouncingTime<4;++_bouncingTime){
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
	if (_minDistance<300){
		ds_list_add(_enemyOnChain,_closestEnemy);
		ds_list_add(_lightningRenderer.lightningVertex,[_closestEnemy.x,_closestEnemy.y]);
		_closestEnemy.life += 15;
		_currEnemy = _closestEnemy;
	}
}
