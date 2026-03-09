function scr_arrow_AI() {
	// Movimiento
	image_angle = shipDirection;
	y += lengthdir_y(shipSpeed, shipDirection);
	x += lengthdir_x(shipSpeed, shipDirection);
	
	// Efecto de Spawn
	if shipSpawnAlpha < shipSpawnAlphaMax && is_Spawned == false {
		shipSpawnAlpha += 0.02;
		image_alpha = shipSpawnAlpha;
	}
}