draw_self(); // Dibujarse a sí mismo

// Dibujar Barra de Salud
showHealthBar = function() {
	if (shipHealth < shipMaxHealth) {
		if (barAlpha < 1) {
			barAlpha += 0.20;
		}
	}
	else if (shipHealth >= shipMaxHealth) {
		if (barAlpha > 0) {
			barAlpha -= 0.20;
		}
	}
}
drawHealthBar = function() {
	var barWidth = 50;
	var barHeight = 5;

	var shipHealthPercent = shipHealth / shipMaxHealth;
	draw_set_alpha(barAlpha);

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

drawHealthBar(); // Dibujar Barra
showHealthBar(); // Mostrar Barra