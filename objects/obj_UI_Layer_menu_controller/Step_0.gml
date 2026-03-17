// Abrir o cerrar UI Layer dependiendo de la Habitacion
if (room != rm_menu) { global.is_menuLayerEnabled = false } else { global.is_menuLayerEnabled = true };
if (global.is_menuLayerEnabled) {
	layer_set_visible("menuPanelButtons", true);
	layer_set_visible("spaceMap_1", true);
} else {
	layer_set_visible("menuPanelButtons", false);
	layer_set_visible("menuSkins", false);
	layer_set_visible("spaceMap_1", false);
}