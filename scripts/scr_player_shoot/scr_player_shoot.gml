function player_shoot(_is_gamepad) {
	if (_is_gamepad) {
		if (is_playerAlive) { shipShoot_gamepad(gamepadID) }
		
		function shipShoot_gamepad(_gamepadID) {
			shipWeaponActualCooldown ++;
			shipWeaponActualCooldown = clamp(shipWeaponActualCooldown, 0, shipWeaponMaxCooldown);
			
			if (gamepad_button_check(_gamepadID, gp_shoulderr) && shipWeaponActualCooldown == shipWeaponMaxCooldown) {
				player_shootBehaviour();
			}
		}
	}
	else {
		if (is_playerAlive) { shipShoot() }
		
		function shipShoot() {
			shipWeaponActualCooldown ++;
			shipWeaponActualCooldown = clamp(shipWeaponActualCooldown, 0, shipWeaponMaxCooldown);
		
			if (mouse_check_button(mb_left) && shipWeaponActualCooldown == shipWeaponMaxCooldown) {
				player_shootBehaviour();
			}
		}
	}
}