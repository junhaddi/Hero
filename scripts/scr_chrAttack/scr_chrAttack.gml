///@description Attack
///@param key_atk1 
///@param key_atk2

if (chr_isWpDelay == false) {
	///	Attack1
	if (argument0) {
		switch(chr_wp) {
			case 0:
				///	Spear
				break;
			case 1:
				///	Sword
				break;
			case 2:
				///	Axe
				break;
		}
		chr_isWpDelay = true;
		alarm[0] = chr_wpDelay[chr_wp];
	}

	///	Attack2
	if (argument1) {
		switch(chr_wp) {
			case 0:
				///	Spear
				break;
			case 1:
				///	Sword
				break;
			case 2:
				///	Axe
				break;
		}
	}
}