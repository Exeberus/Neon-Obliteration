// Cambiar textos
var detectPlayer1 = instance_exists(obj_player)
var detectPlayer2 = instance_exists(obj_player_2)

if (detectPlayer1) {
	layer_text_text(get_shipWeaponName_layer_p1, string(obj_player.shipWeaponName));
}
if (detectPlayer2) {
	layer_text_text(get_shipWeaponName_layer_p2, string(obj_player_2.shipWeaponName));
}

// Abrir Hotbar
if (instance_exists(obj_player)) { layer_set_visible("Hotbar_p1", true) } else { layer_set_visible("Hotbar_p1", false) }
if (instance_exists(obj_player_2)) { layer_set_visible("Hotbar_p2", true) } else { layer_set_visible("Hotbar_p2", false) }