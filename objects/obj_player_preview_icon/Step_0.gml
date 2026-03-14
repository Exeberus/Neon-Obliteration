// Aplicar en todo momento los cambios de Sprites y Colores.
sprite_index = p_shipModel;
image_blend = p_shipColor;

// Nombre de la nave
switch (player) {
	case 1:
		p_shipModel = global.shipPlayerModel;
		p_shipColor = global.shipPlayerColor;
	break;
	case 2:
		p_shipModel = global.shipPlayer2Model;
		p_shipColor = global.shipPlayer2Color;
	break;
}