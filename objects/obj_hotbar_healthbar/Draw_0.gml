drawHealthBar = function() {
	var barWidth = 90;
	var barHeight = 12;
	var shipHealthPercent = noone;
	
	switch (player) {
		case 1:
			shipHealthPercent = obj_player.shipHealth / obj_player.shipMaxHealth;
		break;
		case 2:
			shipHealthPercent = obj_player_2.shipHealth / obj_player_2.shipMaxHealth;
		break;
	}
	draw_set_alpha(1);

	// Salud Restante
	draw_set_colour(c_black)
	draw_rectangle(
		x - barWidth / 2,
		y,
		x + barWidth / 2,
		y + barHeight,
		false
		);

	// Color de la barra
	var barColour = merge_colour(c_red, c_lime, shipHealthPercent)
	draw_set_colour(barColour);

	// Salud Actual
	draw_rectangle(
		x - barWidth / 2,
		y,
		x - barWidth / 2 + barWidth * shipHealthPercent,
		y + barHeight,
		true
	);
	
	draw_set_alpha(1)
}
	
drawHealthBar()