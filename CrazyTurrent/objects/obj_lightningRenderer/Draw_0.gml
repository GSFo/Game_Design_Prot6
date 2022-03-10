/// @description Insert description here
// You can write your code in this editor

var _currVertex = ds_list_find_value(lightningVertex,0);
for (var _lightningVertexIndex =1 ; _lightningVertexIndex<ds_list_size(lightningVertex);++_lightningVertexIndex){
	var _nextVertex = ds_list_find_value(lightningVertex,_lightningVertexIndex);
	audio_play_sound(lightning, 10, false);
	draw_lightning(_currVertex[0],_currVertex[1],_nextVertex[0],_nextVertex[1],5, 15, 3, 20);
	_currVertex = _nextVertex;
}