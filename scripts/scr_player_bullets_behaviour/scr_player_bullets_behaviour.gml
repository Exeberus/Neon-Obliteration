function normalCollision() {

	// Detectar si la bala acertó.
	var hitChance = irandom(100);
	var critChance = irandom(100);

	if (hitChance > (other.shipDodge - obj_player.shipHitChance)) { // Hit

		// CRITICO
		if (critChance <= obj_player.shipCritChance || obj_player.shipCritChance == 100) {

			var damageInflict = (bulletDamage * obj_player.shipCritAttack - other.shipDefense);

			if (damageInflict > 0) {

				other.shipHealth -= damageInflict;
				audio_play_sound(bulletImpactSound, 0, false);

				var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
				with (textCreate) {
					textLifeTime = 90;
					textSpeed = 0.65;
					textFont = fnt_pixel_small_lb
					textMoveDirection = "up";
					textRandomCreate_Value = 10;
					textString = "-" + string(damageInflict) + " Crit!";
					textColour1 = c_red;
					textColour2 = c_red;
					textColour3 = c_orange;
					textColour4 = c_orange;
					textAlpha = 1;
					textAlphaIncrease = 0.05;
					textAlphaDecrease = 0.01;
					textAlphaRoof = true;
				}

			} else { // Resist critico

				audio_play_sound(bulletImpactSound, 0, false);

				var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
				with (textCreate) {
					textLifeTime = 90;
					textSpeed = 0.6;
					textFont = fnt_pixel_small;
					textMoveDirection = "up";
					textRandomCreate_Value = 10;
					textString = "Resist!";
					textColour1 = c_orange;
					textColour2 = c_orange;
					textColour3 = c_red;
					textColour4 = c_red;
					textAlpha = 1;
					textAlphaIncrease = 0.02;
					textAlphaDecrease = 0.01;
					textAlphaRoof = true;
				}
			}

		} else { // DAÑO NORMAL

			var damageInflict = (bulletDamage - other.shipDefense);

			if (damageInflict > 0) {

				other.shipHealth -= damageInflict;
				audio_play_sound(bulletImpactSound, 0, false);

				var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
				with (textCreate) {
					textLifeTime = 90;
					textSpeed = 0.55;
					textFont = fnt_pixel_small
					textMoveDirection = "up";
					textRandomCreate_Value = 10;
					textString = "-" + string(damageInflict);
					textColour1 = c_red;
					textColour2 = c_red;
					textColour3 = c_red;
					textColour4 = c_red;
					textAlpha = 1;
					textAlphaIncrease = 0.01;
					textAlphaDecrease = 0.01;
					textAlphaRoof = true;
				}

			} else { // Resist normal

				audio_play_sound(bulletImpactSound, 0, false);

				var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
				with (textCreate) {
					textLifeTime = 90;
					textSpeed = 0.6;
					textFont = fnt_pixel_small
					textMoveDirection = "up";
					textRandomCreate_Value = 10;
					textString = "Resist!";
					textColour1 = c_orange;
					textColour2 = c_orange;
					textColour3 = c_red;
					textColour4 = c_red;
					textAlpha = 1;
					textAlphaIncrease = 0.02;
					textAlphaDecrease = 0.01;
					textAlphaRoof = true;
				}
			}
		}

		instance_destroy();

	} else { // Dodge

		var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
		with (textCreate) {
			textLifeTime = 90;
			textSpeed = 0.6;
			textFont = fnt_pixel_small
			textMoveDirection = "up";
			textRandomCreate_Value = 10;
			textString = "Dodge!";
			textColour1 = c_orange;
			textColour2 = c_orange;
			textColour3 = c_red;
			textColour4 = c_red;
			textAlpha = 1;
			textAlphaIncrease = 0.02;
			textAlphaDecrease = 0.01;
			textAlphaRoof = true;
		}

		instance_destroy();
	}
}

function normalProyectile() {
	x += lengthdir_x(bulletSpeed, bulletDirection);
	y += lengthdir_y(bulletSpeed, bulletDirection);
}