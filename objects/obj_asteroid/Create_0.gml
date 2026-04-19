// Principal Variables
shipLevel = global.enemyShipLevel;
is_enemy = true;
shipName = "Asteroid";
asteroidSize = "";
enemyCreditDrop = 0;
enemyDropChance = global.dropChanceSelected;
enemyDropCant = 0;

// Boolean
applySize = false;
is_asteroid = true;
is_floatingObject = true;

// // Defensa
shipMaxHealth = 1;
shipHealth = shipMaxHealth;
shipDefense = 0.1 + (0.2 * shipLevel);
shipDodge = 0;

// // Movimiento
shipSpeed = 0.3 + (0.1 * shipLevel);
shipDirection = 0
shipRotSpeed = random_range(-3, 3);

// // Efecto al Spawnear
shipSpawnAlpha = 0;
shipSpawnAlphaMax = 1;
is_Spawned = false;
image_alpha = 0;

// Comportamiento de IA
shipAI = asteroid_AI;
on_deathAI = asteroid_death;