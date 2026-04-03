function asteroid_AI() {
	// Movimiento
	x += lengthdir_x(shipSpeed, shipDirection);
	y += lengthdir_y(shipSpeed, shipDirection);
	y += (shipSpeed * 2);
	shipDirection += shipRotSpeed;
	image_angle = shipDirection;
	
	// Efecto de Spawn
	if shipSpawnAlpha < shipSpawnAlphaMax && is_Spawned == false {
		shipSpawnAlpha += 0.02;
		image_alpha = shipSpawnAlpha;
		if (shipSpawnAlpha == 1) {
			is_Spawned = true
		}
	}
}