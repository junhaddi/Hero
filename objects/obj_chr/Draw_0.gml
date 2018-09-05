///	Draw Self
draw_sprite_ext(spr_chr, image_index, x, y, chr_xscale * chr_xdir, chr_yscale, 0, c_white, image_alpha);

///	Draw LoadOut
if (chr_xdir == 1) {
	draw_sprite_ext(spr_shield, image_index, x + lengthdir_x(4, chr_angle), y + lengthdir_y(4, chr_angle) - 10, 1, 1, chr_angle, c_white, image_alpha);
	draw_sprite_ext(chr_wpSpr[chr_wp], image_index, x, y - 8, 1, 1, chr_angle, c_white, image_alpha);
}
else {
	draw_sprite_ext(chr_wpSpr[chr_wp], image_index, x, y - 8, 1, 1, chr_angle, c_white, image_alpha);
	draw_sprite_ext(spr_shield, image_index, x + lengthdir_x(4, chr_angle), y + lengthdir_y(4, chr_angle) - 10, 1, 1, chr_angle, c_white, image_alpha);
}