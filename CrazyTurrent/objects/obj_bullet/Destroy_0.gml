/// @description Insert description here
// You can write your code in this editor
for (var _sharpnelNumber = 0; _sharpnelNumber < 2*sharpnelLv; ++_sharpnelNumber){
	audio_play_sound(sharpnel, 10, false);
	with (instance_create_layer(x,y,"Projectiles",obj_sharpnel)){
		direction = random_range(0,360);
		image_angle = random_range(0,360);
		speed = 10* power(other.sharpnelLv,.5)*random_range(.5,1);
		damage = other.damage/5*(1+.2*sharpnelLv);
		//homingLv = round(other.homingLv/3-.49);
		//sharpnelLv = round(other.sharpnelLv/4 -.49);
	}
}
ds_list_destroy(hitTargetLst)