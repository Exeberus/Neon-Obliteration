// Posición del handle
var handle_x = x + (value * slider_width);

// Detectar que tipo de valor eso
switch (type) {
	case "master":
        value = global.volumenMaster;
        break;
	
    case "sfx":
        value = global.volumenSfx;
        break;

    case "music":
        value = global.volumenMusic;
        break;
}

// Click en la barra o handle
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y,
        x, y - 8,
        x + slider_width, y + 8)) {
        
        dragging = true;
    }
}

// Soltar
if (mouse_check_button_released(mb_left)) {
    dragging = false;
}

// Arrastrar
if (dragging) {
    var old_value = value;

    var new_x = clamp(mouse_x, x, x + slider_width);
    value = (new_x - x) / slider_width;

    if (value != old_value) {

        switch (type) {
			case "master":
                global.volumenMaster = value;
                break;
			
            case "sfx":
                global.volumenSfx = value;
                break;

            case "music":
                global.volumenMusic = value;
                break;
        }

        audio_config();
    }
}