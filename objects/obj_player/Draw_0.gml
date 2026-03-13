draw_self(); // Dibujarse a sí mismo

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

drawHealthBar(); // Dibujar Barra
showHealthBar(); // Mostrar Barra

drawCooldownBar(); // Dibujar Barra
showCooldownBar();	// Mostrar Barra

draw_text(15, 30, "Cooldown: " + string(shipWeaponActualCooldown))