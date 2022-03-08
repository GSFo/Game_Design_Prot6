/// @description Insert description here
// You can write your code in this editor

var y_offset = -25;
var x_offset = -20;
var _width = 50;
var _height = 10;
var _x1 = x + x_offset;
var _y1 = y + y_offset;
var _x2 = _x1 + _width;
var _y2 = _y1 + _height;
var _health_length = life / life_max * _width;

draw_healthbar(_x1, _y1, _x2, _y2, _health_length, c_black, c_red, c_lime, 0, true, true)