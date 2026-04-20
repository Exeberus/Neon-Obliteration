if (is_elite) {
	eliteDrawEffects();
	var mouseDistance = point_distance(x, y, mouse_x, mouse_y);
	if (mouseDistance < 30) { eliteDataAlpha = 1; } else {  eliteDataAlpha = 0; }
	
	get_oldFont = draw_get_font();
	var eliteEffectColor = noone;
	var eliteEffectSize = 0;
	switch (eliteType) {
		case "normalElite":
			eliteEffectColor = c_aqua;
			eliteEffectSize = 0.1;
		break;
		case "megaElite":
			eliteEffectColor = c_yellow;
			eliteEffectSize = 0.2;
		break;
		case "uniqueElite":
			eliteEffectColor = c_fuchsia;
			eliteEffectSize = 0.3;
		break;
	}
	
	var eliteEffect1_stringWidth = string_width(eliteEffect1);
	var eliteEffect2_stringWidth = string_width(eliteEffect2);
	var eliteEffect3_stringWidth = string_width(eliteEffect3);
	
	// Texto y color de efecto Elite
	draw_sprite_ext(sprite_index, 0, x, y, (image_xscale + eliteEffectSize), (image_yscale + eliteEffectSize), image_angle, eliteEffectColor, image_alpha);

	var barWidth = 240;
	var barHeight = 16;
	
	var shipHealthPercent = shipHealth / shipMaxHealth;
	draw_set_alpha(eliteDataAlpha);

	// Salud Restante
	draw_set_colour(c_black)
	draw_rectangle(room_width / 2 - barWidth / 2, 5, room_width / 2 + barWidth / 2, 5 + barHeight, false);

	// Color de la barra
	var barColour = merge_colour(eliteEffectColor, eliteEffectColor, shipHealthPercent)
	draw_set_colour(barColour);

	// Salud Actual
	draw_rectangle(
		room_width / 2 - barWidth / 2,
		5,
		room_width / 2 - barWidth / 2 + barWidth * shipHealthPercent,
		5 + barHeight,
		true
	);
	draw_set_font(fnt_pixel_small);
	switch (eliteType) {
		case "normalElite":
			draw_sprite_ext(spr_normalElite_icon, 0, room_width / 2 - 110, 13, 1, 1, 0, eliteEffectColor, eliteDataAlpha);
			draw_text_color(room_width / 2 - 120, 25, string(eliteEffect1), eliteEffectColor, eliteEffectColor, eliteEffectColor, eliteEffectColor, eliteDataAlpha);
		break;
		case "megaElite":
			draw_sprite_ext(spr_megaElite_icon, 0, room_width / 2 - 110, 13, 1, 1, 0, eliteEffectColor, eliteDataAlpha);
			draw_text_color(room_width / 2 - 120, 25, string(eliteEffect1) + "| " + string(eliteEffect2) + "| " + string(eliteEffect3), eliteEffectColor, eliteEffectColor, eliteEffectColor, eliteEffectColor, eliteDataAlpha);
		break;
		case "uniqueElite":
			draw_sprite_ext(spr_uniqueElite_icon, 0, room_width / 2 - 110, 14, 1, 1, 0, eliteEffectColor, eliteDataAlpha);
			draw_text_color(room_width / 2 - 120, 25, string(eliteEffect1), eliteEffectColor, eliteEffectColor, eliteEffectColor, eliteEffectColor, eliteDataAlpha);
		break;
	}
	
	var nameString = string_width(shipName)
	var nameStringLevel = string_width(shipLevel)
	
	draw_text_color(room_width / 2 - nameString / 2, 8, string(shipName), eliteEffectColor, eliteEffectColor, eliteEffectColor, eliteEffectColor, eliteDataAlpha);
	draw_text_color(room_width / 2 + 85, 25, "LvL: " + string(shipLevel), c_white, c_white, c_white, c_white, eliteDataAlpha);
	
	
	draw_set_alpha(1)
	draw_set_font(get_oldFont);
	draw_set_colour(c_white);
}

draw_self();

function eliteDrawEffects() {
	eliteAuraRot ++;
	if (is_healingWave) {
	draw_sprite_ext(spr_healingAura, 0, x, y, 1 + image_xscale, 1 + image_yscale, eliteAuraRot, c_white, 0.70);
	}
}