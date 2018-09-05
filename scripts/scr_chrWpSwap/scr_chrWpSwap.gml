///@description Swap Weapon
///@param swap_delay

var chr_wpMax = array_length_1d(chr_wpSpr) - 1;

if (chr_isWpDelay == false) {
	///	Swap next
	if (keyboard_check_pressed(ord("E")) || mouse_wheel_up()) {
		if (chr_wp < chr_wpMax) {
			chr_wp += 1;
		}
		else {
			chr_wp = 0;
		}
		chr_isWpDelay = true;
		alarm[0] = argument0;
	}

	///	Swap previous
	if (keyboard_check_pressed(ord("Q")) || mouse_wheel_down()) {
		if (chr_wp > 0) {
			chr_wp -= 1;
		}
		else {
			chr_wp = chr_wpMax;
		}
		chr_isWpDelay = true;
		alarm[0] = argument0;
	}
}