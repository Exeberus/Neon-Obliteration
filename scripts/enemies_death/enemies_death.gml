function enemies_death() {
	// Detectar Muerte.
	if (shipHealth <= 0) {
		if (is_lightEnemy) {
			var smallExplotionSound = choose(snd_small_exeberus_ship_death_1, snd_small_exeberus_ship_death_2, snd_small_exeberus_ship_death_3);
			audio_play_sound(smallExplotionSound, 1, false);
		}
		currency_drop();
		consumable_drop();
		instance_destroy();
	}
}

function asteroid_death() {
	// Detectar Muerte.
	if (shipHealth <= 0) {
		currency_drop();
		var smallExplotionSound = choose(snd_small_exeberus_ship_death_1, snd_small_exeberus_ship_death_2, snd_small_exeberus_ship_death_3);
		audio_play_sound(smallExplotionSound, 1, false);
		if (asteroidSize = "Small Asteroid") {
		}
		else if (asteroidSize = "Medium Asteroid") {
			
			for (var i = 0; i < 2; i++) {
				var asteroidDivide = instance_create_layer(x, y, "Instances", obj_asteroid);{
					asteroidDivide.shipDirection = random(360);
					asteroidDivide.shipRotSpeed = irandom_range(0.1, 0.5);
					asteroidDivide.asteroidSize = "Small Asteroid";
					asteroidDivide.sprite_index = choose(spr_asteroid_1_small, spr_asteroid_2_small, spr_asteroid_3_small, spr_asteroid_4_small, spr_asteroid_5_small);
					asteroidDivide.image_blend = other.image_blend;
					asteroidDivide.shipSpawnAlpha = 0.50;
				}
			}
		}
		instance_destroy();
	}
}