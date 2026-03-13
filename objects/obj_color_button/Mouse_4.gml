// Cambiar de color al clickear
if (global.shipPlayerColor != colorId) {
	audio_play_sound(snd_click_on_button_success, 1, false);
	global.shipPlayerColor = colorId;
	obj_preview_icon.shipColor = colorId;
} else {
	audio_play_sound(snd_click_on_button_denegate, 1, false);
}