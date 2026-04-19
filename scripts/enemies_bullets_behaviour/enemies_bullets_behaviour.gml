// Funciones Principales
function normalEnemyBulletCollision() {

	// Detectar si la bala acertó.
	var hitChance = irandom(100);
	var critChance = irandom(100);

	if (hitChance > (other.shipDodge)) { // Hit

		// CRITICO
		if (critChance <= bulletCritChance || bulletCritChance == 100) {

			var damageInflict = (bulletDamage * bulletCritAttack - other.shipDefense);

			if (damageInflict > 0) {

				other.shipHealth -= damageInflict;
				audio_play_sound(bulletImpactSound, 0, false);
				if (global.show_damageIndicator) {
					var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
					with (textCreate) {
						textLifeTime = 90;
						textSpeed = 0.65;
						textFont = fnt_pixel_small_lb
						textMoveDirection = "up";
						textRandomCreate_Value = 10;
						textString = "-" + string(damageInflict) + " Crit!";
						textColour1 = c_red;
						textColour2 = c_red;
						textColour3 = c_orange;
						textColour4 = c_orange;
						textAlpha = 1;
						textAlphaIncrease = 0.05;
						textAlphaDecrease = 0.01;
						textAlphaRoof = true;
					}
				}

			} else { // Resist critico

				audio_play_sound(bulletImpactSound, 0, false);
				if (global.show_damageIndicator) {
					var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
					with (textCreate) {
						textLifeTime = 90;
						textSpeed = 0.6;
						textFont = fnt_pixel_small;
						textMoveDirection = "up";
						textRandomCreate_Value = 10;
						textString = "Resist!";
						textColour1 = c_lime;
						textColour2 = c_lime;
						textColour3 = c_aqua;
						textColour4 = c_aqua;
						textAlpha = 1;
						textAlphaIncrease = 0.02;
						textAlphaDecrease = 0.01;
						textAlphaRoof = true;
					}
				}
			}
		} else { // DAÑO NORMAL

			var damageInflict = (bulletDamage - other.shipDefense);

			if (damageInflict > 0) {

				other.shipHealth -= damageInflict;
				audio_play_sound(bulletImpactSound, 0, false);
				
				if (global.show_damageIndicator) {
					var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
					with (textCreate) {
						textLifeTime = 90;
						textSpeed = 0.55;
						textFont = fnt_pixel_small
						textMoveDirection = "up";
						textRandomCreate_Value = 10;
						textString = "-" + string(damageInflict);
						textColour1 = c_red;
						textColour2 = c_red;
						textColour3 = c_red;
						textColour4 = c_red;
						textAlpha = 1;
						textAlphaIncrease = 0.01;
						textAlphaDecrease = 0.01;
						textAlphaRoof = true;
					}
				}
			} else { // Resist normal

				audio_play_sound(bulletImpactSound, 0, false);
				if (global.show_damageIndicator) {
					var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
					with (textCreate) {
						textLifeTime = 90;
						textSpeed = 0.6;
						textFont = fnt_pixel_small
						textMoveDirection = "up";
						textRandomCreate_Value = 10;
						textString = "Resist!";
						textColour1 = c_lime;
						textColour2 = c_lime;
						textColour3 = c_aqua;
						textColour4 = c_aqua;
						textAlpha = 1;
						textAlphaIncrease = 0.02;
						textAlphaDecrease = 0.01;
						textAlphaRoof = true;
					}
				}
			}
		}

		instance_destroy();

	} else { // Dodge
		if (global.show_damageIndicator) {
			var textCreate = instance_create_layer(x, y, "Text", obj_floating_text);
			with (textCreate) {
				textLifeTime = 90;
				textSpeed = 0.6;
				textFont = fnt_pixel_small
				textMoveDirection = "up";
				textRandomCreate_Value = 10;
				textString = "Dodge!";
				textColour1 = c_lime;
				textColour2 = c_lime;
				textColour3 = c_aqua;
				textColour4 = c_aqua;
				textAlpha = 1;
				textAlphaIncrease = 0.02;
				textAlphaDecrease = 0.01;
				textAlphaRoof = true;
			}
		}
		instance_destroy();
	}
}
function enemyShoot_behaviour() {
	var enemyId = id;
	
	var shootAngle = image_angle;
	var spaceBetweenBullets = 15
	
	var initialShootAngle = shootAngle - (spaceBetweenBullets * (shipWeaponBulletCant - 1) / 2);
	audio_play_sound(shipWeaponSound, 1, false);
	for (var i = 0; i < shipWeaponBulletCant; i++) {
		var actualShootAngle = initialShootAngle + i * spaceBetweenBullets
		
		var shipBullet = instance_create_layer(x, y, "Instances", obj_enemy_bullet);
		with (shipBullet) {
			bulletBehaviour = enemyId.shipWeaponBulletBehaviour;
			bulletImpactSound = enemyId.shipWeaponImpactSound;
			bulletCollision = enemyId.shipWeaponBulletCollision;
			bulletDamage = enemyId.shipWeaponBulletDamage;
			bulletSpeed = enemyId.shipWeaponBulletSpeed;
			bulletLifeTime = enemyId.shipWeaponBulletLifeTime;
			bulletDirection = actualShootAngle;
			bulletWaitToPersecute = enemyId.shipWeaponBulletWaitToPersecute;
			bulletCritChance = enemyId.shipCritChance;
			bulletCritAttack = enemyId.shipCritAttack;
			sprite_index = enemyId.shipWeaponBulletSprite;
			image_blend = enemyId.shipWeaponBulletColor;
		}
	}
}
	
function normalEnemyBullet_behaviour() {
	x += lengthdir_x(bulletSpeed, bulletDirection);
	y += lengthdir_y(bulletSpeed, bulletDirection);
}