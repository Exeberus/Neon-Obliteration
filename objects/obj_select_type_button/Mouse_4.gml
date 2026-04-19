if (!global.is_selecting_panel || ignorate_selectPanel_block) {
	global.is_selecting_panel = true;
	switch (set_variable) {
		// Modo de ventana del juego
		case "open_WindowModePanel":
			if (!is_windowModePanel_visible) { layer_set_visible("WindowModePanel", true) } else { layer_set_visible("WindowModePanel", false) }
		break;
		case "fullscreen_mode":
			global.window_mode = 1;
			layer_set_visible("WindowModePanel", false);
			global.is_selecting_panel = false;
		break;
		case "window_mode":
			global.window_mode = 2;
			layer_set_visible("WindowModePanel", false);
			global.is_selecting_panel = false;
		break;
		case "windowed_fullscreen_mode":
			global.window_mode = 3;
			layer_set_visible("WindowModePanel", false);
			global.is_selecting_panel = false;
		break;
	}
	audio_play_sound(snd_click_on_button_success, 1, false);
}