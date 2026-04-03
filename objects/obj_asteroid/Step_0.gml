// Comportamiento
shipAI();
on_deathAI();

if (!applySize) {
	applySize = true;
		switch (asteroidSize) {
		case "Small Asteroid":
			shipMaxHealth = 1 + (1 * shipLevel);
			shipHealth = shipMaxHealth;
		break;
		case "Medium Asteroid":
			shipMaxHealth = 2 + (2 * shipLevel);
			shipHealth = shipMaxHealth;
		break;
	}
}