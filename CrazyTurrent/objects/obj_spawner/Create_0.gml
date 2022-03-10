/// @desc


#macro _WAVE 0
#macro _TYPE 1
#macro _SPAWN 2
#macro _DELAY 3

triggered = true;
interwaveEventHappened = false;
timer = 0;
current_wave = 0;
last = 0;
alarm[1]=-1;

randomize();
waves = ds_list_create();
// list: [wave number, spawn_type, spawn_location.x,delay_time]
enemyTypeArr = [obj_enemy,obj_tankyEnemy,obj_enemyFast,obj_healEnemy,obj_rangedEnemy];
enemyTypeIndexLst = ds_list_create();
for (var i = 0; i < array_length(enemyTypeArr); ++i){
	ds_list_add(enemyTypeIndexLst, i)
}

for (i=0;i<100;++i){
	ds_list_shuffle(enemyTypeIndexLst);
	var _enemyBaseNumber = 5+i*2;
	var _enemyInterval = 4/(_enemyBaseNumber-1);
	var _enemyTypeNumber = irandom_range(1,3)
	var _currEnemyTypes = ds_list_create();
	for (var j = 0; j<_enemyTypeNumber; ++j){
		ds_list_add(_currEnemyTypes,ds_list_find_value(enemyTypeIndexLst,j))
	}
	ds_list_sort(_currEnemyTypes, true);
	for (var j=0; j<_enemyBaseNumber; ++j){
		var _currEnemy = enemyTypeArr[ds_list_find_value(_currEnemyTypes,j%_enemyTypeNumber)];
		if (_currEnemy == obj_enemy){
			ds_list_add(waves, [i,_currEnemy,j%_enemyTypeNumber, _enemyInterval*j]);
		}
		ds_list_add(waves, [i,_currEnemy,j%_enemyTypeNumber, _enemyInterval*j]);
	}
}

//spawn points setting
spawn[0,0] = 250;
spawn[0,1] = 700;
spawn[1,0] = 325;
spawn[1,1] = 500;
spawn[2,0] = 400;
spawn[2,1] = 400;

currentBuff = 0;
buffText = ["All-Round", "Deadly", "Body Enhancement", "Agility"]
//currBGM=-1;
enemyLst = ds_list_create();

drawCardChances = 0;
drawCardTrigger = false;

bg_layer = layer_create(399);
bg_element = layer_background_create(bg_layer, bg1);

pre_bg_num = 0;
