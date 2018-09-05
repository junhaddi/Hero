image_speed = 0.02;
chr_isMov = false;
chr_angle = 0;
chr_xdir = 1;
chr_xscale = 1;
chr_yscale = 1;

/*	STATE
	1.STAND
	2.AIM
	3.TODO
			*/
chr_state = 0;

chr_wp = 0;
#region Weapon
chr_wpSpr[0] = spr_spear;
chr_wpSpr[1] = spr_sword;
chr_wpSpr[2] = spr_axe;
#endregion