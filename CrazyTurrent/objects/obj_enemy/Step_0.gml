/// @desc
move_towards_point(obj_turrent.x, obj_turrent.y, speed);
// ===== flip enemy sprite based on player movement =====
if (obj_turrent.x < x) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}
// ======================================================


//handle buffs
//frost
image_blend = c_white;
if (alarm[0]>0){
	speed = move_speed* power(.8,frostDebuff);
	image_blend = c_blue;
}
//poison
if (alarm[1]>0){
	life -= poisonDebuff *2*delta_time/1000000;
	image_blend = c_green;
}
//burn 
if (alarm[3]>0){
	life -= burnDebuff *1*delta_time/1000000;
	image_blend = c_red;
	damage = attackDamage/2;
}
if (alarm[0] > 0 or alarm[1] > 0 or alarm[3] > 0){
	audio_play_sound(debuff, 10, false);
}

//damage amplification
if (alarm[2]>0){
	image_blend = c_dkgray;
}

if (distance_to_object(obj_turrent)<=stopDistance){
	if life > 0 sprite_index = idle_sprite_index;
	speed =0;
}

