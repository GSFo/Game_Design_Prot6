/// @description sprite angle
// You can write your code in this editor
image_angle = point_direction(x,y,mouse_x,mouse_y)-90;

//handle gui hide button
if (guiHideButton.click){
	guiHideButton.click = false;
	guiHideButton.text = "+";
	guiHideButton.val *= -1;
}