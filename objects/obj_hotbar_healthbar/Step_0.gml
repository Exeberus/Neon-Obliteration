// Definir texto
if (instance_exists(obj_player)) {
	player1_shipHealth = round(obj_player.shipHealth);
	player1_shipMaxHealth = round(obj_player.shipMaxHealth);
}
if (instance_exists(obj_player_2)) {
	player2_shipHealth = round(obj_player_2.shipHealth);
	player2_shipMaxHealth = round(obj_player_2.shipMaxHealth);
}

layer_text_text(get_layerTextPlayer1, "Hp: " + string(player1_shipHealth) + " / " + string(player1_shipMaxHealth));
layer_text_text(get_layerTextPlayer2, "Hp: " + string(player2_shipHealth) + " / " + string(player2_shipMaxHealth));