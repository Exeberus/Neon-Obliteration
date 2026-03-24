function enemies_death() {
	// Detectar Muerte.
	if (shipHealth <= 0) {
		if (is_smallShip) {
			var smallExplotionSound = choose(snd_small_exeberus_ship_death_1, snd_small_exeberus_ship_death_2, snd_small_exeberus_ship_death_3);
			audio_play_sound(smallExplotionSound, 1, false);
		}
		instance_destroy();
	}
}

function asteroid_death() {
	// Detectar Muerte.
	if (shipHealth <= 0) {
		if (asteroidSize = "Small Asteroid") {
			var smallExplotionSound = choose(snd_small_exeberus_ship_death_1, snd_small_exeberus_ship_death_2, snd_small_exeberus_ship_death_3);
			audio_play_sound(smallExplotionSound, 1, false);
		}
		else if (asteroidSize = "Medium Asteroid") {
			for (var i = 0; i < 2; i++) {
				var asteroidDivide = instance_create_layer(x, y, "Instances", obj_asteroid);
				with (asteroidDivide) {
					shipDirection = random(360);
					shipRotSpeed = irandom_range(0.1, 0.5);
				}
			}
		}
		instance_destroy();
	}
}