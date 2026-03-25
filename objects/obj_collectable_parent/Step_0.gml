// Movimiento
y += currencyFallSpeed; // Caida

x += lengthdir_x(currencyMoveSpeed, currencyMoveDirection);
y += lengthdir_y(currencyMoveSpeed, currencyMoveDirection);
currencyMoveSpeed = clamp(currencyMoveSpeed - currencyMoveSpeedDecay, 0, 3);
image_angle = direction;
direction += currencyRotSpeed;
sprite_index = currencySprite;

// Aplicar Colores
switch (currencyName) {
	case "Starlit":
		textColor1 = c_yellow;
		textColor2 = c_orange;
	break;
	case "Kaulite":
		textColor1 = c_lime;
		textColor2 = c_aqua;
	break;
}