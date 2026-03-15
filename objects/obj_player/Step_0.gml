// Movimiento
playerMovement();
move_wrap(true, true, 16)

// Disparo
function shipShoot() {
	shipWeaponActualCooldown ++;
	shipWeaponActualCooldown = clamp(shipWeaponActualCooldown, 0, shipWeaponMaxCooldown);
	
	if (mouse_check_button(mb_left) && shipWeaponActualCooldown == shipWeaponMaxCooldown) {
		player_shootBehaviour();
	}
}
shipShoot();

playerVariableLimit();