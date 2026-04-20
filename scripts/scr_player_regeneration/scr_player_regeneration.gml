function player_regeneration() {
	if (is_playerAlive) {
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
				textColour3 = c_aqua;
				textColour4 = c_aqua;
				textAlpha = 1;
				textAlphaIncrease = 0.01;
				textAlphaDecrease = 0.01;
				textAlphaRoof = true;
			}
		}
	}
}