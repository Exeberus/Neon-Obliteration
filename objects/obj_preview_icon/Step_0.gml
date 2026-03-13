// Aplicar en todo momento los cambios de Sprites y Colores.
sprite_index = shipModel;
image_blend = shipColor;

// Nombre de la nave
layer_text_text(get_textShipModelName, global.shipPlayerName);
layer_text_blend(get_textShipModelName, global.shipPlayerColor);

layer_text_text(get_textShipLevel, "Ship Level: " + string(global.shipPlayerLevel)); // Nivel de la nave