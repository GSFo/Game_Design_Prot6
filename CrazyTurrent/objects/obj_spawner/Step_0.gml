/// @desc spawn!


if (triggered) {
	var difficulty = obj_spawner.current_wave/5 + 1
	for (var i = last; i < ds_list_size(waves); i++) {
		var next = ds_list_find_value(waves, i);
		if (next[_WAVE] == current_wave) && (next[_DELAY] < timer) {
			var spawnpoint = next[_SPAWN];
			var newEnemy = instance_create_layer(spawn[spawnpoint,0], spawn[spawnpoint,1],"Enemy",next[_TYPE]);
			ds_list_add(enemyLst,newEnemy.id);
			//show_debug_message("adding to list"+string(newEnemy))
			//show_debug_message("index is"+string(ds_list_find_index(enemyLst,newEnemy)))
			//difficulty changes with level	
			with (newEnemy){
				attackDamage *= difficulty;
				defense *= difficulty;
				life *= difficulty;
				life_max *= difficulty;
			}
			last=i;
		}
		else{
			break;
		}
	}
	last = i;
	timer += delta_time/1000000
	/*
	if (remaining[current_wave] <= 0) {
		instance_destory();
	}
	*/
}
//show_debug_message("debug:"+ string(instance_number(obj_enemy)))
//show_debug_message("triggered:"+ string(triggered))
//show_debug_message("size is: "+string(ds_list_size(enemyLst)))
if triggered && (ds_list_empty(enemyLst)) && timer>4{
	triggered = false;
	current_wave += 1;
	timer = 0
}

if (!triggered){
	if (!interwaveEventHappened){
		interwaveEventHappened = true;
		buttons = [0,0,0,0,0]
		for (i =0;i<4;++i){
			var _attributeIndex = irandom_range(0,11);
			buttons[i] = createPowerUpButton( obj_turrent.attributeBufferName[_attributeIndex],1,window_get_width()/2-275+i*150, 400,_attributeIndex);
		}
	}	
}

if (!triggered&&keyboard_check(vk_space)) {
	triggered = true;
	interwaveEventHappened = false;
}

//bgm management
/*
if (obj_player.godBlessDuraton>0){
	if (currBGM!=bgm_godBless){
		currBGM = bgm_godBless;
		pauseAllBGM();
		audio_play_sound(bgm_godBless,0,true);
	}
}
else if (bossNumber>0){
	if (currBGM!=bgm_boss){
		currBGM = bgm_boss;
		pauseAllBGM();
		audio_play_sound(bgm_boss, 0, true);
	}
}
else if (triggered){
	if(currBGM!=bgm_game){
		currBGM = bgm_game;
		pauseAllBGM();
		audio_play_sound(bgm_game, 0, true);
	}
}
else if (currBGM!=bgm_rest){
	currBGM = bgm_rest;
	pauseAllBGM();
	audio_play_sound(bgm_rest, 0, true);
}
*/