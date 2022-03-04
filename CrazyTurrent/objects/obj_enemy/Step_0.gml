/// @desc


move_towards_point(obj_turrent.x, obj_turrent.y, move_speed);
// ===== flip enemy sprite based on player movement =====
if (obj_turrent.x < x) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}
// ======================================================


