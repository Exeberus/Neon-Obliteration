function neutronSplitterCannon_variables() {
	global.shipPlayerWeaponName = "Neutron Splitter Cannon"; // String para nombre
	global.shipPlayerWeaponBulletBehaviour = neutronSplitterCannon_bulletBehaviour; // Funcion para el comportamiento de la bala
	global.shipPlayerWeaponBulletCollision = normalCollision; // Funcion para el comportamiento del impacto
	global.shipPlayerWeaponMaxCooldown = 20; // Cooldown Maximo
	
	global.shipPlayerWeaponBulletDamage = (global.shipPlayerAttack * 0.33) // Daño de las Balas
	global.shipPlayerWeaponBulletCant = 3; // Cantidad de Balas
	global.shipPlayerWeaponBulletSpeed = 6; // Velocidad de la bala
	global.shipPlayerWeaponBulletSprite = spr_neutronSplitter_bullet; // Declarar Sprite
	global.shipPlayerWeaponBulletLifeTime = 0; // Tiempo de vida
	global.shipPlayerWeaponBulletWaitToPersecute = 0; // Esperar para seguir
	
	global.shipPlayerWeaponSound = snd_neutronSplitter_cannon_shoot; // Declarar Sonido de Disparo
	global.shipPlayerWeaponImpactSound = snd_neutronSplitter_cannon_impact; // Declarar Sonido de Disparo
}
function neutronSplitterCannon_bulletBehaviour() {
	x += lengthdir_x(bulletSpeed, bulletDirection);
	y += lengthdir_y(bulletSpeed, bulletDirection);
}