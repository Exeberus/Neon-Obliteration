function audio_config() {
	audio_group_set_gain(audiogroup_sfx, global.volumenSfx * global.volumenMaster, 0);
    audio_group_set_gain(audiogroup_music, global.volumenMusic * global.volumenMaster, 0);
}