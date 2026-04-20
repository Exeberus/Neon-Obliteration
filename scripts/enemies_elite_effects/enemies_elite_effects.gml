function activateEliteEffects() {
	if (is_elite) {
		
		var mult = 1;
		var effectsCount = 0;
		var is_uniqueEffect = false;
		
		switch eliteType {
			case "normalElite":
				mult = 2;
				effectsCount = 1;
			break;
			
			case "megaElite":
				mult = 3;
				effectsCount = 3;
			break;
			
			case "uniqueElite":
				mult = 4;
				is_uniqueEffect = true;
			break;
		}
		enemyCreditDrop *= mult
		enemyDropChance *= mult;
		enemyDropCant += mult;
		shipMaxHealth *= mult;
		shipHealth = shipMaxHealth;
		shipWeaponBulletDamage *= mult;
		
		// Elegir efectos
		if (effectsCount >= 1) eliteEffect1 = choose("Speedy ","Resistent ","Strong ","Multishoot ","Sonic Bullet ","Dodge Expert ", "Giant ", "Healing Wave ");
		if (effectsCount >= 2) eliteEffect2 = choose("Speedy ","Resistent ","Strong ","Multishoot ","Sonic Bullet ","Dodge Expert ", "Giant ", "Healing Wave ");
		if (effectsCount >= 3) eliteEffect3 = choose("Speedy ","Resistent ","Strong ","Multishoot ","Sonic Bullet ","Dodge Expert ", "Giant ", "Healing Wave ");
		
		if (is_uniqueEffect) eliteEffect1 = choose("Assassin ","Colossus ");
		
		// Aplicar efectos
		if (eliteEffect1 != "") applyBasicEffects1();
		if (eliteEffect2 != "") applyBasicEffects2();
		if (eliteEffect3 != "") applyBasicEffects3();
	}
}

function applyBasicEffects1() {
	switch eliteEffect1 {
		case "Speedy ": shipSpeed *= 1.40; break;
		case "Strong ": shipWeaponBulletDamage *= 1.20; break;
		case "Resistent ": shipDefense *= 1.20; break;
		case "Multishoot ": shipWeaponBulletCant += 2; break;
		case "Sonic Bullet ": shipWeaponBulletSpeed *= 2.00; break;
		case "Dodge Expert ": shipDodge += 10; break;
		case "Giant ": shipMaxHealth *= 1.4; shipHealth = shipMaxHealth; image_xscale += 0.1; image_yscale += 0.1; break;
		case "Healing Wave ": is_healingWave = true; active_healingWaveMax = (5 * 60); active_healingWaveActual = 0; healingWaveRadio = 125; break;
		
		case "Assassin ": shipDodge += 10; shipSpeed += 1; shipAttack *= 1.50; shipWeaponBulletCant += 2; break
		case "Colossus ": shipMaxHealth *= 2.0; shipHealth = shipMaxHealth; shipDefense *= 1.30; shipSpeed -= 1; shipAttack *= 1.20; shipWeaponBulletSpeed *= 0.70; image_xscale += 0.4; image_yscale += 0.4; break;
	}
}
function applyBasicEffects2() {
	switch eliteEffect2 {
		case "Speedy ": shipSpeed *= 1.40; break;
		case "Strong ": shipWeaponBulletDamage *= 1.20; break;
		case "Resistent ": shipDefense *= 1.20; break;
		case "Multishoot ": shipWeaponBulletCant += 2; break;
		case "Sonic Bullet ": shipWeaponBulletSpeed *= 2.00; break;
		case "Dodge Expert ": shipDodge += 10; break;
		case "Giant ": shipMaxHealth *= 1.4; shipHealth = shipMaxHealth; image_xscale += 0.1; image_yscale += 0.1; break;
		case "Healing Wave ": is_healingWave = true; active_healingWaveMax = (5 * 60); active_healingWaveActual = 0; healingWaveRadio = 125; break;
	}
}
function applyBasicEffects3() {
	switch eliteEffect3 {
		case "Speedy ": shipSpeed *= 1.40; break;
		case "Strong ": shipWeaponBulletDamage *= 1.20; break;
		case "Resistent ": shipDefense *= 1.20; break;
		case "Multishoot ": shipWeaponBulletCant += 2; break;
		case "Sonic Bullet ": shipWeaponBulletSpeed *= 2.00; break;
		case "Dodge Expert ": shipDodge += 10; break;
		case "Giant ": shipHealth *= 1.4; image_xscale += 0.1; image_yscale += 0.1; break;
		case "Healing Wave ": is_healingWave = true; active_healingWaveMax = (5 * 60); active_healingWaveActual = 0; healingWaveRadio = 125; break;
	}
}

function usePasiveEliteEffects() {
	elite_healingWave();
}