// Inherit the parent event
event_inherited();
shipLevel = 1;
is_enemy = true;
is_smallShip = true;
destroyInRoomOut = true;
shipLifeTime = 0;
	
// // Defensa
shipHealth = 2;
shipDefense = 0.1;
shipDodge = 5;
	
// // Ataque
shipAttack = 2;
shipAttackCooldown = 7 * 60;
shipAttackActualCooldown = shipAttackCooldown;
shipBulletSpeed = 3;
shipBulletCant = 1;
shipCritAttack = 1.2;
shipCritChance = 2;

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
shipSpeed = 1;
shipDirection = 0
shipRotationTime = 2 * 60;
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