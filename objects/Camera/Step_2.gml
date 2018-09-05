scr_camera(10, 20, 4);


///	DEBUGER
if (keyboard_check_pressed(ord("1"))) {
	cam_zoom = 0.5;
}
if (keyboard_check_pressed(ord("2"))) {
	cam_zoom = 1;
}
if (keyboard_check_pressed(ord("3"))) {
	cam_zoom = 1.5;
}
if (keyboard_check_pressed(ord("4"))) {
	cam_zoom = 2;
}

if (keyboard_check_pressed(vk_space)) {
	cam_zoomIn = 1.5;
	cam_shake += 10;
}

if (keyboard_check_pressed(vk_escape)) {
	if (window_get_fullscreen())
		window_set_fullscreen(false);
	else
		window_set_fullscreen(true);
}