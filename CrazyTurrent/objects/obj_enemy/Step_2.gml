/// @description Insert description here
// You can write your code in this editor
// handle damage amplification


if (alarm[2]>0){
	life -= (lifePre - life)*.1*damageAmplificationDebuff;
}
	

if (life>life_max){
	life = life_max;
}

if (life<=0){
	ds_list_delete(obj_spawner.enemyLst, ds_list_find_index(obj_spawner.enemyLst,id))
	sprite_index = death_sprite_index;
	speed = 0;
	if image_index > image_number - 1 instance_destroy();
}
