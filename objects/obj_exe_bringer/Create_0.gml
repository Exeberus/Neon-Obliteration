 // Inherit the parent event
event_inherited();
is_floatingObject = false;
shipLevel = global.enemyShipLevel;
shipName = "Exe-Bringer";
is_enemy = true;
is_lightEnemy = true;
enemyCreditDrop = 8 + (5 * shipLevel);
enemyDropChance = global.dropChanceSelected;
enemyDropCant = 1;

// // Elite
is_elite = false;
eliteDataAlpha = 0;
eliteEffectApplied = false;
eliteType = "";
eliteEffect1 = "";
eliteEffect2 = "";
eliteEffect3 = "";

destroyInRoomOut = true;
shipLifeTime = 900;
	
// // Defensa
shipMaxHealth = 3 + (3 * shipLevel);
shipHealth = shipMaxHealth
shipDefense = 0.25 + (0.2 * shipLevel);
shipDodge = 2 + (0.1 * shipLevel);
	
// // Ataque
// Cañon
shipCannonVariant = spr_exe_bringer_singleTurret;
shipTurretBaseRot = 0;
shipCannonRange = 350;
shipCannonVariantApplied = false;

shipAttack = 2 + (1 * shipLevel);
shipAttackCooldown = 2 * 60;
shipAttackActualCooldown = shipAttackCooldown;
shipBulletSpeed = 4 + (0.2 * shipLevel);
shipBulletCant = 1;
shipCritAttack = 1.2 + (0.1 * shipLevel);
shipCritChance = 4 + (0.2 * shipLevel);

shipWeaponBulletBehaviour = normalEnemyBullet_behaviour;
shipWeaponBulletCollision = normalEnemyBulletCollision;
shipWeaponBulletDamage = shipAttack;
shipWeaponBulletSpeed = shipBulletSpeed;
shipWeaponBulletCant = shipBulletCant;
shipWeaponBulletLifeTime = 0;
shipWeaponBulletWaitToPersecute = 0;

shipWeaponBulletSprite = spr_arrowBolt_bullet;
shipWeaponBulletColor = noone;
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
shipAI = exe_bringer_singleTurret_behaviour;
on_deathAI = enemies_death;

// Limitar Variables
function limitVariables() {
	shipHealth = clamp(shipHealth, 0, shipMaxHealth);
	shipDefense = clamp(shipDefense, 0, infinity);
	shipDodge = clamp(shipDodge, 0, infinity);
	shipAttack = clamp(shipAttack, 1, infinity);
	shipAttackCooldown = clamp(shipAttackCooldown, 1 * 60, infinity);
	shipBulletSpeed = clamp(shipBulletSpeed, 1, 12);
	shipWeaponBulletSpeed = clamp(shipWeaponBulletSpeed, 1, 8);
	shipWeaponBulletCant = clamp(shipWeaponBulletCant, 1, 5);
	shipCritAttack = clamp(shipCritAttack, 1.0, 2.0);
	shipCritChance = clamp(shipCritChance, 1, 100);
	shipSpeed = clamp(shipSpeed, 1, 2.5);
}