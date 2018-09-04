
#macro GAME_WIDTH 1280
#macro GAME_HEIGHT 720

display_set_gui_size(GAME_WIDTH, GAME_HEIGHT);

surface_resize(application_surface, GAME_WIDTH, GAME_HEIGHT);
window_set_size(GAME_WIDTH, GAME_HEIGHT);