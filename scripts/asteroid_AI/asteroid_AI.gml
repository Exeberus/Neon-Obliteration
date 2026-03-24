function asteroid_AI() {
	x = lengthdir_x(shipSpeed, shipDirection);
	y = lengthdir_y(shipSpeed, shipDirection);
	shipDirection += shipRotSpeed;
	image_angle = shipDirection;
}