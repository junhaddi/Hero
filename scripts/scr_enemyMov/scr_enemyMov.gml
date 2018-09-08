///@description Move enemy
///@param mov_speed

if (instance_exists(obj_chr)) {
	var xx = (obj_chr.x div CELL_WIDTH) * CELL_WIDTH + CELL_WIDTH / 2;
	var yy = (obj_chr.y div CELL_HEIGHT) * CELL_HEIGHT + CELL_HEIGHT / 2;
	
	if (mp_grid_path(InGame.grid_path, path, x, y, xx, yy, true)) {
		path_start(path, argument0, path_action_stop, false);
	}
}