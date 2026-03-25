spawn_lightEnemyTimeActual += clamp(1, 0, spawn_lightEnemyTime);

lightEnemyCant = instance_number(obj_arrow);

if (spawn_lightEnemyTimeActual >= spawn_lightEnemyTime && lightEnemyCant < lightEnemyLimit && global.planetPhase >= 0) {
	spawn_lightEnemyTimeActual = 0;
	// Spawn de Elites
	var arrowIs_elite = false;
	var arrow_eliteType = noone;
	
	var eliteChanceDrop = irandom(10);

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