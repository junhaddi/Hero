///@description Swap Weapon

var chr_wpMax = array_length_1d(chr_wpSpr) - 1;

if (keyboard_check_pressed(ord("E")) || mouse_wheel_up()) {
	if (chr_wp < chr_wpMax) {
		chr_wp += 1;
	}
	else {
		chr_wp = 0;
	}
}
if (keyboard_check_pressed(ord("Q")) || mouse_wheel_down()) {
	if (chr_wp > 0) {
		chr_wp -= 1;
	}
	else {
		chr_wp = chr_wpMax;
	}
}