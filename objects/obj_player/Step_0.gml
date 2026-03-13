// Movimiento
playerMovement();
function shipShoot() {
	shipWeaponActualCooldown ++;
	shipWeaponActualCooldown = clamp(shipWeaponActualCooldown, 0, shipWeaponMaxCooldown);
	var playerId = id;
	
	if (mouse_check_button(mb_left) && shipWeaponActualCooldown == shipWeaponMaxCooldown) {
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
shipShoot();
move_wrap(true, true, 16)