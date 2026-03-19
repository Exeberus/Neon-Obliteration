if (!global.is_menuOpen) {
	audio_play_sound(snd_click_on_button_success, 0, false);
	room_goto(rm_level);
	mouseIn = false;
	
	// Variables
	global.enemyShipLevel = planetLevel;

	global.planetName = planetName; // Variables del Planeta
	global.planetDifficulty = planetDifficulty;
	global.planetProgresion = 0;
	global.planetPhase = 0;

	// Cantidad de enemigos

	global.set_lightEnemyLimit = planet_lightEnemyLimit; // Ligeros
	global.set_spawn_lightEnemyTime = planet_spawn_lightEnemyTime;
}