spawn_lightEnemyTimeActual += clamp(1, 0, spawn_lightEnemyTime);
spawn_asteroidTimeActual += clamp(1, 0, spawn_asteroidTime);

lightEnemyCant = instance_number(obj_arrow);

spawnLightEnemy = function() { 
	if (spawn_lightEnemyTimeActual >= spawn_lightEnemyTime && lightEnemyCant < lightEnemyLimit && global.planetPhase >= 0) {
	spawn_lightEnemyTimeActual = 0;
	// Spawn de Elites
	var arrowIs_elite = false;
	var arrow_eliteType = noone;
	
	var eliteChanceDrop = irandom(100);

	if (eliteChanceDrop <= 5) {
	    arrow_eliteType = "normalElite";
	    arrowIs_elite = true;
	}
	else if (eliteChanceDrop <= 6) {
	    arrow_eliteType = "megaElite";
	    arrowIs_elite = true;
	}
	else if (eliteChanceDrop <= 7) {
	    arrow_eliteType = "uniqueElite";
	    arrowIs_elite = true;
	}

	
	// Spawn de la nave, posicion, direccion, IA y variantes.
	var arrowSpawnPosition_x = random_range(0, room_width);
	var arrowSpawnPosition_y = random_range(0, 30);
	var arrowDirection = irandom_range(220, 310);
	var arrowVariant = choose(spr_arrow, spr_arrow_interceptor, spr_arrow_shooter, spr_arrow_interceptorShooter)
	var arrowAi = noone;
	switch (arrowVariant) {
		case spr_arrow:
			arrowAi = arrowStraight_AI;
		break;
		case spr_arrow_interceptor:
			arrowAi = arrowInterceptor_AI;
		break;
		case spr_arrow_shooter:
			arrowAi = arrowShooter_AI;
		break;
		case spr_arrow_interceptorShooter:
			arrowAi = arrowInterceptorShooter_AI;
		break;
	}
		
	// Spawnear Nave
	var arrowSpawn = instance_create_layer(arrowSpawnPosition_x, arrowSpawnPosition_y, "Instances", obj_arrow);
	with (arrowSpawn) {
		shipDirection = arrowDirection;
		shipMaxHealth *= global.cantPlayers;
		shipLifeTime = 60 * 60
		sprite_index = arrowVariant;
		image_blend = c_red;
		shipAI = arrowAi;
		is_elite = arrowIs_elite;
		eliteType = arrow_eliteType;
		}
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
				asteroid_spriteSelected = choose(spr_asteroid_1, spr_asteroid_2, spr_asteroid_3, spr_asteroid_4, spr_asteroid_5, spr_asteroid_6, spr_asteroid_7)
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