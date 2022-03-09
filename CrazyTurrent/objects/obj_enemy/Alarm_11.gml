/// @description melee attack
// You can write your code in this editor

if (distance_to_object(obj_turrent) < stopDistance + 64)
{
	with instance_create_layer(x,y,"Projectiles",obj_enemyCloseup){
		move_towards_point(obj_turrent.x,obj_turrent.y,3)
		damage = other.damage;
		alarm[11] = room_speed*3;
	}
} else {
	alarm[11] = room_speed
}
