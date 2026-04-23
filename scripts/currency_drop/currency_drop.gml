function currency_drop() {
	if (enemyCreditDrop > 0) {
		global.galaxian_credits += enemyCreditDrop;
	
		if (global.show_currencyIndicator) {
			var textCreate = instance_create_layer(x, y, "Instances", obj_floating_text);
			with (textCreate) {
			textLifeTime = 180;
			textSpeed = 0.1;
			textFont = fnt_pixel_small;
			textRandomCreate_Value = 15;
			textRandomPosition = false;
			textFollow = false;
			textToFollow = noone;
			textFollowOffset_x = 0;
			textFollowOffset_y = 0;
			textMoveDirection = "";
			textString = string(other.enemyCreditDrop) + "$";
			textColour1 = c_aqua;
			textColour2 = c_aqua;
			textColour3 = c_aqua;
			textColour4 = c_aqua;
			textAlpha = 1;
			textAlphaIncrease = 0;
			textAlphaDecrease = 0.02;
			textAlphaRoof = false;
			}
		}
	}
	if (enemyExperienceDrop > 0) {
		with (obj_player) {
			shipExperience += other.enemyExperienceDrop;
		}
	
		if (global.show_currencyIndicator) {
			var textCreate = instance_create_layer(x, y, "Instances", obj_floating_text);
			with (textCreate) {
			textLifeTime = 180;
			textSpeed = 0.1;
			textFont = fnt_pixel_small;
			textRandomCreate_Value = 15;
			textRandomPosition = false;
			textFollow = false;
			textToFollow = noone;
			textFollowOffset_x = 0;
			textFollowOffset_y = 0;
			textMoveDirection = "";
			textString = "Exp +" + string(other.enemyExperienceDrop);
			textColour1 = c_fuchsia;
			textColour2 = c_fuchsia;
			textColour3 = c_fuchsia;
			textColour4 = c_fuchsia;
			textAlpha = 1;
			textAlphaIncrease = 0;
			textAlphaDecrease = 0.02;
			textAlphaRoof = false;
			}
		}
	}
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
function consumable_drop() {
	var dropChance = irandom(100);
	var dropSpawnDistance = irandom_range(-10, 10);
	
	
	if (dropChance < 5) {
		var dropItem = instance_create_layer(x + dropSpawnDistance, y + dropSpawnDistance, "Instances", obj_collectable_parent);
	
		dropItem.currencyType = "Consumable";
		dropItem.currencyName = "Medic Kit";
		dropItem.currencySprite = spr_medic_kit;
		dropItem.currencySize = 1;
	
		dropItem.currencyFallSpeed = random(2);
		dropItem.currencyMoveDirection = random(360);
		dropItem.currencyMoveSpeed = random(1);
		dropItem.currencyRotSpeed = random(2);
		dropItem.currencyMoveSpeedDecay = random(0.05);
	}
}