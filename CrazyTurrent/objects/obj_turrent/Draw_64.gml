/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_white)
for (var _attributeIndex = 0; _attributeIndex<11;++_attributeIndex){
	draw_text(10,600+30*_attributeIndex,attributeName[_attributeIndex])
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
	draw_text(150,600+30*_attributeIndex,_val);
}