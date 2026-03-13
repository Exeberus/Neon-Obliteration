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
global.shipPlayerAttack = 0;
global.shipPlayerHitChance = 1;
global.shipPlayerCritAttack = 1.3;
global.shipPlayerCritChance = 20;

// Arma.
global.playerWeapon = arrow_bolt_cannon;
global.playerWeaponCooldown = arrow_bolt_cannon_cooldown();
global.playerCooldownReduce = 5;
global.shipPlayerWeaponMinCooldown = noone;
global.shipPlayerWeaponMaxCooldown = noone;
global.shipPlayerWeaponActualCooldown = noone;

// Diseño de la nave.
global.shipPlayerModel = spr_crow;
global.shipPlayerColor = c_white;

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