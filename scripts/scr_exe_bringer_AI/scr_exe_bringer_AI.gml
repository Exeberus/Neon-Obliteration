function exe_bringer_singleTurret_behaviour() {
	y += shipSpeed;
	
	if shipSpawnAlpha < shipSpawnAlphaMax && is_Spawned == false {
		shipSpawnAlpha += 0.02;
		image_alpha = shipSpawnAlpha;
		if (shipSpawnAlpha == 1) {
			is_Spawned = true
		}
	}
	shipTurretBaseRot += shipSpeed;
	
	targetId = noone;
	targetClosestDist = 0;
	
	with (obj_player) {
		var distance = point_distance(other.x, other.y, x, y);
		
		if (distance < other.shipCannonRange) {
		    other.targetClosestDist = distance;
		    other.targetId = id;
	    }
	}
	if (targetId != noone && targetClosestDist < shipCannonRange) {
		var pointDirection = 0;
		var getTargetPoint = point_direction(x, y, targetId.x, targetId.y);
		var angleDiffPoint = angle_difference(image_angle, getTargetPoint);
	
		var shipRotationClamp = clamp(angleDiffPoint, -1, 1);
	
		image_angle -= shipRotationClamp;
	}
	if (targetId != noone && targetClosestDist < shipCannonRange) {
    
	    shipAttackActualCooldown ++;
    
	    if (shipAttackActualCooldown >= shipAttackCooldown) {
	        shipAttackActualCooldown = 0;
	        enemyShoot_behaviour();
		}
	}
}

function exe_bringer_sniperTurret_behaviour() {
	y += shipSpeed;
		
	if (shipCannonVariantApplied == false) {
		shipWeaponBulletDamage = (shipWeaponBulletDamage + 4 + (2 * shipLevel));
		shipWeaponBulletSpeed = 6 + (0.3 * shipLevel);
		shipAttackCooldown = 4 * 60;
		shipCannonRange = 750;
		shipCannonVariantApplied = true;
		shipWeaponSound = snd_exe_bringer_sniper_shoot;
	}	
	
	if (shipSpawnAlpha < shipSpawnAlphaMax && is_Spawned == false) {
		shipSpawnAlpha += 0.02;
		image_alpha = shipSpawnAlpha;
		if (shipSpawnAlpha == 1) {
			is_Spawned = true
		}
	}
	shipTurretBaseRot += shipSpeed;
	
	targetId = noone;
	targetClosestDist = 0;
	
	with (obj_player) {
		var distance = point_distance(other.x, other.y, x, y);
		
		if (distance < other.shipCannonRange) {
		    other.targetClosestDist = distance;
		    other.targetId = id;
	    }
	}
	if (targetId != noone && targetClosestDist < shipCannonRange) {
		var pointDirection = 0;
		var getTargetPoint = point_direction(x, y, targetId.x, targetId.y);
		var angleDiffPoint = angle_difference(image_angle, getTargetPoint);
	
		var shipRotationClamp = clamp(angleDiffPoint, -1, 1);
	
		image_angle -= shipRotationClamp;
	}
	if (targetId != noone && targetClosestDist < shipCannonRange) {
	    shipAttackActualCooldown ++;
    
	    if (shipAttackActualCooldown >= shipAttackCooldown) {
	        shipAttackActualCooldown = 0;
	        enemyShoot_behaviour();
		}
	}
}

function exe_bringer_tripleTurret_behaviour() {
	y += shipSpeed;
		
	if (shipCannonVariantApplied == false) {
		shipWeaponBulletDamage = (shipWeaponBulletDamage + 0.5 * shipLevel * 0.50);
		shipWeaponBulletSpeed = 3 + (0.15 * shipLevel);
		shipAttackCooldown = 1 * 60;
		shipCannonRange = 250;
		shipWeaponBulletCant = 3;
		shipCannonVariantApplied = true;
		shipWeaponSound = snd_exe_bringer_tripleTurret_shoot;
	}	
	
	if (shipSpawnAlpha < shipSpawnAlphaMax && is_Spawned == false) {
		shipSpawnAlpha += 0.02;
		image_alpha = shipSpawnAlpha;
		if (shipSpawnAlpha == 1) {
			is_Spawned = true
		}
	}
	shipTurretBaseRot += shipSpeed;
	
	targetId = noone;
	targetClosestDist = 0;
	
	with (obj_player) {
		var distance = point_distance(other.x, other.y, x, y);
		
		if (distance < other.shipCannonRange) {
		    other.targetClosestDist = distance;
		    other.targetId = id;
	    }
	}
	if (targetId != noone && targetClosestDist < shipCannonRange) {
		var pointDirection = 0;
		var getTargetPoint = point_direction(x, y, targetId.x, targetId.y);
		var angleDiffPoint = angle_difference(image_angle, getTargetPoint);
	
		var shipRotationClamp = clamp(angleDiffPoint, -1, 1);
	
		image_angle -= shipRotationClamp;
	}
	if (targetId != noone && targetClosestDist < shipCannonRange) {
	    shipAttackActualCooldown ++;
    
	    if (shipAttackActualCooldown >= shipAttackCooldown) {
	        shipAttackActualCooldown = 0;
	        enemyShoot_behaviour();
		}
	}
}