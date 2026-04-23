function triganogthCannon_variables() {
	global.shipPlayerWeaponName = "Triganogth Missile"; // String para nombre
	global.shipPlayerWeaponBulletBehaviour = triganogthCannon_bulletBehaviour; // Funcion para el comportamiento de la bala
	global.shipPlayerWeaponBulletCollision = normalCollision; // Funcion para el comportamiento del impacto
	global.shipPlayerWeaponMaxCooldown = 30; // Cooldown Maximo
	
	global.shipPlayerWeaponBulletDamage = (shipAttack * 0.38) // Daño de las Balas
	global.shipPlayerWeaponBulletCant = 4; // Cantidad de Balas
	global.shipPlayerWeaponBulletSpeed = 6; // Velocidad de la bala
	global.shipPlayerWeaponBulletSprite = spr_triganogthMissile_bullet; // Declarar Sprite
	global.shipPlayerWeaponBulletLifeTime = 120; // Tiempo de vida
	global.shipPlayerWeaponBulletWaitToPersecute = 5; // Esperar para seguir
	
	global.shipPlayerWeaponSound = snd_triganogthMissile_shoot; // Declarar Sonido de Disparo
	global.shipPlayerWeaponImpactSound = snd_triganogthMissile_impact; // Declarar Sonido de Disparo
	global.shipPlayerWeapon_is_AoE = false; // Declarar si inflige daño en Área
	global.shipPlayerWeaponAoERange = 0; // Radio de daño en Área
}
function triganogthCannon_bulletBehaviour() {
	bulletMaxDistance = 200;
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