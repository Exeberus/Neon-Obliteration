// Variables
global.playerSelected = 1;
shipModel = global.shipPlayerModel;
shipModelName = global.shipPlayerName;
shipColor = global.shipPlayerColor;

get_textShipModelName = layer_text_get_id("menuSkins", "shipPreviewName");
get_textShipLevel = layer_text_get_id("menuSkins", "shipPreviewLevel");
get_textShipPlayer = layer_text_get_id("menuSkins", "shipPlayer")