/// @description Insert description here
// You can write your code in this editor

if (!triggered) {
	draw_set_font(UIFonts_Large);
	draw_set_color(c_ltgray)
	draw_set_alpha(.7)
	draw_rectangle(155,180,650,250,false)
	draw_set_color(c_black)
	draw_set_alpha(1)
	draw_set_halign(fa_middle)
	draw_set_valign(fa_center)
	draw_text(window_get_width()/2, 200, "Press space to spawn the next wave");
	draw_text(window_get_width()/2, 230, "Next wave has buff " + buffText[currentBuff]);
	//draw_text_transformed(window_get_width()/2, 200, "Press space to spawn the next wave",1.5,1.5,1);
	//draw_text_transformed(window_get_width()/2, 230, "Next wave has buff " + buffText[currentBuff],1.5,1.5,1);
}