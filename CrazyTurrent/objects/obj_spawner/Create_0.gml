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
for (i=0;i<10;++i){
	enemyNumber = 10+i*3;
	enemyInterval = 4/(enemyNumber-1);
	for (j=0; j<enemyNumber; ++j){
		ds_list_add(waves, [i,obj_healEnemy,j%3, enemyInterval*j]);
	}
}

//spawn points setting
spawn[0,0] = 50;
spawn[0,1] = 400;
spawn[1,0] = 100;
spawn[1,1] = 900;
spawn[2,0] = 200;
spawn[2,1] = 600;

//currBGM=-1;
enemyLst = ds_list_create();

bg_layer = layer_create(399);
bg_element = layer_background_create(bg_layer, bg1);

pre_bg_num = 0;