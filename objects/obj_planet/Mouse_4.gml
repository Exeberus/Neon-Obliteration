if (!global.is_menuOpen) {
	layer_sequence_create("screenEffects", room_width / 2, room_height / 2, se_fadeIn);
	audio_play_sound(snd_click_on_button_success, 0, false);
	mouseIn = false;
	global.is_levelTransition = true;
	var transitionCreate = instance_create_layer(x, y, "Instances", obj_levelTransition);
	transitionCreate.alarm[0] = 180;
	
	// Variables
	global.enemyShipLevel = planetLevel;

	global.planetName = planetName; // Variables del Planeta
	global.planetDifficulty = planetDifficulty;
	global.planetProgresion = 0;
	global.planetPhase = 0;
	global.biomeSelected = planetBiome;

	// Cantidad de enemigos

	global.set_lightEnemyLimit = planet_lightEnemyLimit; // Ligeros
	global.set_spawn_lightEnemyTime = planet_spawn_lightEnemyTime;
}