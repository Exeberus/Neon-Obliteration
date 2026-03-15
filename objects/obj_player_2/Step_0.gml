// Movimiento
playerMovement_joystick();
move_wrap(true, true, 16)

// Ataque y cambio de arma
function shipShoot() {
	shipWeaponActualCooldown ++;
	shipWeaponActualCooldown = clamp(shipWeaponActualCooldown, 0, shipWeaponMaxCooldown);
	var playerId = id;
	
	if (gamepad_button_check(0, gp_shoulderr) && shipWeaponActualCooldown == shipWeaponMaxCooldown) {
		player_shootBehaviour();
	}
}
function changeWeapon_joystick() {
	// Checkear que arma esta actualmente
	switch (shipActualSlot) {
		case 1:
			shipActualWeapon = shipWeaponSlot_1
			shipActualWeapon();
		break;
		case 2:
			shipActualWeapon = shipWeaponSlot_2
			shipActualWeapon();
		break;
		case 3:
			shipActualWeapon = shipWeaponSlot_3
			shipActualWeapon();
		break;
	}
	if (gamepad_button_check_pressed(0, gp_shoulderl)) {
		weaponTextAlpha = 1;
		audio_play_sound(snd_weapon_change, 1, false);
		if (shipActualSlot < 3) {
			shipActualSlot ++;
		} else {
			shipActualSlot = 1
		}
		
		switch (shipActualSlot) {
		case 1:
			shipActualWeapon = shipWeaponSlot_1
			shipActualWeapon();
		break;
		case 2:
			shipActualWeapon = shipWeaponSlot_2
			shipActualWeapon();
		break;
		case 3:
			shipActualWeapon = shipWeaponSlot_3
			shipActualWeapon();
		break;
		}
		
		resetWeapon();
	}
}
changeWeapon_joystick();
shipShoot();

playerVariableLimit();

shipHealth += 0.05