// Movimiento
playerMovement_joystick();
move_wrap(true, true, 16)

// Ataque y cambio de arma
function shipShoot() {
	shipWeaponActualCooldown ++;
	shipWeaponActualCooldown = clamp(shipWeaponActualCooldown, 0, shipWeaponMaxCooldown);
	var playerId = id;
	
	if (gamepad_button_check(0, gp_shoulderr) && shipWeaponActualCooldown == shipWeaponMaxCooldown) {
		shipWeaponActualCooldown = 0;
		var shootAngle = image_angle;
		var spaceBetweenBullets = 15
		
		var initialShootAngle = shootAngle - (spaceBetweenBullets * (shipWeaponBulletCant - 1) / 2);
		audio_play_sound(shipWeaponSound, 1, false);
		for (var i = 0; i < shipWeaponBulletCant; i++) {
			var actualShootAngle = initialShootAngle + i * spaceBetweenBullets
			
			var shipBullet = instance_create_layer(x, y, "Instances", obj_player_bullet);
			with (shipBullet) {
				bulletBehaviour = playerId.shipWeaponBulletBehaviour;
				bulletImpactSound = playerId.shipWeaponImpactSound;
				bulletCollision = playerId.shipWeaponBulletCollision;
				bulletDamage = playerId.shipWeaponBulletDamage;
				bulletSpeed = playerId.shipWeaponBulletSpeed;
				bulletLifeTime = playerId.shipWeaponBulletLifeTime;
				bulletDirection = actualShootAngle;
				sprite_index = playerId.shipWeaponBulletSprite;
				image_blend = playerId.image_blend;
			}
		}
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