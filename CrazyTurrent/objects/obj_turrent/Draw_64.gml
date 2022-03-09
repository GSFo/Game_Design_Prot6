/// @description Insert description here
// You can write your code in this editor

if (guiHideButton.val == 1){
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_white)

var _lineInterval = 40;
var _startFromHeight = 280;
for (var _attributeIndex = 0; _attributeIndex<array_length(obj_turrent.skillLv)+4;++_attributeIndex){
	draw_text_transformed(10,_startFromHeight+_lineInterval*_attributeIndex,attributeName[_attributeIndex],1.5,1.5,0)
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
	draw_text_transformed(220,_startFromHeight+_lineInterval*_attributeIndex,_val,1.5,1.5,0);
}
}


var _health_x1 = 32
var _health_y1 = window_get_height() - 32
var _health_x2 = window_get_width() - 32
var _health_y2 = window_get_height() - 16
var _health_length = life / maxLife * 100
draw_healthbar(_health_x1, _health_y1, _health_x2, _health_y2, _health_length, c_black, c_red, c_lime, 0, true, true)