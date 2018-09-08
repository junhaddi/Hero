#region Weapon
ui_wp[0] = ui_spear;
ui_wp[1] = ui_sword;
ui_wp[2] = ui_axe;
#endregion

///	Create Level
//	Set grid
var width = room_width div CELL_WIDTH;
var height = room_height div CELL_HEIGHT;

//	Pathfinding grid
grid_path = mp_grid_create(0, 0, width, height, CELL_WIDTH, CELL_HEIGHT);
mp_grid_add_instances(grid_path, Block, false);

//	Enemy gen
alarm[0] = room_speed;