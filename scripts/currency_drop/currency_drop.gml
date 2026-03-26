function currency_drop() {
	global.galaxian_credits += enemyCreditDrop;
	for (var i = 0; i < enemyDropCant; i ++) {
	
	dropChance = irandom(100);
	sizeChance = irandom(100);
	var dropSpawnDistance = irandom_range(-10, 10);
	
	if (dropChance <= enemyDropChance) {
		if (sizeChance <= 80) {
			dropOreSize = "Small";
		} else if (sizeChance <= 85) {
			dropOreSize = "Medium";
		} else if (sizeChance <= 100){
			dropOreSize = "Big";
		}
		switch (global.mineralSelected) {
			case "Starlit":
				dropType = "Mineral";
				dropName = "Starlit";
				dropCant = round(1 + (0.10 * global.planetDifficulty));
				
				switch (dropOreSize) {
					case "Small": dropSprite = spr_starlit_small; break;
					case "Medium": dropCant *= 2; dropSprite = spr_starlit_medium; break;
					case "Big": dropCant *= 3; dropSprite = spr_starlit_big; break;
				}
			break;

			case "Kaulite":
				dropType = "Mineral";
				dropName = "Kaulite";
				dropCant = round(1 + (0.25 * global.planetDifficulty));
				
				switch (dropOreSize) {
					case "Small": dropSprite = spr_kaulite_small; break;
					case "Medium": dropCant *= 2; dropSprite = spr_kaulite_medium; break;
					case "Big": dropCant *= 3; dropSprite = spr_kaulite_big; break;
				}
			break;
		}
		var dropItem = instance_create_layer(x + dropSpawnDistance, y + dropSpawnDistance, "Instances", obj_collectable_parent);
		
		dropItem.currencyType = dropType;
		dropItem.currencyCant = dropCant;
		dropItem.currencyName = dropName;
		dropItem.currencySprite = dropSprite;
		dropItem.currencySize = 1;
		
		dropItem.currencyFallSpeed = random(2);
		dropItem.currencyMoveDirection = random(360);
		dropItem.currencyMoveSpeed = random(1);
		dropItem.currencyRotSpeed = random(2);
		dropItem.currencyMoveSpeedDecay = random(0.05);
		}
	}
}