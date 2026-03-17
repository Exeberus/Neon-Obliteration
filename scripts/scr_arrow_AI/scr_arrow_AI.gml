function arrowStraight_AI() {
	// Movimiento
	move_wrap(true, true, 16)
	image_angle = shipDirection;
	y += lengthdir_y(shipSpeed, shipDirection);
	x += lengthdir_x(shipSpeed, shipDirection);
	
	// Efecto de Spawn
	if shipSpawnAlpha < shipSpawnAlphaMax && is_Spawned == false {
		shipSpawnAlpha += 0.02;
		image_alpha = shipSpawnAlpha;
		if (shipSpawnAlpha == 1) {
			is_Spawned = true
		}
	}
	shipLifeTime --;
	if (shipLifeTime <= 0) {
		destroyInRoomOut = true;
		image_alpha -= 0.03;
		if (image_alpha <= 0) {
			instance_destroy();
		}
	} else {
		destroyInRoomOut = false;
	}
}

function arrowInterceptor_AI() {
	// Movimiento
	move_wrap(true, true, 16)
	image_angle = shipDirection;
	y += lengthdir_y(shipSpeed, shipDirection);
	x += lengthdir_x(shipSpeed, shipDirection);
	
	shipRotationTime --
	shipDirection -= shipDirectionRotate;
	if (shipRotationTime <= 0) {
		shipRotationTime = 5 * 60;
		shipDirectionRotate = random_range(-1.5 , 1.5)
	}
	
	// Efecto de Spawn
	if shipSpawnAlpha < shipSpawnAlphaMax && is_Spawned == false {
		shipSpawnAlpha += 0.02;
		image_alpha = shipSpawnAlpha;
		if (shipSpawnAlpha == 1) {
			is_Spawned = true
		}
	}
	
	shipLifeTime --;
	if (shipLifeTime <= 0) {
		destroyInRoomOut = true;
		image_alpha -= 0.03;
		if (image_alpha <= 0) {
			instance_destroy();
		}
	} else {
		destroyInRoomOut = false;
	}
}

function arrowShooter_AI() {
	// Movimiento
	move_wrap(true, true, 16)
	image_angle = shipDirection;
	y += lengthdir_y(shipSpeed, shipDirection);
	x += lengthdir_x(shipSpeed, shipDirection);
	
	// Efecto de Spawn
	if shipSpawnAlpha < shipSpawnAlphaMax && is_Spawned == false {
		shipSpawnAlpha += 0.02;
		image_alpha = shipSpawnAlpha;
	}
	shipAttackActualCooldown --;
	if (shipAttackActualCooldown <= 0) {
		shipAttackActualCooldown = shipAttackCooldown;
		
		enemyShoot_behaviour();
	}
	shipLifeTime --;
	if (shipLifeTime <= 0) {
		destroyInRoomOut = true;
		image_alpha -= 0.03;
		if (image_alpha <= 0) {
			instance_destroy();
		}
	} else {
		destroyInRoomOut = false;
	}
}

function arrowInterceptorShooter_AI() {
	// Movimiento
	move_wrap(true, true, 16)
	image_angle = shipDirection;
	y += lengthdir_y(shipSpeed, shipDirection);
	x += lengthdir_x(shipSpeed, shipDirection);
	
	shipRotationTime --
	shipDirection -= shipDirectionRotate;
	if (shipRotationTime <= 0) {
		shipRotationTime = 5 * 60;
		shipDirectionRotate = random_range(-1.5 , 1.5)
	}
	
	// Efecto de Spawn
	if shipSpawnAlpha < shipSpawnAlphaMax && is_Spawned == false {
		shipSpawnAlpha += 0.02;
		image_alpha = shipSpawnAlpha;
		if (shipSpawnAlpha == 1) {
			is_Spawned = true
		}
	}
	
	shipLifeTime --;
	if (shipLifeTime <= 0) {
		destroyInRoomOut = true;
		image_alpha -= 0.03;
		if (image_alpha <= 0) {
			instance_destroy();
		} else {
		destroyInRoomOut = false;
		}
	}
	shipAttackActualCooldown --;
	if (shipAttackActualCooldown <= 0) {
		shipAttackActualCooldown = shipAttackCooldown;
		
		enemyShoot_behaviour();
	}
}