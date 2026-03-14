// Imitar al jugador.
if (instance_exists(obj_player)) {
	image_blend = global.shipPlayerColor;
	image_angle = obj_player.image_angle;

	if obj_player.shipHealth > 0 {
		sprite_index = global.shipPlayerModel; 
	} else {
		sprite_index = spr_playerStateIcon_death
	}
}

layer_text_text(get_textLayerLevel, "LvL: " + string(global.shipPlayerLevel));