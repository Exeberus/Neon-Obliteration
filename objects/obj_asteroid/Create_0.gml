// Variables
shipLevel = global.enemyShipLevel;
shipName = "Asteroid";
asteroidSize = ""
is_asteroid = true;

// // Defensa
shipMaxHealth = 2 + (2 * shipLevel);
shipHealth = shipMaxHealth
shipDefense = 0.1 + (0.2 * shipLevel);
shipDodge = 0;

// // Movimiento
shipSpeed = 1 + (0.1 * shipLevel);
shipDirection = 0
shipRotSpeed = 0;

// // Efecto al Spawnear
shipSpawnAlpha = 0;
shipSpawnAlphaMax = 1;
is_Spawned = false;
image_alpha = 0;

// Comportamiento de IA
shipAI = noone;
on_deathAI = scr_enemies_death;

switch (asteroidSize) {
	case "Small Asteroid":
		sprite_index = choose(spr_asteroid_1_small, spr_asteroid_2_small, spr_asteroid_3_small, spr_asteroid_4_small, spr_asteroid_5_small)
	break;
	case "Medium Asteroid":
		sprite_index = choose(spr_asteroid_1, spr_asteroid_2, spr_asteroid_3, spr_asteroid_4, spr_asteroid_5, spr_asteroid_6, spr_asteroid_7)
	break;
}