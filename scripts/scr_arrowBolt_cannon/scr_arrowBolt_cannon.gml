function arrowBoltCannon_variables() {
	global.shipPlayerWeaponName = "Arrowbolt Cannon"; // String para nombre
	global.shipPlayerWeaponBulletBehaviour = arrowBoltCannon_bulletBehaviour; // Funcion para el comportamiento de la bala
	global.shipPlayerWeaponBulletCollision = normalCollision; // Funcion para el comportamiento del impacto
	global.shipPlayerWeaponMaxCooldown = 20; // Cooldown Maximo
	
	global.shipPlayerWeaponBulletDamage = (shipAttack * 1.00) // Daño de las Balas
	global.shipPlayerWeaponBulletCant = 1; // Cantidad de Balas
	global.shipPlayerWeaponBulletSpeed = 6; // Velocidad de la bala
	global.shipPlayerWeaponBulletSprite = spr_arrowBolt_bullet; // Declarar Sprite
	global.shipPlayerWeaponBulletLifeTime = 0; // Tiempo de vida
	global.shipPlayerWeaponBulletWaitToPersecute = 0; // Esperar para seguir
	
	global.shipPlayerWeaponSound = snd_arrowbolt_cannon_shoot; // Declarar Sonido de Disparo
	global.shipPlayerWeaponImpactSound = snd_arrowbolt_cannon_impact; // Declarar Sonido de Disparo
	global.shipPlayerWeapon_is_AoE = false; // Declarar si inflige daño en Área
	global.shipPlayerWeaponAoERange = 0; // Radio de daño en Área
}
function arrowBoltCannon_bulletBehaviour() {
	x += lengthdir_x(bulletSpeed, bulletDirection);
	y += lengthdir_y(bulletSpeed, bulletDirection);
}