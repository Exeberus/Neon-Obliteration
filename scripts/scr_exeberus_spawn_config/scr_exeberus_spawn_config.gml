function scr_exeberus_spawn_config() {
	if shipArrowSpawnActual == shipArrowSpawnMax {
		shipArrowSpawnActual = 0;
		var arrowSpawnPosition_x = random_range(0, room_width);
		var arrowSpawnPosition_y = random_range(0, 30);
		var arrowDirection = irandom_range(210, 330);
		
		// Crear Nave
		var arrowSpawn = instance_create_layer(arrowSpawnPosition_x, arrowSpawnPosition_y, "Instances", obj_arrow);
		arrowSpawn.shipDirection = arrowDirection;
	}
}

function scr_exeberus_spawn_config_variables() {
	shipArrowSpawnMax = 60;
	shipArrowSpawnActual = 0;
}