/// @description attack
// You can write your code in this editor
alarm[11] = room_speed*5;
with instance_create_layer(x,y,"Projectiles",obj_enemyBullet){
	move_towards_point(obj_turrent.x,obj_turrent.y,3)
}