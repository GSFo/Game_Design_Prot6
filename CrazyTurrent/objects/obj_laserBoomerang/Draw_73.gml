/// @description Insert description here
// You can write your code in this editor

if(laserRenderTimeLeft>0){
	laserRenderTimeLeft -= delta_time/1000000
	draw_set_alpha(laserRenderTimeLeft/laserRenderTime)
	for (var i=0; i<ds_list_size(laserTargets); ++i){
		var target = ds_list_find_value(laserTargets,i);
		draw_line_width_color(x,y,target[0],target[1],5,c_yellow,c_red);
	}
}
else{
	if (ds_list_size(laserTargets)>0){
		ds_list_clear(laserTargets)
	}
}
draw_set_alpha(1);
