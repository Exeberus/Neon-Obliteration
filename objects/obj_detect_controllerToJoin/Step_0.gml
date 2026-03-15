// Tocar Start para entrar Jugador 2.
if (gamepad_button_check_pressed(0, gp_start) && !is_playerJoined_2) {
	is_playerJoined_2 = true;
	global.cantPlayers += 1;
	instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_player_2);
	audio_play_sound(snd_player_joins, 1, false);
	executePlayer2 = false;
}

// Si se desconect el Joystick, sacar Jugador 2.
if (!gamepad_is_connected(0) && instance_exists(obj_player_2)) {
	global.cantPlayers -= 1;
	audio_play_sound(snd_player_disconect, 1, false);
	is_playerJoined_2 = false;
	instance_destroy(obj_player_2);
}