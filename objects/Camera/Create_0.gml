/// Camera
cam = camera_create();
vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
pm = matrix_build_projection_ortho(GAME_WIDTH, GAME_HEIGHT, 1, 10000);

//	Target
follow = obj_chr;
xTo = x;
yTo = y;

//	Effect
cam_zoom = 1;
cam_wview = GAME_WIDTH * cam_zoom;
cam_hview = GAME_HEIGHT * cam_zoom;
cam_angle = 0;
cam_shake = 0;
cam_zoomIn = 0;