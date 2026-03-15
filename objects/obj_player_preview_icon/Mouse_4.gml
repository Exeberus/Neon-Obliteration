global.playerSelected = player;
if (global.playerSelected != player) {
	audio_play_sound(snd_click_on_button_success, 1, false)
} else {
	audio_play_sound(snd_click_on_button_denegate, 1, false)
}
var objectId = id
with (obj_preview_icon) {
	shipModel = objectId.p_shipModel;
	shipModelName = objectId.p_shipModelName;
	shipColor = objectId.p_shipColor;
}