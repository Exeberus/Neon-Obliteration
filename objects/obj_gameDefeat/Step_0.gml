// Recibir booleanos de los Jugadores si estan vivos o no.
var player1_exists = instance_exists(obj_player);
var player2_exists = instance_exists(obj_player_2);

if (player1_exists) global.is_playerAlive_1 = obj_player.is_playerAlive;
if (player2_exists) global.is_playerAlive_2 = obj_player_2.is_playerAlive;

if (global.shipPlayerLives < 0) {
	if (global.cantPlayers = 1) {
		if (!global.is_playerAlive_1 && !defeatScreen) {
			defeatScreen = true;
			alarm[0] = 180;
			layer_sequence_create("ScreenEffects", room_width / 2, room_height / 2, se_fadeIn);
		}	
	} 
	else if (global.cantPlayers = 2) {
		if (!global.is_playerAlive_1 && !global.is_playerAlive_2 && !defeatScreen) {
			defeatScreen = true;
			alarm[0] = 180;
			layer_sequence_create("ScreenEffects", room_width / 2, room_height / 2, se_fadeIn);
		}
	}
}