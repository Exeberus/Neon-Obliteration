// Imitar al jugador.
switch (player) {
	case 1:
	if (instance_exists(obj_player)) {
		image_blend = global.shipPlayerColor;
		image_angle = obj_player.image_angle;

		if obj_player.shipHealth > 0 {
			sprite_index = global.shipPlayerModel; 
		} else {
			sprite_index = spr_playerStateIcon_death;
			image_angle = 0;
		}
		layer_text_text(get_textLayerPlayerLives, "x" + string(global.shipPlayerLives));
		layer_text_blend(get_textLayerPlayerLives, global.shipPlayerColor);
	}
	break;
	case 2:
	if (instance_exists(obj_player_2)) {
		image_blend = global.shipPlayer2Color;
		image_angle = obj_player_2.image_angle;

		if obj_player_2.shipHealth > 0 {
			sprite_index = global.shipPlayer2Model; 
		} else {
			sprite_index = spr_playerStateIcon_death;
			image_angle = 0;
		}
	}
	break;
}