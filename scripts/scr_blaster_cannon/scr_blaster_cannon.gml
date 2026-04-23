function blasterCannon_variables() {
	global.shipPlayerWeaponName = "Blaster Cannon"; // String para nombre
	global.shipPlayerWeaponBulletBehaviour = blasterCannon_bulletBehaviour; // Funcion para el comportamiento de la bala
	global.shipPlayerWeaponBulletCollision = normalCollision; // Funcion para el comportamiento del impacto
	global.shipPlayerWeaponMaxCooldown = 75; // Cooldown Maximo
	
	global.shipPlayerWeaponBulletDamage = (shipAttack * 2.00) // Daño de las Balas
	global.shipPlayerWeaponBulletCant = 1; // Cantidad de Balas
	global.shipPlayerWeaponBulletSpeed = 5; // Velocidad de la bala
	global.shipPlayerWeaponBulletSprite = spr_blaster_bullet; // Declarar Sprite
	global.shipPlayerWeaponBulletLifeTime = 0; // Tiempo de vida
	global.shipPlayerWeaponBulletWaitToPersecute = 0; // Esperar para seguir
	global.shipPlayerWeaponSound = snd_blaster_cannon_shoot; // Declarar Sonido de Disparo
	global.shipPlayerWeaponImpactSound = snd_blaster_cannon_impact; // Declarar Sonido de Disparo
	global.shipPlayerWeapon_is_AoE = true; // Declarar si inflige daño en Área
	global.shipPlayerWeaponAoERange = 125; // Radio de daño en Área
}
function blasterCannon_bulletBehaviour() {
	x += lengthdir_x(bulletSpeed, bulletDirection);
	y += lengthdir_y(bulletSpeed, bulletDirection);
	
}