function playerMovement() {
	// Limitar Variables
	shipSpeed = clamp(shipSpeed, shipMinSpeed, shipMaxSpeed);
	shipRotationSpeed = clamp(shipRotationSpeed, shipMinRotationSpeed, shipMaxRotationSpeed);

	// Si rompe el limite, limitar al valor maximo
	playerMovementVarsLimit();
	
	// La imagen apunta al angulo del objeto
	image_angle = shipDirection;
	
	// Teclas de movimiento
	if keyboard_check(ord("W")) y -= shipSpeed;
	if keyboard_check(ord("S")) y += shipSpeed;
	if keyboard_check(ord("A")) x -= shipSpeed;
	if keyboard_check(ord("D")) x += shipSpeed;
	
	// Aceleracion
	playerAcceleration();
	
	// Apuntado de la nave
	var getMousePoint = point_direction(x, y, mouse_x, mouse_y);
	var angleDiffPoint = angle_difference(shipDirection, getMousePoint);
	
	var shipRotationClamp = clamp(angleDiffPoint, -shipRotationSpeed, shipRotationSpeed);
	shipDirection -= shipRotationClamp;
}

function playerMovementVarsLimit() {
	// Limitadores
	if shipSpeed > shipMaxSpeed shipSpeed = shipMaxSpeed;
	if shipSpeed < shipMinSpeed shipSpeed = shipMinSpeed;
	
	if shipRotationSpeed > shipMaxRotationSpeed shipRotationSpeed = shipMaxRotationSpeed;
	if shipRotationSpeed < shipMinRotationSpeed shipRotationSpeed = shipMinRotationSpeed;
}

function playerAcceleration() {
	// Aceleracion
	if keyboard_check(ord("W"))
	|| keyboard_check(ord("S"))
	|| keyboard_check(ord("A"))
	|| keyboard_check(ord("D")) {
		if shipSpeed < shipMaxSpeed shipSpeed += shipAcceleration;
	} else {
		if shipSpeed > 0 shipSpeed -= shipAcceleration * 2;
	}
}