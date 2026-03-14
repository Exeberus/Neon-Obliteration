// Detectar arma
if (room == rm_level && weaponSlot == obj_player.shipActualSlot) {
	image_alpha = 1.0;
	image_blend = c_yellow;
} else {
	image_alpha = 0.7;
	image_blend = c_white;
}

switch (weaponSlot) {
	case 1:
	sprite_index = global.shipPlayerWeaponSlot_1_icon;
	break;
	case 2:
	sprite_index = global.shipPlayerWeaponSlot_2_icon;
	break;
	case 3:
	sprite_index = global.shipPlayerWeaponSlot_3_icon;
	break;
}