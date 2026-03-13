var controller = instance_find(obj_player_controller, 0);

if (controller != noone) {
	shipName = global.shipPlayerName;
	shipLevel = global.shipPlayerLevel;

	// Movimiento.
	shipSpeed = global.shipPlayerSpeed;
	shipAcceleration = global.shipPlayerAcceleration;
	shipMinSpeed = global.shipPlayerMinSpeed;
	shipMaxSpeed = global.shipPlayerMaxSpeed;

	shipRotationSpeed = global.shipPlayerRotationSpeed;
	shipMinRotationSpeed = global.shipPlayerMinRotationSpeed;
	shipMaxRotationSpeed = global.shipPlayerMaxRotationSpeed;

	shipDirection = global.shipPlayerDirection;

	// // Defensa de la nave.
	shipMaxHealth = global.shipPlayerMaxHealth;
	shipHealth = global.shipPlayerMaxHealth;
	shipDefense = global.shipPlayerDefense;
	shipDodge = global.shipPlayerDodge;

	// // Ataque de la nave.
	shipAttack = global.shipPlayerAttack;
	shipHitChance = global.shipPlayerHitChance;
	shipCritAttack = global.shipPlayerCritAttack;
	shipCritChance = global.shipPlayerCritChance;
	
	// Arma y comportamiento de esta.
	shipWeaponName = global.shipPlayerWeaponName;
	shipWeaponBulletBehaviour = global.shipPlayerWeaponBulletBehaviour;
	shipWeaponBulletCollision = global.shipPlayerWeaponBulletCollision;
	shipWeaponMaxCooldown = global.shipPlayerWeaponMaxCooldown;
	shipWeaponActualCooldown = global.shipPlayerWeaponActualCooldown;

	shipWeaponBulletDamage = global.shipPlayerWeaponBulletDamage;
	shipWeaponBulletCant = global.shipPlayerWeaponBulletCant;
	shipWeaponBulletSpeed = global.shipPlayerWeaponBulletSpeed;
	shipWeaponBulletSprite = global.shipPlayerWeaponBulletSprite;
	shipWeaponBulletLifeTime = global.shipPlayerWeaponBulletLifeTime;
	
	shipWeaponSound = global.shipPlayerWeaponSound;
	shipWeaponImpactSound = global.shipPlayerWeaponImpactSound;
}
sprite_index = global.shipPlayerModel;
image_blend = global.shipPlayerColor;

function playerVariableLimit() {
	shipHealth = clamp(shipHealth, 0, shipMaxHealth);
	shipSpeed = clamp(shipSpeed, shipMinSpeed, shipMaxSpeed);
	shipDefense = clamp(shipDefense, 0, infinity);
	shipDodge = clamp(shipDodge, 0, infinity);
	shipAttack = clamp(shipAttack, 0, infinity);
	shipCritAttack = clamp(shipCritAttack, 1.0, infinity);
	shipCritChance = clamp(shipCritChance, 0, 100);
}

// Barras de Vida y Cooldown
healthBarAlpha = 0
cooldownBarAlpha = 0
barPositionY = (y + 0);
