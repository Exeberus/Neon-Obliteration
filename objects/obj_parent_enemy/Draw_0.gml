if (is_elite) {
	get_oldFont = draw_get_font();
	var eliteEffectColor = noone;
	var eliteEffectSize = 0;
	switch (eliteType) {
		case "normalElite":
			eliteEffectColor = c_aqua;
			eliteEffectSize = 1.1;
		break;
		case "megaElite":
			eliteEffectColor = c_yellow;
			eliteEffectSize = 1.2
		break;
		case "uniqueElite":
			eliteEffectColor = c_fuchsia;
			eliteEffectSize = 1.3
		break;
	}
	
	// Texto y color de efecto Elite
	draw_set_font(fnt_pixel_small);
	draw_text_color(x - 20, y - 45, "Level: "+ string(shipLevel), eliteEffectColor, eliteEffectColor, eliteEffectColor, eliteEffectColor, image_alpha);
	draw_text_color(x - 20, y - 35, string(eliteEffect1) + string(eliteEffect2) + string(eliteEffect3), eliteEffectColor, eliteEffectColor, eliteEffectColor, eliteEffectColor, image_alpha);
	draw_sprite_ext(sprite_index, 0, x, y, eliteEffectSize, eliteEffectSize, image_angle, eliteEffectColor, image_alpha);

	var barWidth = 50;
	var barHeight = 5;
	
	var shipHealthPercent = shipHealth / shipMaxHealth;
	draw_set_alpha(1);

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
	draw_set_font(get_oldFont);
}

draw_self();