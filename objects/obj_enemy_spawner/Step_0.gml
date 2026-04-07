spawn_lightEnemyTimeActual += clamp(1, 0, spawn_lightEnemyTime);
spawn_asteroidTimeActual += clamp(1, 0, spawn_asteroidTime);

lightEnemyCant = 0;

with (obj_parent_enemy) {
    if (variable_instance_exists(id, "is_lightEnemy")) {
		if (is_lightEnemy) {
			other.lightEnemyCant++;
		}
    }
}

spawnLightEnemy = function() { 
	if (spawn_lightEnemyTimeActual >= spawn_lightEnemyTime && lightEnemyCant < lightEnemyLimit && global.planetPhase >= 0) {
	spawn_lightEnemyTimeActual = 0;
	spawnArrow();
	spawnExeBringer();
	}
}
spawnAsteroid = function() {
	if (spawn_asteroidTimeActual >= spawn_asteroidTime && global.planetPhase >= 0) {
		spawn_asteroidTimeActual = 0;
		
		var selectAsteroidSize = choose("Small Asteroid", "Medium Asteroid");
		var asteroid_spriteSelected = noone;
		var asteroid_colorSelected = choose (c_red, c_lime, c_aqua, c_yellow, c_fuchsia, c_orange);
		
		switch (selectAsteroidSize) {
			case "Small Asteroid":
				asteroid_spriteSelected = choose(spr_asteroid_1_small, spr_asteroid_2_small, spr_asteroid_3_small, spr_asteroid_4_small, spr_asteroid_5_small)
			break;
			case "Medium Asteroid":
				asteroid_spriteSelected = choose(spr_asteroid_1_medium, spr_asteroid_2_medium, spr_asteroid_3_medium, spr_asteroid_4_medium, spr_asteroid_5_medium, spr_asteroid_6_medium, spr_asteroid_7_medium)
			break;
		}
		var asteroidSpawnPosition_x = random_range(0, room_width);
		var asteroidSpawnPosition_y = random_range(0, 30);
		
		var asteroidSpawn = instance_create_layer(asteroidSpawnPosition_x, asteroidSpawnPosition_y, "Instances", obj_asteroid);
		asteroidSpawn.asteroidSize = selectAsteroidSize;
		asteroidSpawn.sprite_index = asteroid_spriteSelected;
		asteroidSpawn.image_blend = asteroid_colorSelected;
		
	}
}

spawnLightEnemy();
spawnAsteroid();