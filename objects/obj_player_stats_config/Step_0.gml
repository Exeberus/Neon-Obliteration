// Calcular Salud y cambiar estado.
ui_playerHp_max = obj_player.shipMaxHealth
ui_playerHp = obj_player.shipHealth
hp_percent = ui_playerHp / ui_playerHp_max;

image_blend = merge_colour(c_red, c_lime, hp_percent);

if hp_percent >= 0 {
	sprite_index = spr_playerStateIcon 
} else {
	sprite_index = spr_playerStateIcon_death
}