function playerWeaponUse() {
	// Weapon 1
	if shipWeaponActualCooldown <= 0 {
		shipWeaponActualCooldown = 0;
	} else {
		shipWeaponActualCooldown -= cooldownReduce;
	}
	
	if (shipWeaponActualCooldown <= 0) {
		if keyboard_check(vk_space) {
			weapon()
		}
	}
}