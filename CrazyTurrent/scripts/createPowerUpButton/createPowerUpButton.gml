// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//@_text text
function createPowerUpButton(_text, _val, _x, _y,_attributeIndex){
	button = instance_create_layer(_x,_y,"Instances",obj_powerUpButton)
	with (button){
		text = _text;
		val = _val;
		attributeIndex = _attributeIndex;
	}
	return button;
}