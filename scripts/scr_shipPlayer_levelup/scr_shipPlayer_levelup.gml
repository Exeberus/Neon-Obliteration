function shipPlayer_levelup_variables() {
	// Variables
	shipActualLevel = 1;
	shipMaxLevel = 10;
	shipMaxExperience = 1;
	shipExperience = 0;
	
	// Porcentajes de mejora al jugador.
	levelUp_shipPlayerAcceleration = 0.04
	levelUp_shipPlayerMaxHealth = 0.05
	levelUp_shipPlayerDefense = 0.05;
	levelUp_shipPlayerDodge = 0.05;
	levelUp_shipPlayerRegeneration = 0.20;
	levelUp_shipPlayerAttack = 0.05;
	levelUp_shipPlayerHitChance = 0.05;
	levelUp_shipPlayerCritAttack = 0.05;
	levelUp_shipPlayerCritChance = 0.05;
}

function shipPlayer_levelup() {
	// Subida de nivel.
	if (shipExperience >= shipMaxExperience && shipActualLevel < shipMaxLevel) {
		shipExperience -= shipMaxExperience;
		
		// Aumentar cantidad requerida de experiencia.
		shipMaxExperience += 3 + (shipMaxExperience * 0.20);
		shipActualLevel ++;
		
		// Reproducir sonido y crear efecto;
		audio_play_sound(snd_shipPlayer_levelUp, 1, false);
		
		var effectCreate = instance_create_layer(x, y, "Instances", obj_AoE_effect);
		with (effectCreate) {
			effectType = "Nova";
			effectColour = c_fuchsia;
			effectRadioTarget = 250;
			effectActualRadio = 0;
		}
		
		// Creat texto de Subida de nivel.
		var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
		with textCreate {
			textLifeTime = 180;
			textSpeed = 0.5;
			textFont = fnt_pixel_small_lb;
			textRandomCreate_Value = 25;
			textRandomPosition = true;
			textFollow = false;
			textToFollow = noone;
			textFollowOffset_x = 0;
			textFollowOffset_y = 0;
			textMoveDirection = "up";
			textString = "Level Up!";
			textColour1 = c_fuchsia;
			textColour2 = c_fuchsia;
			textColour3 = c_fuchsia;
			textColour4 = c_fuchsia;
			textAlpha = 1;
			textAlphaIncrease = 0;
			textAlphaDecrease = 0.01;
			textAlphaRoof = false;
		}
		// Aplicar efectos de subida de nivel.
		shipAcceleration += (global.shipPlayerAcceleration * levelUp_shipPlayerAcceleration);
		shipMaxHealth += (global.shipPlayerMaxHealth * levelUp_shipPlayerMaxHealth);
		shipDefense += (global.shipPlayerDefense * levelUp_shipPlayerDefense);
		shipDodge += (global.shipPlayerDodge * levelUp_shipPlayerDodge);
		shipRegeneration += (global.shipPlayerRegeneration * levelUp_shipPlayerRegeneration);
		shipAttack += (global.shipPlayerAttack * levelUp_shipPlayerAttack);
		shipHitChance += (global.shipPlayerHitChance * levelUp_shipPlayerHitChance);
		shipCritAttack += (global.shipPlayerCritAttack * levelUp_shipPlayerCritAttack);
		shipCritChance += (global.shipPlayerCritChance * levelUp_shipPlayerCritChance);
		
		shipActualWeapon();
		resetWeapon();
	}
	// Al nivel maximo
	if (shipActualLevel = shipMaxLevel) {
		shipExperience = 0;
	}
}