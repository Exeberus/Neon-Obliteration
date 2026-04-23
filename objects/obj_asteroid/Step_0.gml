// Comportamiento
shipAI();
on_deathAI();

if (!applySize) {
	applySize = true;
		switch (asteroidSize) {
		case "Small Asteroid":
			shipMaxHealth = 1 + (1 * shipLevel);
			shipHealth = shipMaxHealth;
			enemyCreditDrop = 1.25 + (0.75 * shipLevel);
			enemyExperienceDrop = 0.05;
			enemyDropCant = 0;
		break;
		case "Medium Asteroid":
			shipMaxHealth = 2 + (2 * shipLevel);
			shipHealth = shipMaxHealth;
			enemyCreditDrop = 2.5 + (1.5 * shipLevel);
			enemyExperienceDrop = 0.10;
			enemyDropCant = 1;
		break;
	}
}
	
limitVariables();