/// @description Insert description here
// You can write your code in this editor
draw_set_font(UIFonts_Large);
draw_set_color(c_ltgray)
draw_set_alpha(.7)
draw_rectangle(155,380,650,450,false)
draw_set_color(c_black)
draw_set_alpha(1)
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
draw_text(window_get_width()/2, 400, "You Die");
draw_text(window_get_width()/2, 430, "Press 'R' to restart");