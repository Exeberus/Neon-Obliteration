if (!global.is_menuOpen) {
	audio_play_sound(snd_mouse_on_button, 0, false);
	image_xscale += 0.1;
	image_yscale += 0.1;
	mouseIn = true;
}