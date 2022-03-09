// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//@_text text
function createPowerUpButton(_text, _val, _x, _y,_attributeIndex){
	button = instance_create_layer(_x,_y,"Instances",obj_powerUpButton)
	with (button){
		width = 125;
		height = 150;
		text = _text;
		depth = 999;
		drawVal = false;
		show_debug_message(text)
		//auto new line
		//var lineNumber = round(width*.8/string_width(_text)-.49);
		//var charNumberEachLine =round(string_length(_text)/lineNumber);
		for (var i = string_length(text)-1; i>=0;--i){
			if  (string_char_at(text,i)==" "){
				text = string_insert("\n",text,i);
			}
		}
		val = _val;
		attributeIndex = _attributeIndex;
	}
	return button;
}