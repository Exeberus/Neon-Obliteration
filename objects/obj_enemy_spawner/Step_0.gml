shipArrowSpawnActual += clamp(1, 0, shipArrowSpawnMax);
arrowCant = instance_number(obj_arrow);

if (shipArrowSpawnActual >= shipArrowSpawnMax && arrowCant < arrowLimit) {
	// Spawn de Elites
	var arrowIs_elite = false;
	var arrow_eliteType = noone;
	
	var eliteChanceDrop = irandom(1000);

	if (eliteChanceDrop <= 50) {
	    arrow_eliteType = "normalElite";
	    arrowIs_elite = true;
	}
	else if (eliteChanceDrop <= 60) {
	    arrow_eliteType = "megaElite";
	    arrowIs_elite = true;
	}
	else if (eliteChanceDrop <= 65) {
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
	shipArrowSpawnActual = 0;
		
	// Spawnear Nave
	var arrowSpawn = instance_create_layer(arrowSpawnPosition_x, arrowSpawnPosition_y, "Instances", obj_arrow);
	with (arrowSpawn) {
		shipDirection = arrowDirection;
		shipMaxHealth *= global.cantPlayers;
		shipLifeTime = 30 * 60
		sprite_index = arrowVariant;
		image_blend = c_red;
		shipAI = arrowAi;
		is_elite = arrowIs_elite;
		eliteType = arrow_eliteType;
	}
}