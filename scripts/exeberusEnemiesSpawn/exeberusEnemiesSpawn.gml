function spawnArrow() {
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
		shipWeaponBulletColor = image_blend;
		shipAI = arrowAi;
		is_elite = arrowIs_elite;
		eliteType = arrow_eliteType;
	}
}

function spawnExeBringer() {
	// Spawn de Elites
	var exeBringerIs_elite = false;
	var exeBringer_eliteType = noone;
	
	var eliteChanceDrop = irandom(100);

	if (eliteChanceDrop <= 5) {
	    exeBringer_eliteType = "normalElite";
	    exeBringerIs_elite = true;
	}
	else if (eliteChanceDrop <= 6) {
	    exeBringer_eliteType = "megaElite";
	    exeBringerIs_elite = true;
	}
	else if (eliteChanceDrop <= 7) {
	    exeBringer_eliteType = "uniqueElite";
	    exeBringerIs_elite = true;
	}
	
	// Spawn de la nave, posicion, direccion, IA y variantes.
	var exeBringerSpawnPosition_x = random_range(0, room_width);
	var exeBringerSpawnPosition_y = random_range(0, 30);
	var exeBringerVariant = choose(spr_exe_bringer_singleTurret, spr_exe_bringer_sniperTurret, spr_exe_bringer_tripleTurret);
	var exeBringerAi = noone;
	var exeBringerBullet = noone;
	switch (exeBringerVariant) {
		case spr_exe_bringer_singleTurret:
			exeBringerAi = exe_bringer_singleTurret_behaviour;
			exeBringerBullet = spr_exe_bringer_singleTurret_bullet;
		break;
		case spr_exe_bringer_sniperTurret:
			exeBringerAi = exe_bringer_sniperTurret_behaviour;
			exeBringerBullet = spr_exe_bringer_sniperTurret_bullet;
		break;
		case spr_exe_bringer_tripleTurret:
			exeBringerAi = exe_bringer_tripleTurret_behaviour;
			exeBringerBullet = spr_exe_bringer_tripleTurret_bullet;
		break;
	}
		
	// Spawnear Nave
	var exeBringerSpawn = instance_create_layer(exeBringerSpawnPosition_x, exeBringerSpawnPosition_y, "Instances", obj_exe_bringer);
	with (exeBringerSpawn) {
		shipMaxHealth *= global.cantPlayers;
		sprite_index = exeBringerVariant;
		image_blend = c_red;
		mask_index = spr_exe_bringer;
		shipWeaponBulletColor = image_blend;
		shipWeaponBulletSprite = exeBringerBullet
		shipAI = exeBringerAi;
		is_elite = exeBringerIs_elite;
		eliteType = exeBringer_eliteType;
	}
}