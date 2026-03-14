// Cambiar de color al clickear
switch (global.playerSelected) {
	case 1:
	if (global.shipPlayerColor != colorId) {
		audio_play_sound(snd_click_on_button_success, 1, false);
		global.shipPlayerColor = colorId;
		obj_preview_icon.shipColor = colorId;
	} else {
		audio_play_sound(snd_click_on_button_denegate, 1, false);
	}
	break;
	case 2:
	if (global.shipPlayer2Color != colorId) {
		audio_play_sound(snd_click_on_button_success, 1, false);
		global.shipPlayer2Color = colorId;
		obj_preview_icon.shipColor = colorId;
	} else {
		audio_play_sound(snd_click_on_button_denegate, 1, false);
	}
	break;
}