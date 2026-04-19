// Al clickear emitir sonido y cerrar ventana.
var is_layerVisible = layer_get_visible(string(layerId))
if (is_layerVisible == false) {
	audio_play_sound(snd_click_on_button_success, 1, false);
	layer_set_visible(layerId, true);
} else {
	audio_play_sound(snd_click_on_button_denegate, 1, false);
	layer_set_visible(layerId, false);
}