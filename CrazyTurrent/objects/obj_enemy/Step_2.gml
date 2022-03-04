/// @description Insert description here
// You can write your code in this editor
if (life<=0){
	ds_list_delete(obj_spawner.enemyLst, ds_list_find_index(obj_spawner.enemyLst,id))
	instance_destroy()
}