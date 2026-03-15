function bubbePersecutorCannon_variables() {
	global.shipPlayerWeaponName = "Bubble Persecutor Missile"; // String para nombre
	global.shipPlayerWeaponBulletBehaviour = bubblePersecutorCannon_bulletBehaviour; // Funcion para el comportamiento de la bala
	global.shipPlayerWeaponBulletCollision = normalCollision; // Funcion para el comportamiento del impacto
	global.shipPlayerWeaponMaxCooldown = 50; // Cooldown Maximo
	
	global.shipPlayerWeaponBulletDamage = (global.shipPlayerAttack * 0.85) // Daño de las Balas
	global.shipPlayerWeaponBulletCant = 2; // Cantidad de Balas
	global.shipPlayerWeaponBulletSpeed = 4; // Velocidad de la bala
	global.shipPlayerWeaponBulletSprite = spr_bubblePersecutor_bullet; // Declarar Sprite
	global.shipPlayerWeaponBulletLifeTime = 90; // Tiempo de vida
	global.shipPlayerWeaponBulletWaitToPersecute = 30; // Esperar para seguir
	
	global.shipPlayerWeaponSound = snd_bubblePersecutor_shoot; // Declarar Sonido de Disparo
	global.shipPlayerWeaponImpactSound = snd_bubblePersecutor_impact; // Declarar Sonido de Disparo
}
function bubblePersecutorCannon_bulletBehaviour() {
	bulletMaxDistance = 250;
	nearestDetectedEnemy = noone;
	nearestDistance = bulletMaxDistance;
	bulletWaitToPersecute --;
	bulletLifeTime --;
	
	if (bulletLifeTime <= 0) {
		image_alpha -= 0.05;
		if (image_alpha <= 0) {
			instance_destroy();
		}
	}
	
	with (obj_parent_enemy) {
		if (variable_instance_exists(id, "is_enemy")) {
		
			var get_enemyDistance = point_distance(other.x, other.y, x, y)
		
			if (get_enemyDistance < other.nearestDistance) {
				other.nearestDistance = get_enemyDistance;
				other.nearestDetectedEnemy = id;
			}
		}
	}
	if (bulletWaitToPersecute <= 0) {
		if (nearestDetectedEnemy != noone) {
			var enemyTargetDirection = point_direction(x, y, nearestDetectedEnemy.x, nearestDetectedEnemy.y);
	
			var bulletTurnDirection = angle_difference(bulletDirection, enemyTargetDirection);
			bulletDirection -= clamp(bulletTurnDirection, - bulletSpeed / 2, bulletSpeed / 2);
		}
	}
	x += lengthdir_x(bulletSpeed, bulletDirection);
	y += lengthdir_y(bulletSpeed, bulletDirection);

}