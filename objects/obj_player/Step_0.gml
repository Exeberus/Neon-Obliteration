// Movimiento
playerMovement();
move_wrap(true, true, 16);

// Disparo
function shipShoot() {
	shipWeaponActualCooldown ++;
	shipWeaponActualCooldown = clamp(shipWeaponActualCooldown, 0, shipWeaponMaxCooldown);
	
	if (mouse_check_button(mb_left) && shipWeaponActualCooldown == shipWeaponMaxCooldown) {
		player_shootBehaviour();
	}
}

// Regeneracion
function playerRegeneration() {
	shipRegenerationTimeActual ++;
	if (shipHealth < shipMaxHealth && shipRegenerationTimeActual >= shipRegenerationTime) {
		shipRegenerationTimeActual = 0;
		
		shipHealth += shipRegeneration;
		var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
		with (textCreate) {
			textLifeTime = 90;
			textSpeed = 0.55;
			textFont = fnt_pixel_small
			textMoveDirection = "up";
			textRandomCreate_Value = 10;
			textString = "+" + string(other.shipRegeneration);
			textColour1 = c_lime;
			textColour2 = c_lime;
			textColour3 = c_lime;
			textColour4 = c_lime;
			textAlpha = 1;
			textAlphaIncrease = 0.01;
			textAlphaDecrease = 0.01;
			textAlphaRoof = true;
		}
	}
}
playerRegeneration()

if (is_playerAlive) { shipShoot() }
function playerDeath() {
	if (shipHealth <= 0 && !resurrectPlayer) {
		global.shipPlayerLives --;
		audio_play_sound(snd_player_death, 1, false);
		is_playerAlive = false;
		resurrectPlayer = true;
		if (global.shipPlayerLives > 0) {
			alarm[0] = 3 * 60;
		}
	}
	
	if (is_playerAlive && image_alpha < 1) {
		image_alpha += 0.03;
	} else if (!is_playerAlive && image_alpha > 0.3) {
		image_alpha -= 0.01;
	}
}

playerDeath();
playerVariableLimit();