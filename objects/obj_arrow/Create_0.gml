// Inherit the parent event
event_inherited();
shipLevel = 1;
is_enemy = true;
is_smallShip = true;
destroyInRoomOut = true;
	
// // Defensa
shipHealth = 2;
shipDefense = 0.1;
shipDodge = 5;
	
// // Ataque
shipAttack = 2;
shipCritAttack = 1.2;
shipCritChance = 2;
	
// // Movimiento
shipSpeed = 1;
shipDirection = 0
shipDirectionRotate = 0;
shipAngle = 0
	
// // Efecto al Spawnear
shipSpawnAlpha = 0;
shipSpawnAlphaMax = 1;
is_Spawned = false;
image_alpha = 0;

// Comportamiento de IA
shipAI = arrowStraight_AI;
on_deathAI = scr_enemies_death;