audio_play_sound(snd_player_resurrect, 1, false);
is_playerAlive = true;
shipHealth = shipMaxHealth;
resurrectPlayer = false;

if (global.shipPlayerLives < 0) {
	layer_sequence_create("ScreenEffects", room_width / 2, room_height / 2, se_fadeIn);
}