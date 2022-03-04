// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//@_text text
function createPowerUpButton(_text, _val, _x, _y,_attributeIndex){
	button = instance_create_layer(_x,_y,"Instances",obj_powerUpButton)
	with (button){
		width = 100;
		height = 150;
		text = _text;
		show_debug_message(text)
		//auto new line
		//var lineNumber = round(width*.8/string_width(_text)-.49);
		//var charNumberEachLine =round(string_length(_text)/lineNumber);
		for (var i = string_length(text)-1; i>=0;--i){
			show_debug_message("curr is: "+string_char_at(text,i)+"at"+string(i))
			if  (string_char_at(text,i)==" "){
				show_debug_message("space detected")
				text = string_insert("\n",text,i);
			}
		}
		val = _val;
		attributeIndex = _attributeIndex;
	}
	return button;
}