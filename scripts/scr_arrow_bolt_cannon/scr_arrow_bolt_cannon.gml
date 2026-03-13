function arrow_bolt_cannon() {
	// Disparo del arma
	weaponName = "Arrow Bolt Cannon"
	var weapon_coodown = 100;
	
	var bull_damage = 1 // + (obj_player.shipAttack);
	var bull_speed = 7 + (obj_player.shipSpeed / 2);
	var bull_angle = obj_player.shipDirection;
	var bull_sprite = spr_arrow_bolt;
	var bull_behaviour = normalProyectile;
	var bull_collision = normalCollision;
	var bull_impact_sound = snd_arrowbolt_cannon_impact;
	
	var bulletCreate = instance_create_layer(x, y, "Instances", obj_player_bullet);
	bulletCreate.bulletDamage = bull_damage;
	bulletCreate.bulletSpeed = bull_speed;
	bulletCreate.bulletAngle = bull_angle;
	bulletCreate.bulletSprite = bull_sprite;
	bulletCreate.sprite_index = bull_sprite;
	bulletCreate.bulletBehaviour = bull_behaviour;
	bulletCreate.bulletCollision = bull_collision;
	bulletCreate.bulletImpactSound = bull_impact_sound;
	bulletCreate.image_blend = global.shipPlayerColor;
	shipWeaponActualCooldown = weapon_coodown;
	audio_play_sound(snd_arrowbolt_cannon_shoot, 1, false);
}

function arrow_bolt_cannon_cooldown() {
	// Cooldown del arma
	var minCooldown = 0;
	var maxCooldown = 120;
	var actualCooldown = 0;
	
	shipWeaponActualCooldown = actualCooldown;
	shipWeaponMinCooldown = minCooldown;
	shipWeaponMaxCooldown = maxCooldown;
}