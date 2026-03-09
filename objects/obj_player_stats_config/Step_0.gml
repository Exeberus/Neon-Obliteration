// Calcular Salud y cambiar estado.
uiPlayerHp_max = obj_player.shipMaxHealth
uiPlayerHp = obj_player.shipHealth
hpPercent = uiPlayerHp / uiPlayerHp_max;

image_blend = merge_colour(c_red, c_lime, hpPercent);

if hpPercent >= 0 {
	sprite_index = spr_playerStateIcon 
} else {
	sprite_index = spr_playerStateIcon_death
}