// Cambiar de modelo al clickear
switch (global.playerSelected) {
	case 1:
		if (global.shipPlayerModel != modelId) {
			audio_play_sound(snd_click_on_button_success, 1, false);
			global.shipPlayerModel = modelId;
			global.shipPlayerName = modelName;
			obj_preview_icon.shipModel = modelId;
		} else {
			audio_play_sound(snd_click_on_button_denegate, 1, false);
		}
	break;
	case 2:
		if (global.shipPlayer2Model != modelId) {
			audio_play_sound(snd_click_on_button_success, 1, false);
			global.shipPlayer2Model = modelId;
			global.shipPlayer2Name = modelName;
			obj_preview_icon.shipModel = modelId;
		} else {
			audio_play_sound(snd_click_on_button_denegate, 1, false);
		}
	break;
}