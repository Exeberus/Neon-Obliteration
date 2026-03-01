function normalCollision() {
	other.shipHealth -= bulletDamage;
	instance_destroy();
}
function normalProyectile() {
	image_angle = bulletAngle;
	
	x += lengthdir_x(bulletSpeed, bulletAngle);
	y += lengthdir_y(bulletSpeed, bulletAngle);
}