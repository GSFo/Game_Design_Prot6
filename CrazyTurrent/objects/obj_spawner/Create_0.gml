/// @desc


#macro _WAVE 0
#macro _TYPE 1
#macro _SPAWN 2
#macro _DELAY 3

triggered = true;
timer = 0;
current_wave = 0;
last = 0;

randomize();
waves = ds_list_create();
// list: [wave number, spawn_type, spawn_location.x,delay_time]
for (i=0;i<10;++i){
	enemyNumber = 5+i*2;
	enemyInterval = 4/(enemyNumber-1);
	for (j=0; j<enemyNumber; ++j){
		ds_list_add(waves, [i,obj_enemy,j%3, enemyInterval*j]);
	}
}

//spawn points setting
spawn[0,0] = 50;
spawn[0,1] = 50;
spawn[1,0] = 100;
spawn[1,1] = 100;
spawn[2,0] = 200;
spawn[2,1] = 200;

//currBGM=-1;
enemyLst = ds_list_create();