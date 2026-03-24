// Variables
global.is_menuLayerEnabled = true;
global.is_menuOpen = false;
global.is_levelTransition = false;
global.actualSolarSystemName = "Asterion-Eularos";
global.actualSolarSystemDificulty = "Dificulty - I";
global.actualSolarSystemColor = c_lime;

is_menuSkinsVisible = layer_get_visible("menuSkins");
get_solarSystemId = layer_text_get_id("spaceMap_1", "solarSystemName");
get_solarSystemDificultyId = layer_text_get_id("spaceMap_1", "solarSystemDificulty");