function activateEliteEffects() {
	if (is_elite) {
		switch eliteType {
			case "normalElite":
				shipMaxHealth *= 2;
				shipHealth = shipMaxHealth;
				shipWeaponBulletDamage *= 2;
				
				eliteEffect1 = choose(
				"Speedy - ", 
				"Resistent - ", 
				"Strong - ", 
				"Multishoot - ",
				"Sonic Bullet - ",
				"Dodge Expert - "
				);
				
			break;
			case "megaElite":
				shipMaxHealth *= 3;
				shipHealth = shipMaxHealth;
				shipWeaponBulletDamage *= 3;
				
				eliteEffect1 = choose(
				"Speedy - ", 
				"Resistent - ", 
				"Strong - ", 
				"Multishoot - ",
				"Sonic Bullet - ",
				"Dodge Expert - "
				);
				eliteEffect2 = choose(
				"Speedy - ", 
				"Resistent - ", 
				"Strong - ", 
				"Multishoot - ",
				"Sonic Bullet - ",
				"Dodge Expert - "
				);
				eliteEffect3 = choose(
				"Speedy - ", 
				"Resistent - ", 
				"Strong - ", 
				"Multishoot - ",
				"Sonic Bullet - ",
				"Dodge Expert - "
				);
			break;
			case "uniqueElite":
				shipMaxHealth *= 4;
				shipHealth = shipMaxHealth;
				shipWeaponBulletDamage *= 4;
				
				eliteEffect1 = choose(
				"Speedy - ", 
				"Resistent - ", 
				"Strong - ", 
				"Multishoot - ",
				"Sonic Bullet - ",
				"Dodge Expert - "
				);
			break;
		}
		
		if (eliteEffect1 != "") {
			// Efecto
			applyBasicEffects1();
		}
		if (eliteEffect2 != "") {
			// Efecto
			applyBasicEffects2();
		}
		if (eliteEffect3 != "") {
			// Efecto
			applyBasicEffects3();
		}
	}
}

function applyBasicEffects1() {
	switch eliteEffect1 {
		case "Speedy - ":
			shipSpeed *= 1.20;
		break;
		case "Strong - ":
			shipWeaponBulletDamage *= 1.20;
		break;
		case "Resistent - ":
			shipDefense *= 1.20;
		break;
		case "Multishoot - ":
			shipWeaponBulletCant += 2;
		break;
		case "Sonic Bullet - ":
			shipWeaponBulletSpeed *= 1.20;
		break;
		case "Dodge Expert - ":
			shipDodge += 5;
		break;
	}
}
function applyBasicEffects2() {
	switch eliteEffect2 {
		case "Speedy - ":
			shipSpeed *= 1.20;
		break;
		case "Strong - ":
			shipWeaponBulletDamage *= 1.20;
		break;
		case "Resistent - ":
			shipDefense *= 1.20;
		break;
		case "Multishoot - ":
			shipWeaponBulletCant += 2;
		break;
		case "Sonic Bullet - ":
			shipWeaponBulletSpeed *= 1.20;
		break;
		case "Dodge Expert - ":
			shipDodge += 5;
		break;
	}
}
function applyBasicEffects3() {
	switch eliteEffect3 {
		case "Speedy - ":
			shipSpeed *= 1.20;
		break;
		case "Strong - ":
			shipWeaponBulletDamage *= 1.20;
		break;
		case "Resistent - ":
			shipDefense *= 1.20;
		break;
		case "Multishoot - ":
			shipWeaponBulletCant += 2;
		break;
		case "Sonic Bullet - ":
			shipWeaponBulletSpeed *= 1.20;
		break;
		case "Dodge Expert - ":
			shipDodge += 5;
		break;
	}
}