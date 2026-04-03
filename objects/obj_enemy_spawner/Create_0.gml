 // Oleadas
layer_sequence_create("ScreenEffects", room_width / 2, room_height / 2, se_fadeOut);
global.is_levelTransition = false;

lightEnemyLimit = global.set_lightEnemyLimit + (global.planetDifficulty * 0.20);
lightEnemyCant = 0;

spawn_lightEnemyTime = global.set_spawn_lightEnemyTime - (global.planetDifficulty * 0.05);
spawn_lightEnemyTimeActual = 0;

spawn_asteroidTime = 120 - (global.planetDifficulty * 0.10);
spawn_asteroidTimeActual = 0;