/// Camera
cam = camera_create();

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(GAME_WIDTH, GAME_HEIGHT, 1, 10000);
camera_set_view_mat(cam, vm);
camera_set_proj_mat(cam, pm);

view_camera[0] = cam;
display_set_gui_size(GAME_WIDTH, GAME_HEIGHT);

surface_resize(application_surface, GAME_WIDTH, GAME_HEIGHT);
window_set_size(GAME_WIDTH, GAME_HEIGHT);


follow = obj_chr;
xTo = x;
yTo = y;