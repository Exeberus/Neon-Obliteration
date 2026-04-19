// Al clickear emitir sonido y cerrar ventana.
if (is_close_selectPanel) { global.is_selecting_panel = false; }
audio_play_sound(snd_click_on_button_denegate, 1, false);
layer_set_visible(get_customizationMenuId, false);