/// @description attack
// You can write your code in this editor
if (distance_to_object(obj_turrent)<=600){
	alarm[11] = room_speed*5;
	with instance_create_layer(x,y,"Projectiles",obj_enemyBullet){
		move_towards_point(obj_turrent.x,obj_turrent.y,3)
		damage = other.damage;
	}
}
else{
	alarm[11] = 5;
}
