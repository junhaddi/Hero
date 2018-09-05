///@description Update camera
///@param zoom_speed
///@param move_speed
///@param shake_speed

///	Set target
if (follow != noone) {
	xTo = follow.x;
	yTo = follow.y;
}

/// Zoom in/out view
if (cam_zoomIn != 0) {
	cam_wview /= cam_zoomIn;
	cam_hview /= cam_zoomIn;
	cam_zoomIn = 0;
}
cam_wview += (GAME_WIDTH * cam_zoom - cam_wview) / argument0;
cam_hview += (GAME_HEIGHT * cam_zoom - cam_hview) / argument0; 

// Move cam
x += (xTo - x) / argument1;
y += (yTo - y) / argument1;

/// Shaking View
x += irandom_range(-cam_shake, cam_shake);
y += irandom_range(-cam_shake, cam_shake);
cam_angle = irandom_range(-cam_shake, cam_shake);
if (cam_shake > 0) {
    cam_shake -= cam_shake / argument2;
}

///	Move camera
vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
pm = matrix_build_projection_ortho(cam_wview, cam_hview, 1, 10000);
camera_set_view_mat(cam, vm);
camera_set_proj_mat(cam, pm);
