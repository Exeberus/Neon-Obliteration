 // Inherit the parent event
event_inherited();
shipLevel = global.enemyShipLevel;
shipName = "Arrow";
is_enemy = true;
is_smallShip = true;

// // Elite
is_elite = false;
eliteDataAlpha = 0;
eliteEffectApplied = false;
eliteType = "";
eliteEffect1 = "";
eliteEffect2 = "";
eliteEffect3 = "";

destroyInRoomOut = false;
shipLifeTime = 0;
	
// // Defensa
shipMaxHealth = 2 + (2 * shipLevel);
shipHealth = shipMaxHealth
shipDefense = 0.1 + (0.3 * shipLevel);
shipDodge = 5 + (0.2 * shipLevel);
	
// // Ataque
shipAttack = 2 + (1 * shipLevel);
shipAttackCooldown = 5 * 60;
shipAttackActualCooldown = shipAttackCooldown;
shipBulletSpeed = 4 + (0.2 * shipLevel);
shipBulletCant = 1;
shipCritAttack = 1.2 + (0.1 * shipLevel);
shipCritChance = 2 + (0.2 * shipLevel);

shipWeaponBulletBehaviour = normalEnemyBullet_behaviour;
shipWeaponBulletCollision = normalEnemyBulletCollision;
shipWeaponBulletDamage = shipAttack;
shipWeaponBulletSpeed = shipBulletSpeed;
shipWeaponBulletCant = shipBulletCant;
shipWeaponBulletLifeTime = 0;
shipWeaponBulletWaitToPersecute = 0;

shipWeaponBulletSprite = spr_arrowBolt_bullet;
shipWeaponBulletColor = c_red;
shipWeaponSound = snd_arrowbolt_cannon_shoot;
shipWeaponImpactSound = snd_arrowbolt_cannon_impact;
	
// // Movimiento
shipSpeed = 1 + (0.1 * shipLevel);
shipDirection = 0
shipRotationTime = 2 * 20;
shipDirectionRotate = 0;
shipAngle = 0

// // Efecto al Spawnear
shipSpawnAlpha = 0;
shipSpawnAlphaMax = 1;
is_Spawned = false;
image_alpha = 0;

// Comportamiento de IA
shipAI = noone;
on_deathAI = scr_enemies_death;

// Limitar Variables
function limitVariables() {
	shipDefense = clamp(shipDefense, 0, infinity);
	shipDodge = clamp(shipDodge, 0, infinity);
	shipAttack = clamp(shipAttack, 1, infinity);
	shipAttackCooldown = clamp(shipAttackCooldown, 1 * 60, infinity);
	shipBulletSpeed = clamp(shipBulletSpeed, 1, 12);
	shipWeaponBulletCant = clamp(shipWeaponBulletCant, 1, 5);
	shipCritAttack = clamp(shipCritAttack, 1.0, 2.0);
	shipCritChance = clamp(shipCritChance, 1, 100);
	shipSpeed = clamp(shipSpeed, 1, 5);
}