/// @description Background fade countdown
// You can write your code in this editor
layer_background_alpha(bg_element,1)
if (bg_num!=pre_bg_num){
	if (bg_num == 0) {
		layer_background_change(bg_element, bg1);
	} else if (bg_num == 1) {
		layer_background_change(bg_element, bg2);
	} else if (bg_num == 2) {
		layer_background_change(bg_element, bg3);
	} else if (bg_num == 3) {
		layer_background_change(bg_element, bg4);
	} else if (bg_num == 4) {
		layer_background_change(bg_element, bg5);
	}
	pre_bg_num = bg_num
	alarm[2] = room_speed;
}