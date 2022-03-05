/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
if (!triggered) {
	draw_text(window_get_width()/2, 300, "Press space to spawn the next wave");
}