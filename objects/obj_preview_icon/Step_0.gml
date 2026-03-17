// Aplicar en todo momento los cambios de Sprites y Colores.
sprite_index = shipModel;
image_blend = shipColor;
image_angle += 0.10;
layer_text_text(get_textShipPlayer, "Player " + string(global.playerSelected));

// Nombre de la nave
switch (global.playerSelected) {
	case 1:
		layer_text_text(get_textShipModelName, global.shipPlayerName);
		layer_text_blend(get_textShipModelName, global.shipPlayerColor);

	break;
	case 2:
		layer_text_text(get_textShipModelName, global.shipPlayer2Name);
		layer_text_blend(get_textShipModelName, global.shipPlayer2Color);

	break;
}