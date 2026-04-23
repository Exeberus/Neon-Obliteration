function player_shootBehaviour() {
	var playerId = id;
	
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
			bulletWaitToPersecute = playerId.shipWeaponBulletWaitToPersecute;
			bullet_is_AoE = playerId.shipWeapon_is_AoE;
			bulletAoERange = playerId.shipWeaponAoERange;
			sprite_index = playerId.shipWeaponBulletSprite;
			image_blend = playerId.image_blend;
		}
	}
}
	
function resetWeapon() {
	shipWeaponName = global.shipPlayerWeaponName;
	shipWeaponBulletBehaviour = global.shipPlayerWeaponBulletBehaviour;
	shipWeaponBulletCollision = global.shipPlayerWeaponBulletCollision;
	shipWeaponMaxCooldown = global.shipPlayerWeaponMaxCooldown;
	shipWeaponActualCooldown = global.shipPlayerWeaponActualCooldown;

	shipWeaponBulletDamage = global.shipPlayerWeaponBulletDamage;
	shipWeaponBulletCant = global.shipPlayerWeaponBulletCant;
	shipWeaponBulletSpeed = global.shipPlayerWeaponBulletSpeed;
	shipWeaponBulletSprite = global.shipPlayerWeaponBulletSprite;
	shipWeaponBulletLifeTime = global.shipPlayerWeaponBulletLifeTime;
	shipWeaponBulletWaitToPersecute = global.shipPlayerWeaponBulletWaitToPersecute;
	shipWeapon_is_AoE = global.shipPlayerWeapon_is_AoE;
	shipWeaponAoERange = global.shipPlayerWeaponAoERange;
	
	shipWeaponSound = global.shipPlayerWeaponSound;
	shipWeaponImpactSound = global.shipPlayerWeaponImpactSound;
	
	shipActualWeapon();
}