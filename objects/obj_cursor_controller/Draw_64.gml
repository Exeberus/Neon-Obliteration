if (!showWindowsCursor) {
	window_set_cursor(cr_none);
	if (room != rm_level) {
		draw_sprite_ext(spr_mouseCursor, 0, mouse_x, mouse_y, 1, 1, 0, c_white, 1)
	} else {
		draw_sprite_ext(spr_mouseCursorCombat, 0, mouse_x, mouse_y, 1, 1, 0, global.shipPlayerColor, 1)
	}	
} else {
	window_set_cursor(cr_default);
}