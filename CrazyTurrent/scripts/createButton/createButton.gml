// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//@_text text
function createButton(_text, _val, x, y, w, h){
	button = instance_create_layer(x,y,"Instances",obj_button)
	with (button){
		width = w;
		height = h;
		text = _text;
		val = _val;
	}
	return button;
}