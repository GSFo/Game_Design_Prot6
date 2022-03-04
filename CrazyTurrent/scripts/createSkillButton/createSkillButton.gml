// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//@_text text
function createSkillButton(_text, _val, x, y){
	button = instance_create_layer(x,y,"Instances",obj_button)
	with (button){
		width = 170;
		text = _text;
		val = _val;
	}
	return button;
}