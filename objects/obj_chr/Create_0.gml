image_speed = 1;
chr_isMov = false;
chr_angle = 0;
chr_xdir = 1;
chr_xscale = 1;
chr_yscale = 1;

/*	STATE
	0.STAND
	1.AIM
	3.TODO
			*/
chr_state = 0;

chr_wp = 0;
chr_isWpDelay = false;
#region Weapon
chr_wpSpr[0] = spr_spear;
chr_wpSpr[1] = spr_sword;
chr_wpSpr[2] = spr_axe;

chr_wpDelay[0] = 1;
chr_wpDelay[1] = 0.4;
chr_wpDelay[2] = 1.2;

chr_wpDamage[0] = 2;
chr_wpDamage[1] = 1;
chr_wpDamage[2] = 3;
#endregion