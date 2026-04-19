draw_self(); // Dibujarse a sí mismo

// Dibujar efecto de muerte
playerDeathEffect = function() {
	if (!is_playerAlive) {
		deathAlpha = clamp(deathAlpha + 0.03, 0, 1)
		} else {
		deathAlpha = clamp(deathAlpha - 0.03, 0, 1);
	}
	draw_set_font(fnt_pixel_small)
	if (global.shipPlayerLives > 0) {
		draw_text_colour(x - 45, y - 45, "Player " + string(Player) + " is death. ", image_blend, image_blend, image_blend, image_blend, deathAlpha);
	} else {
		draw_text_colour(x - 35, y - 45, "Out of Lives!", image_blend, image_blend, image_blend, image_blend, deathAlpha);
	}
	draw_sprite_ext(spr_normalElite_icon, 0, x, y, 1.5, 1.5, 0, image_blend, deathAlpha);
}

// Dibujar Texto de arma
drawWeaponChangetText = function() {
	old_textFont = draw_get_font();
	weaponTextAlpha -= 0.01;
	
	draw_set_font(fnt_pixel_small)
	draw_text_colour(x - 45, y - 30, string(shipWeaponName), image_blend, image_blend, image_blend, image_blend, weaponTextAlpha)
	
	draw_set_font(old_textFont)
}

// Dibujar Barra de Salud
showHealthBar = function() {
	if (shipHealth < shipMaxHealth) {
		if (healthBarAlpha < 1) {
			healthBarAlpha += 0.20;
		}
	}
	else if (shipHealth >= shipMaxHealth) {
		if (healthBarAlpha > 0) {
			healthBarAlpha -= 0.20;
		}
	}
}
drawHealthBar = function() {
	var barWidth = 50;
	var barHeight = 5;

	var shipHealthPercent = shipHealth / shipMaxHealth;
	draw_set_alpha(healthBarAlpha);

	// Salud Restante
	draw_set_colour(c_black)
	draw_rectangle(x - barWidth / 2, y + 20, x + barWidth / 2, y + 20 + barHeight, false);

	// Color de la barra
	var barColour = merge_colour(c_red, c_lime, shipHealthPercent)
	draw_set_colour(barColour);

	// Salud Actual
	draw_rectangle(
		x - barWidth / 2,
		y + 20,
		x - barWidth / 2 + barWidth * shipHealthPercent,
		y + 20 + barHeight,
		true
	);
	draw_set_alpha(1)
}

// Dibujar Barra de Cooldown
showCooldownBar = function() {
	if (shipWeaponActualCooldown < shipWeaponMaxCooldown) {
		if (cooldownBarAlpha < 1) {
			cooldownBarAlpha += 0.20;
		}
	}
	else if (shipWeaponActualCooldown >= shipWeaponMaxCooldown) {
		if (cooldownBarAlpha > 0) {
			cooldownBarAlpha -= 0.05;
		}
	}
}
drawCooldownBar = function() {
	if (healthBarAlpha > 0) {
		barPositionY = (y + 10);
	} else {
		barPositionY = (y + 0);
	}
	
	var barWidth = 50;
	var barHeight = 5;

	var shipCooldownPercent = shipWeaponActualCooldown / shipWeaponMaxCooldown;
	draw_set_alpha(cooldownBarAlpha);

	// Salud Restante
	draw_set_colour(c_black)
	draw_rectangle(x - barWidth / 2, barPositionY + 20, x + barWidth / 2, barPositionY + 20 + barHeight, false);

	// Color de la barra
	var barColour = merge_colour(c_yellow, c_orange, shipCooldownPercent)
	draw_set_colour(barColour);

	// Salud Actual
	draw_rectangle(
		x - barWidth / 2,
		barPositionY + 20,
		x - barWidth / 2 + barWidth * shipCooldownPercent,
		barPositionY + 20 + barHeight,
		true
	);
	draw_set_alpha(1)
}

// Dibujar linea de Punteria
drawAimLineEffect = function() {
	var aimlength_x = x + lengthdir_x(250, image_angle);
	var aimlength_y = y + lengthdir_y(250, image_angle);
	
	draw_set_alpha(aimLineAlpha);
	draw_line_colour(x, y, aimlength_x, aimlength_y, image_blend, image_blend);
	draw_sprite_ext(spr_mouseCursorCombat, 0, aimlength_x, aimlength_y, 1, 1, 0, image_blend, aimLineAlpha);
	if (gamepad_button_check(0, gp_shoulderrb)) { aimLineAlpha = clamp(aimLineAlpha + 0.08, 0, 0.8) } else { aimLineAlpha = clamp(aimLineAlpha - 0.16, 0, 0.8) };
	draw_set_alpha(0);
}
	
// Mostrar Datos de jugador
showShipInfo = function() {
	if (gamepad_button_check_pressed(0, gp_stickr)) { showShipData = !showShipData };
	if (showShipData) {
			old_textFont = draw_get_font();
			
			draw_set_font(fnt_pixel_small)
			draw_text_colour(x - 45, y - 40, "Player " + string(Player), image_blend, image_blend, image_blend, image_blend, 1)
			
			draw_set_font(old_textFont)
			healthBarAlpha = 1;
			cooldownBarAlpha = 1;
			weaponTextAlpha = 1;
	} else {
			healthBarAlpha = healthBarAlpha;
			cooldownBarAlpha = cooldownBarAlpha;
			weaponTextAlpha -= 0.01;
	}
}

showShipInfo();

drawHealthBar(); // Dibujar Barra
showHealthBar(); // Mostrar Barra

drawCooldownBar(); // Dibujar Barra
showCooldownBar();	// Mostrar Barra

drawWeaponChangetText(); // Dibujar Texto de arma
playerDeathEffect(); // Dibujar efecto de muerte

drawAimLineEffect(); //Dibujar linea de Punteria