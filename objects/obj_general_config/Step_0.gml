// Modo de Ventana
switch (global.window_mode) {
	case 1:
		window_set_fullscreen(true);
		layer_text_text(get_menuConfig_text, "Fullscreen Mode");
	break;
	
	case 2:
		window_set_fullscreen(false);
		window_set_showborder(true);
		window_set_size(1280, 720);
		window_center();
		layer_text_text(get_menuConfig_text, "Window Mode");
	break;
	
	case 3:
		window_set_fullscreen(false);
			
		var w = display_get_width();
		var h = display_get_height();
		
		window_set_size(w, h);
		window_set_position(0, 0);
		window_set_showborder(false);
		layer_text_text(get_menuConfig_text, "Borderless Mode");
	break;
}