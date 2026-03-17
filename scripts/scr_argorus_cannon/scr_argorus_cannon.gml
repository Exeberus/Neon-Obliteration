function argorusCannon_variables() {
	global.shipPlayerWeaponName = "Argorus Cannon MK 1"; // String para nombre
	global.shipPlayerWeaponBulletBehaviour = argorusCannon_bulletBehaviour; // Funcion para el comportamiento de la bala
	global.shipPlayerWeaponBulletCollision = normalCollision; // Funcion para el comportamiento del impacto
	global.shipPlayerWeaponMaxCooldown = 85; // Cooldown Maximo
	
	global.shipPlayerWeaponBulletDamage = (global.shipPlayerAttack * 2.0) // Daño de las Balas
	global.shipPlayerWeaponBulletCant = 1; // Cantidad de Balas
	global.shipPlayerWeaponBulletSpeed = 3; // Velocidad de la bala
	global.shipPlayerWeaponBulletSprite = spr_argorus_bullet; // Declarar Sprite
	global.shipPlayerWeaponBulletLifeTime = 60; // Tiempo de vida
	global.shipPlayerWeaponBulletWaitToPersecute = 0; // Esperar para seguir
	
	global.shipPlayerWeaponSound = snd_argorus_cannon_shoot; // Declarar Sonido de Disparo
	global.shipPlayerWeaponImpactSound = snd_argorus_cannon_impact; // Declarar Sonido de Disparo
}
function argorusCannon_bulletBehaviour() {
	var bulletId = id;
	bulletLifeTime --;
	x += lengthdir_x(bulletSpeed, bulletDirection);
	y += lengthdir_y(bulletSpeed, bulletDirection);
	
	if (bulletLifeTime <= 0) {
		var cantBullets = 8;
		var initialDirection = 0;
		
		audio_play_sound(snd_argorus_cannon_explode, 1, false);
		
		for (var i = 0; i < cantBullets; i++) {
			initialDirection += 45;
			var shipBullet = instance_create_layer(x, y, "Instances", obj_player_bullet);
			with (shipBullet) {
				bulletBehaviour = normalProyectile;
				bulletImpactSound = snd_argorus_cannon_impact;
				bulletCollision = normalCollision;
				bulletDamage = (obj_player.shipAttack * 1.0);
				bulletSpeed = 5;
				bulletLifeTime = 0;
				bulletDirection = initialDirection;
				sprite_index = spr_argorus_bullet_secondary;
				image_blend = bulletId.image_blend;
			
		}
	}
	instance_destroy();
	}
}