function elite_healingWave() {
	if (is_healingWave) {
		active_healingWaveActual ++;
		if (active_healingWaveActual >= active_healingWaveMax) {
			active_healingWaveActual = 0;
			audio_play_sound(snd_healingWave_effect, 1, false);
				
			// Activar efecto de curación
			var activate_healingWave = instance_create_layer(x, y, "Instances", obj_AoE_effect);
			activate_healingWave.effectColour = c_lime;
			activate_healingWave.effectType = "Nova";
			activate_healingWave.effectRadioTarget = healingWaveRadio;
			
			var enemieTarget = other;
			var enemieTargetID = other.id;
			var effectX = x;
			var effectY = y;
			
			// Aplicar efecto a los enemigos
			with (obj_parent_enemy) {
				if (id != enemieTargetID.id) {
					var effectApplyDist = point_distance(x, y, effectX, effectY);
					var healingRadio = other.healingWaveRadio;
					if (effectApplyDist <= healingRadio) {
						shipHealth += (shipMaxHealth * 0.10);
						
						var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
						with (textCreate) {
							textLifeTime = 90;
							textSpeed = 0.55;
							textFont = fnt_pixel_small
							textMoveDirection = "up";
							textRandomCreate_Value = 10;
							textString = "+" + string((other.shipMaxHealth * 0.10));
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
		}
	}
}