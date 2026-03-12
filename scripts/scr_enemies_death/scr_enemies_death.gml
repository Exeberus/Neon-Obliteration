function scr_enemies_death() {
	// Detectar Muerte.
	if (shipHealth <= 0) {
		if (is_smallShip) {
			var smallExplotionSound = choose(snd_small_exeberus_ship_death_1, snd_small_exeberus_ship_death_2, snd_small_exeberus_ship_death_3);
			audio_play_sound(smallExplotionSound, 1, false);
		}
		instance_destroy();
	}
}