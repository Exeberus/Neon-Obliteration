var controller = instance_find(obj_player_controller, 0);

if (controller != noone) {
	shipName = global.shipPlayer2Name;
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
	
	// Seleccion de armas
	shipWeaponSlot_1 = global.shipPlayerWeaponSlot_1
	shipWeaponSlot_1_sprite = global.shipPlayerWeaponSlot_1_icon
	
	shipWeaponSlot_2 = global.shipPlayerWeaponSlot_2
	shipWeaponSlot_2_sprite = global.shipPlayerWeaponSlot_2_icon
	
	shipWeaponSlot_3 = global.shipPlayerWeaponSlot_3
	shipWeaponSlot_3_sprite = global.shipPlayerWeaponSlot_3_icon
	
	shipActualSlot = 1;
	shipActualWeapon = shipWeaponSlot_1;
}
sprite_index = global.shipPlayer2Model;
image_blend = global.shipPlayer2Color;

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

function resetWeapon() {
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