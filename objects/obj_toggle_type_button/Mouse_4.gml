if (!global.is_selecting_panel || ignorate_selectPanel_block) {
	switch (set_variable) {
		case "show_damageIndicator":
			global.show_damageIndicator = !global.show_damageIndicator;
		break;
		case "show_currencyIndicator":
			global.show_currencyIndicator = !global.show_currencyIndicator;
		break;
	}
	if (!is_toggle) { audio_play_sound(snd_click_on_button_success, 1, false); } else { audio_play_sound(snd_click_on_button_denegate, 1, false); }
}