// Colisión con el jugador.
function collisionOnPlayer() {
	var hitChance = irandom(100);
	if (hitChance > (other.shipDodge)) { // Detectar si Dodgeo o no.
		var damageInflict = (shipHealth - other.shipDefense)
		 
		if (damageInflict > 0) { // Si no dodgeo, y damageInflict es mayor a 0 entonces hacer daño.
			other.shipHealth -= damageInflict;
			var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
			with textCreate {
				textLifeTime = 90;
				textSpeed = 0.6;
				textFont = fnt_pixel_small;
				textMoveDirection = "up";
				textRandomCreate_Value = 10;
				textString = "-" + string(damageInflict);
				textColour1 = c_red;
				textColour2 = c_red;
				textColour3 = c_red;
				textColour4 = c_red;
				textAlpha = 1;
				textAlphaIncrease = 0.02;
				textAlphaDecrease = 0.01;
				textAlphaRoof = true;
			}
		} else { // Si no dodgeo, y damageInflict es menor o igual a 0 entonces resistir daño.
			var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
			with textCreate {
				textLifeTime = 90;
				textSpeed = 0.6;
				textFont = fnt_pixel_small;
				textMoveDirection = "up";
				textRandomCreate_Value = 10;
				textString = "You Resist!";
				textColour1 = c_lime;
				textColour2 = c_lime;
				textColour3 = c_aqua;
				textColour4 = c_aqua;
				textAlpha = 1;
				textAlphaIncrease = 0.02;
				textAlphaDecrease = 0.01;
				textAlphaRoof = true;
			}
		}
		shipHealth = 0;
	} else { // Si dodgeo, no infligir daño.
		var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
		with textCreate {
			textLifeTime = 90;
			textSpeed = 0.6;
			textFont = fnt_pixel_small;
			textMoveDirection = "up";
			textRandomCreate_Value = 10;
			textString = "You Dodge!";
			textColour1 = c_lime;
			textColour2 = c_lime;
			textColour3 = c_aqua;
			textColour4 = c_aqua;
			textAlpha = 1;
			textAlphaIncrease = 0.02;
			textAlphaDecrease = 0.01;
			textAlphaRoof = true;
		}
		shipHealth = 0;
	}
}

if (other.is_playerAlive) {
	collisionOnPlayer();
}