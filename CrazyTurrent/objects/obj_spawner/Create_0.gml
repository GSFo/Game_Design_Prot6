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
var _enemieTypeArr = [obj_enemy,obj_enemyFast,obj_healEnemy,obj_rangedEnemy,obj_tankyEnemy];
enemyTypeLst = ds_list_create();
for (var i = 0; i < array_length(_enemieTypeArr); ++i){
	ds_list_add(enemyTypeLst,_enemieTypeArr[i])
}

for (i=0;i<10;++i){
	ds_list_shuffle(enemyTypeLst);
	var _enemyNumber = 10+i*3;
	var _enemyInterval = 4/(_enemyNumber-1);
	var _enemyTypeNumber = irandom_range(1,3)
	for (var j=0; j<_enemyNumber; ++j){
		ds_list_add(waves, [i,ds_list_find_value(enemyTypeLst,j%_enemyTypeNumber),j%_enemyTypeNumber, _enemyInterval*j]);
	}
}

//spawn points setting
spawn[0,0] = 100;
spawn[0,1] = 400;
spawn[1,0] = 300;
spawn[1,1] = 900;
spawn[2,0] = 200;
spawn[2,1] = 600;

currentBuff = 0;
buffText = ["Normal", "Deadly", "Body Enhancement", "Agility"]
//currBGM=-1;
enemyLst = ds_list_create();

bg_layer = layer_create(399);
bg_element = layer_background_create(bg_layer, bg1);

pre_bg_num = 0;
