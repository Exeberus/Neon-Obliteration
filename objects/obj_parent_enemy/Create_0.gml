// Comportamiento
shipLevel = 1;
shipName = ""
is_enemy = true;
is_smallShip = noone;
destroyInRoomOut = noone;
enemyCreditDrop = 0;
enemyDropChance = global.dropChanceSelected;
enemyDropCant = 0;

// // Elite
is_elite = false;
eliteDataAlpha = 0;
eliteEffectApplied = false;
eliteType = "";
eliteEffect1 = "";
eliteEffect2 = "";
eliteEffect3 = "";
	
// // Defensa
shipHealth = 0;
shipDefense = 0;
shipDodge = 0;
	
// // Ataque
shipAttack = 0;
shipAttackCooldown = 0;
shipAttackActualCooldown = 0;
shipBulletSpeed = 0;
shipBulletCant = 0;
shipCritAttack = 0;
shipCritChance = 0;

shipWeaponBulletBehaviour = noone;
shipWeaponBulletCollision = noone;
shipWeaponBulletDamage = 0;
shipWeaponBulletSpeed = 0;
shipWeaponBulletLifeTime = 0;
shipWeaponBulletWaitToPersecute = 0;

shipWeaponBulletSprite = noone;
shipWeaponBulletColor = noone;
shipWeaponSound = noone;
shipWeaponImpactSound = noone;
	
// // Movimiento
shipSpeed = 0;
shipDirection = 0
shipAngle = 0
	
// // Efecto al Spawnear
shipSpawnAlpha = 0;
shipSpawnAlphaMax = 1;
is_Spawned = false;
image_alpha = 0;

// Comportamiento de IA
shipAI = noone;
on_deathAI = noone;