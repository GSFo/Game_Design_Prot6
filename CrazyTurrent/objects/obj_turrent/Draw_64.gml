/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(textColor)

var _text_ui_fmt = ""
var _text_ui_args = []

for (var _attributeIndex = 0; _attributeIndex < array_length(obj_turrent.skillLv)+4;++_attributeIndex){
	//draw_text(10,500+30*_attributeIndex,attributeName[_attributeIndex])
	_text_ui_fmt += "{}"
	array_push(_text_ui_args, attributeName[_attributeIndex]);

	switch (_attributeIndex){
		case 0:
			var _val = damage;
		break;
		case 1:
			_val = defense;
		break;
		case 2:
			_val = range;
		break;
		case 3:
			_val = attackSpd;
		break;
		default:
			if (_attributeIndex-4<array_length(skillLv)){
				_val = skillLv[_attributeIndex-4] ;
			}
			else{
				throw("Skill Index Out Of Bound!");
			}
	}
	//draw_text(150,500+30*_attributeIndex,_val);
	_text_ui_fmt += ": {}\n"
	array_push(_text_ui_args,_val);
}

var _text_ui_text = sformat(_text_ui_fmt, _text_ui_args);
draw_text_transformed(10, 300, _text_ui_text, textScale, textScale, 0);