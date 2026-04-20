function player_death() {
	if (!is_playerAlive) shipHealth += clamp((shipMaxHealth * 0.0033), 0, shipMaxHealth);
	
	if (shipHealth <= 0 && !resurrectPlayer) {
		global.shipPlayerLives --;
		audio_play_sound(snd_player_death, 1, false);
		is_playerAlive = false;
		resurrectPlayer = true;
	}
	if (!is_playerAlive && shipHealth >= shipMaxHealth && global.shipPlayerLives >= 0) {
			player_resurrect();
	}
	
	if (is_playerAlive && image_alpha < 1) {
		image_alpha += 0.03;
	} else if (!is_playerAlive && image_alpha > 0.3) {
		image_alpha -= 0.01;
	}
	
	function player_resurrect() {
		audio_play_sound(snd_player_resurrect, 1, false);
		is_playerAlive = true;
		shipHealth = shipMaxHealth;
		resurrectPlayer = false;
	}
}