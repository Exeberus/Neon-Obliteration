function sniperithCannon_variables() {
	global.shipPlayerWeaponName = "Sniperith Cannon"; // String para nombre
	global.shipPlayerWeaponBulletBehaviour = sniperithCannon_bulletBehaviour; // Funcion para el comportamiento de la bala
	global.shipPlayerWeaponBulletCollision = normalCollision; // Funcion para el comportamiento del impacto
	global.shipPlayerWeaponMaxCooldown = 55; // Cooldown Maximo
	
	global.shipPlayerWeaponBulletDamage = (global.shipPlayerAttack * 2.00) // Daño de las Balas
	global.shipPlayerWeaponBulletCant = 1; // Cantidad de Balas
	global.shipPlayerWeaponBulletSpeed = 12; // Velocidad de la bala
	global.shipPlayerWeaponBulletSprite = spr_sniperith_bullet; // Declarar Sprite
	global.shipPlayerWeaponBulletLifeTime = 0; // Tiempo de vida
	global.shipPlayerWeaponBulletWaitToPersecute = 0; // Esperar para seguir
	global.shipPlayerWeaponSound = snd_sniperith_cannon_shoot; // Declarar Sonido de Disparo
	global.shipPlayerWeaponImpactSound = snd_sniperith_cannon_impact; // Declarar Sonido de Disparo
	global.shipPlayerWeapon_is_AoE = false; // Declarar si inflige daño en Área
	global.shipPlayerWeaponAoERange = 0; // Radio de daño en Área
}
function sniperithCannon_bulletBehaviour() {
	x += lengthdir_x(bulletSpeed, bulletDirection);
	y += lengthdir_y(bulletSpeed, bulletDirection);
}