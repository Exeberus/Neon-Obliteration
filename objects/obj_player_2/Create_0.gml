var controller = instance_find(obj_player_controller, 0);

if (controller != noone) {
	shipName = global.shipPlayer2Name;
	shipLevel = global.shipPlayerLevel;
	Player = 2;
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
healthBarAlpha = 0;
cooldownBarAlpha = 0;
barPositionY = (y + 0);
weaponTextAlpha = 0;

// Al unirse
var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
with (textCreate) {
textLifeTime = 5 * 60;
textFont = fnt_pixel_small;
textFollow = true;
textToFollow = obj_player_2;
textFollowOffset_x = -45;
textFollowOffset_y = -45;
textString = "Player 2 Connected !";
textColour1 = global.shipPlayer2Color;
textColour2 = global.shipPlayer2Color;
textColour3 = global.shipPlayer2Color;
textColour4 = global.shipPlayer2Color;
textAlpha = 1;
}