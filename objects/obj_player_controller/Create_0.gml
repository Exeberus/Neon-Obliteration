// Controlador de variables para el Jugador
global.shipPlayerName = "The Crow";
global.shipPlayerLevel = 1;

// Movimiento.
global.shipPlayerSpeed = 0;
global.shipPlayerAcceleration = 0.10
global.shipPlayerMinSpeed = 0;
global.shipPlayerMaxSpeed = 4;

global.shipPlayerRotationSpeed = 2;
global.shipPlayerMinRotationSpeed = 2;
global.shipPlayerMaxRotationSpeed = 12;

global.shipPlayerDirection = 90;

// // Defensa de la nave.
global.shipPlayerMaxHealth = 20;
global.shipPlayerHealth = global.shipPlayerMaxHealth;
global.shipPlayerDefense = 1;
global.shipPlayerDodge = 5;

// // Ataque de la nave.
global.shipPlayerAttack = 1;
global.shipPlayerHitChance = 1;
global.shipPlayerCritAttack = 1.3;
global.shipPlayerCritChance = 20;

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

global.shipPlayerWeaponSound = noone;
global.shipPlayerWeaponImpactSound = noone;

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
	
arrowBoltCannon_variables();