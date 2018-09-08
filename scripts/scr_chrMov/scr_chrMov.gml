///@description Move Character
///@param key_left
///@param key_right
///@param key_up
///@param key_down
///@param mov_speed
///@param rot_speed

/// Input
var key_left = argument0;
var key_right = argument1;
var key_up = argument2;
var key_down = argument3;

/// Movement
//	Set move direction
var chr_speed = argument4;
var chr_hMov = key_right - key_left;
var chr_vMov = key_up - key_down;

if (chr_hMov != 0 || chr_vMov != 0) {
	chr_isMov = true;
}
else {
	chr_isMov = false;
}

//	Cross Speed
if (chr_isMov && !place_meeting(x - chr_speed, y, Block) && !place_meeting(x + chr_speed, y, Block) &&
	!place_meeting(x, y - chr_speed, Block) && !place_meeting(x, y + chr_speed, Block))
{
    chr_speed = (chr_speed / sqrt(2));
}

//	Horizontal
if (!place_meeting(x + chr_speed * chr_hMov, y, Block)) {
    x += chr_speed * chr_hMov;
}
else {
	while(!place_meeting(x + chr_hMov, y, Block)) {
		x += chr_hMov;
	}
}

//	Vertical
if (!place_meeting(x, y + chr_speed * chr_vMov, Block)) {
    y += chr_speed * chr_vMov;
}
else {
	while(!place_meeting(x, y + chr_vMov, Block)) {
		y += chr_vMov;
	}
}

/// Rotate
var mouseDir = point_direction(x, y, mouse_x, mouse_y);
chr_angle = chr_angle % 360 + sin(degtorad(mouseDir - chr_angle)) * argument5;

//	Xdir
if (abs(chr_angle) > 90 && abs(chr_angle) <= 270) {
	chr_xdir = -1;
}
else {
	chr_xdir = 1;
}