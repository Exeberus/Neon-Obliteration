// Detectar arma
var playerDetect = noone;
switch (player) {
	case 1:
		playerDetect = obj_player;
	break;
	case 2:
		playerDetect = obj_player_2;
	break;
}
if (instance_exists(playerDetect)) {
	if (player == 1) { actualPlayer = obj_player.shipActualSlot } else if (player == 2) { actualPlayer = obj_player_2.shipActualSlot }
}

if (room == rm_level && weaponSlot == actualPlayer) {
	image_alpha = 1.0;
	image_blend = c_yellow;
} else {
	image_alpha = 0.7;
	image_blend = c_white;
}
if (player == 1) {
	switch (weaponSlot) {
		case 1:
		sprite_index = global.shipPlayerWeaponSlot_1_icon_p1;
		break;
		case 2:
		sprite_index = global.shipPlayerWeaponSlot_2_icon_p1;
		break;
		case 3:
		sprite_index = global.shipPlayerWeaponSlot_3_icon_p1;
		break;
	}
}
if (player == 2) {
	switch (weaponSlot) {
		case 1:
		sprite_index = global.shipPlayerWeaponSlot_1_icon_p2;
		break;
		case 2:
		sprite_index = global.shipPlayerWeaponSlot_2_icon_p2;
		break;
		case 3:
		sprite_index = global.shipPlayerWeaponSlot_3_icon_p2;
		break;
	}
}