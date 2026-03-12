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
shipDefense = 1;
shipDodge = 5;

// // Ataque de la nave.
shipAttack = 0;
shipHitChance = 1;
shipCritAttack = 1.3;
shipCritChance = 20;

// Arma
weapon = arrow_bolt_cannon;
weaponCooldown = arrow_bolt_cannon_cooldown();
cooldownReduce = 5;
shipWeaponMinCooldown = noone;
shipWeaponMaxCooldown = noone;
shipWeaponActualCooldown = noone;

// Limitadores a estas variables.
function playerVariableLimit() {
	shipHealth = clamp(shipHealth, 0, shipMaxHealth);
	shipSpeed = clamp(shipSpeed, shipMinSpeed, shipMaxSpeed);
	shipDefense = clamp(shipDefense, 0, infinity);
	shipDodge = clamp(shipDodge, 0, infinity);
	shipAttack = clamp(shipAttack, 0, infinity);
	shipCritAttack = clamp(shipCritAttack, 1.0, infinity);
	shipCritChance = clamp(shipCritChance, 0, 100);
}

// Barra de Vida
barAlpha = 0