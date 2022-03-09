/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_white)

var _lineInterval = 40;
var _startFromHeight = 500;
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