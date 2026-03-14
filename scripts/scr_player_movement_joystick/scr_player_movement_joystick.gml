function playerMovement_joystick() {

	// Detectar joystick
	if (!gamepad_is_connected(0)) return;

	// Limitar Variables
	shipSpeed = clamp(shipSpeed, shipMinSpeed, shipMaxSpeed);
	shipRotationSpeed = clamp(shipRotationSpeed, shipMinRotationSpeed, shipMaxRotationSpeed);

	// Limitar variables extra
	playerMovementVarsLimit_joystick();

	// ========================
	// MOVIMIENTO (STICK IZQUIERDO)
	// ========================
	var joyX = gamepad_axis_value(0, gp_axislh);
	var joyY = gamepad_axis_value(0, gp_axislv);

	// Deadzone
	if abs(joyX) < 0.2 joyX = 0;
	if abs(joyY) < 0.2 joyY = 0;

	x += joyX * shipSpeed;
	y += joyY * shipSpeed;

	// Aceleración
	playerAcceleration_joystick(joyX, joyY);

	// ========================
	// APUNTADO (STICK DERECHO)
	// ========================
	var aimX = gamepad_axis_value(0, gp_axisrh);
	var aimY = gamepad_axis_value(0, gp_axisrv);

	// Deadzone
	if abs(aimX) < 0.2 aimX = 0;
	if abs(aimY) < 0.2 aimY = 0;

	if (aimX != 0 || aimY != 0) {

		var getStickPoint = point_direction(0, 0, aimX, aimY);
		var angleDiffPoint = angle_difference(image_angle, getStickPoint);

		var shipRotationClamp = clamp(angleDiffPoint, -shipRotationSpeed, shipRotationSpeed);
		image_angle -= shipRotationClamp;
	}
}

function playerMovementVarsLimit_joystick() {

	if shipSpeed > shipMaxSpeed shipSpeed = shipMaxSpeed;
	if shipSpeed < shipMinSpeed shipSpeed = shipMinSpeed;

	if shipRotationSpeed > shipMaxRotationSpeed shipRotationSpeed = shipMaxRotationSpeed;
	if shipRotationSpeed < shipMinRotationSpeed shipRotationSpeed = shipMinRotationSpeed;
}

function playerAcceleration_joystick(joyX, joyY) {

	if (joyX != 0 || joyY != 0) {
		if shipSpeed < shipMaxSpeed shipSpeed += shipAcceleration;
	} else {
		if shipSpeed > 0 shipSpeed -= shipAcceleration * 2;
	}
}