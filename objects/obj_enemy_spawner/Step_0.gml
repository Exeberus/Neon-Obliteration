shipArrowSpawnActual ++;

if shipArrowSpawnActual == shipArrowSpawnMax {
	var arrowSpawnPosition_x = random_range(0, room_width);
	var arrowSpawnPosition_y = random_range(0, 30);
	var arrowDirection = irandom_range(220, 310);
	shipArrowSpawnActual = 0;
		
	// Crear Nave
	var arrowSpawn = instance_create_layer(arrowSpawnPosition_x, arrowSpawnPosition_y, "Instances", obj_arrow);
	with (arrowSpawn) {
		shipDirection = arrowDirection;
		shipHealth *= global.cantPlayers;
		shipLifeTime = 30 * 60
		destroyInRoomOut = false;
		shipAI = choose(arrowStraight_AI, arrowInterceptor_AI, arrowShooter_AI, arrowInterceptorShooter_AI);
	}
}