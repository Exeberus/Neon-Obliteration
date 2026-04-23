// Controlador de variables para el Jugador
global.shipPlayerName = "The Crow";
global.shipPlayerLevel = 1;
global.shipPlayerLives = 3;

// Movimiento.
global.shipPlayerSpeed = 0;
global.shipPlayerAcceleration = 0.03
global.shipPlayerMinSpeed = 0;
global.shipPlayerMaxSpeed = 2.20;

global.shipPlayerRotationSpeed = 1.0;
global.shipPlayerMinRotationSpeed = 0.5;
global.shipPlayerMaxRotationSpeed = 12;

global.shipPlayerDirection = 90;

// // Defensa de la nave.
global.shipPlayerMaxHealth = 30;
global.shipPlayerHealth = global.shipPlayerMaxHealth;
global.shipPlayerDefense = 1;
global.shipPlayerDodge = 5;
global.shipPlayerRegeneration = 1;
global.shipPlayerRegenerationTime = 120;
global.shipPlayerRegenerationTimeActual = 0;

// // Ataque de la nave.
global.shipPlayerAttack = 1.5;
shipAttack = global.shipPlayerAttack;
global.shipPlayerHitChance = 1;
global.shipPlayerCritAttack = 1.3;
global.shipPlayerCritChance = 5;

// Diseño de la nave.
global.shipPlayerModel = spr_crow;
global.shipPlayerColor = c_white;

// Arma y comportamiento de esta.
global.shipPlayerWeaponName = noone; // String para nombre
global.shipPlayerWeaponBulletBehaviour = noone; // Funcion para el comportamiento de la bala
global.shipPlayerWeaponBulletCollision = noone; // Funcion para el impacto de la bala
global.shipPlayerWeaponMaxCooldown = 0; // Cooldown Maximo
global.shipPlayerWeaponActualCooldown = 0; // Cooldown Maximo

global.shipPlayerWeaponBulletDamage = 0 // Daño de las Balas
global.shipPlayerWeaponBulletCant = 0; // Cantidad de Balas
global.shipPlayerWeaponBulletSpeed = 0; // Velocidad de las Balas
global.shipPlayerWeaponBulletSprite = noone; // Declarar Sprite
global.shipPlayerWeaponBulletLifeTime = 0 ; // Tiempo de vida
global.shipPlayerWeaponBulletWaitToPersecute = 0 // Esperar para seguir

global.shipPlayerWeaponSound = noone;
global.shipPlayerWeaponImpactSound = noone;
global.shipPlayerWeapon_is_AoE = noone;
global.shipPlayerWeaponAoERange = 0;

// Seleccion de armas
global.shipPlayerWeaponSlot_1_p1 = blasterCannon_variables;
global.shipPlayerWeaponSlot_1_icon_p1 = spr_blaster_cannon_icon;

global.shipPlayerWeaponSlot_2_p1 = sniperithCannon_variables;
global.shipPlayerWeaponSlot_2_icon_p1 = spr_sniperith_cannon_icon;

global.shipPlayerWeaponSlot_3_p1 = triganogthCannon_variables;
global.shipPlayerWeaponSlot_3_icon_p1 = spr_triganogthMissile_cannon_icon;

// Limitadores a estas variables.
function playerVariableLimit() {
	global.shipPlayerHealth = clamp(global.shipPlayerHealth, 0, global.shipPlayerMaxHealth);
	global.shipPlayerSpeed = clamp(global.shipPlayerSpeed, global.shipPlayerMinSpeed, global.shipPlayerMaxSpeed);
	global.shipPlayerDefense = clamp(global.shipPlayerDefense, 0, infinity);
	global.shipPlayerDodge = clamp(global.shipPlayerDodge, 0, infinity);
	global.shipPlayerAttack = clamp(global.shipPlayerAttack, 0, infinity);
	global.shipPlayerCritAttack = clamp(global.shipPlayerCritAttack, 1.0, infinity);
	global.shipPlayerCritChance = clamp(global.shipPlayerCritChance, 0, 100);
}