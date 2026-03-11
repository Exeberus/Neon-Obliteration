function playerVariables() {
	shipName = "The Crow";
	shipLevel = 1;
	
	// Movimiento.
	shipSpeed = 0;
	shipAcceleration = 0.10
	shipMinSpeed = 0;
	shipMaxSpeed = 4;
	
	shipRotationSpeed = 2;
	shipMinRotationSpeed = 2;
	shipMaxRotationSpeed = 12;
	
	shipDirection = 90;
	
	// // Defensa de la nave.
	shipMaxHealth = 20;
	shipHealth = shipMaxHealth;
	shipDefense = 2;
	shipDodge = 50;
	
	// // Ataque de la nave.
	shipAttack = 1;
	shipHitChance = 1;
	shipCritAttack = 1.3;
	shipCritChance = 10;
	
	// Arma
	weapon = arrow_bolt_cannon;
	weaponCooldown = arrow_bolt_cannon_cooldown();
	cooldownReduce = 2;
	shipWeaponMinCooldown = noone;
	shipWeaponMaxCooldown = noone;
	shipWeaponActualCooldown = noone;
}

function playerVariableLimit() {
	// Limitadores a estas variables.
	shipHealth = clamp(shipHealth, 0, shipMaxHealth);
	shipSpeed = clamp(shipSpeed, shipMinSpeed, shipMaxSpeed);
	shipDefense = clamp(shipDefense, 0, infinity);
	shipDodge = clamp(shipDodge, 0, infinity);
	shipAttack = clamp(shipAttack, 0, infinity);
	shipCritAttack = clamp(shipCritAttack, 1.0, infinity);
	shipCritChance = clamp(shipCritChance, 0, 100);
}