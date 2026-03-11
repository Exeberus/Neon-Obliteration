function playerWeaponUse() {
	// Weapon 1
	if shipWeaponActualCooldown <= 0 {
		shipWeaponActualCooldown = 0;
	} else {
		shipWeaponActualCooldown -= cooldownReduce;
	}
	
	if (shipWeaponActualCooldown <= 0) {
		if mouse_check_button(mb_left) {
			weapon()
		}
	}
}