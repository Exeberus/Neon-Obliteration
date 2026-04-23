// Variables
audio_group_load(audiogroup_music);
audio_group_load(audiogroup_sfx);

global.volumenMaster = 1;
global.volumenMusic = 0.4;
global.volumenSfx = 0.6;

audio_group_set_gain(audiogroup_music, global.volumenMusic * global.volumenMaster, 0)
audio_group_set_gain(audiogroup_sfx, global.volumenSfx *  global.volumenMaster, 0)
audio_config();

menuMusic = Neon_Obliteration_Macrocosm

masterVolumenValue = layer_text_get_id("MenuConfig", "masterVolumen");
sfxVolumenValue = layer_text_get_id("MenuConfig", "sfxVolumen");
musicVolumenValue = layer_text_get_id("MenuConfig", "musicVolumen");