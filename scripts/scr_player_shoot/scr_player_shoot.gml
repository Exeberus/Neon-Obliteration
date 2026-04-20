function player_shoot() {
	function shipShoot() {
		shipWeaponActualCooldown ++;
		shipWeaponActualCooldown = clamp(shipWeaponActualCooldown, 0, shipWeaponMaxCooldown);
		
		if (mouse_check_button(mb_left) && shipWeaponActualCooldown == shipWeaponMaxCooldown) {
			player_shootBehaviour();
		}
	}
	
	
	
	if (is_playerAlive) { shipShoot() }
}