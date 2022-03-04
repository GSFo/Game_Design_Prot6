/// @description Insert description here
// You can write your code in this editor
if (alarm[0]<=0){
	alarm[0] = getAttackCDFromAttackSpeed(attackSpd)*room_speed;
	with (instance_create_layer(x,y,"Projectiles",obj_bullet)){
		move_towards_point(mouse_x,mouse_y,spd);
		range = other.range;
		damage = other.damage;
	}
}