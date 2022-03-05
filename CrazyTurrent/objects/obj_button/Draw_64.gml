if (!hide){
	if (cdPercent<=0){		
		draw_set_color(merge_color(c_ltgray,c_white,hoverTime));
		draw_roundrect(x,y,x+width,y+height,0)
	}
	else{
		draw_set_color(merge_color(c_ltgray,c_white,hoverTime));
		draw_roundrect(x,y,x+width*(1-cdPercent),y+height,0)
		draw_set_color(c_dkgray);
		draw_roundrect(x+width*(1-cdPercent),y,x+width,y+height,0)
	}
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	if (!drawVal){
		draw_text(x+width/2, y+height/2, text);
	}
	else{
		draw_text(x+width/2, y+height/2, text+string(round(val)));
	}	
	draw_set_halign(fa_middle);
	draw_set_valign(fa_top);
}
