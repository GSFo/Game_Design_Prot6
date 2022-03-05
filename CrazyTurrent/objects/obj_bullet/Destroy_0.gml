/// @description Insert description here
// You can write your code in this editor
for (var _sharpnelNumber = 0; _sharpnelNumber < 2*sharpnelLv; ++_sharpnelNumber){
	with (instance_create_layer(x,y,"Projectiles",obj_sharpnel)){
		direction = random_range(0,360);
		image_angle = random_range(0,360);
		show_debug_message("Setting sharpnel speed to:" +string (10* power(other.sharpnelLv,.5)*random_range(.5,1)));
		speed = 10* power(other.sharpnelLv,.5)*random_range(.5,1);
		damage = other.damage/5*(1+.2*sharpnelLv);
		//homingLv = round(other.homingLv/3-.49);
		//sharpnelLv = round(other.sharpnelLv/4 -.49);
	}
}
	