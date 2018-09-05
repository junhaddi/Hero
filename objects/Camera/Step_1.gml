///	Set view
if (!view_enabled) {
	view_set_wport(0, GAME_WIDTH);
	view_set_hport(0, GAME_HEIGHT);
	view_set_visible(0, true);
	camera_set_view_mat(cam, vm);
	camera_set_proj_mat(cam, pm);
	view_camera[0] = cam;
	view_enabled = true;
}

///	Reset window size
if (window_get_width() != GAME_WIDTH && window_get_height() != GAME_WIDTH) {
	window_set_size(GAME_WIDTH, GAME_HEIGHT);
	display_set_gui_size(GAME_WIDTH, GAME_HEIGHT);
}

///	Reset pixel perfect
if (surface_get_width(application_surface) != GAME_WIDTH * cam_zoom && surface_get_height(application_surface) != GAME_HEIGHT * cam_zoom) {
	surface_resize(application_surface, GAME_WIDTH * cam_zoom, GAME_HEIGHT * cam_zoom);
}