var controller = instance_find(obj_player_controller, 0);

if (controller != noone) {
	shipName = global.shipPlayerName;
	shipPlayer_levelup_variables();
	Player = 1;
	deathAlpha = 0;
	resurrectPlayer = false;
	is_playerAlive = true;

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
	shipRegeneration = global.shipPlayerRegeneration;
	shipRegenerationTime = global.shipPlayerRegenerationTime;
	shipRegenerationTimeActual = global.shipPlayerRegenerationTimeActual;

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
	shipWeaponBulletWaitToPersecute = global.shipPlayerWeaponBulletWaitToPersecute;
	shipWeapon_is_AoE = global.shipPlayerWeapon_is_AoE;
	shipWeaponAoERange = global.shipPlayerWeaponAoERange;
	
	shipWeaponSound = global.shipPlayerWeaponSound;
	shipWeaponImpactSound = global.shipPlayerWeaponImpactSound;
	
	// Seleccion de armas
	shipWeaponSlot_1 = global.shipPlayerWeaponSlot_1_p1
	shipWeaponSlot_1_sprite = global.shipPlayerWeaponSlot_1_icon_p1
	
	shipWeaponSlot_2 = global.shipPlayerWeaponSlot_2_p1
	shipWeaponSlot_2_sprite = global.shipPlayerWeaponSlot_2_icon_p1
	
	shipWeaponSlot_3 = global.shipPlayerWeaponSlot_3_p1
	shipWeaponSlot_3_sprite = global.shipPlayerWeaponSlot_3_icon_p1
	
	shipActualSlot = 1;
	shipActualWeapon = shipWeaponSlot_1;
	
	shipActualWeapon();
	resetWeapon();
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

// Barras de Vida, Cooldown y Experiencia.
healthBarAlpha = 0;
cooldownBarAlpha = 0;
experienceBarAlpha = 1;
cooldownBarPositionY = (y + 0);
experienceBarPositionY = (y + 0);

// Texto de Cambio de Arma
weaponTextAlpha = 0;

// Linea de Punteria
aimLineAlpha = 0;
toggleAimLine = false;

// Toggle para mostrar data
showShipData = false;