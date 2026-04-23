// fondo
draw_sprite(spr_slider, 0, x, y);

// relleno
var fill_width = value * slider_width;

// dibuja solo una parte del sprite (clave)
draw_sprite_part(
    spr_slider_fill,
    0,
    0, 0,
    fill_width, sprite_get_height(spr_slider_fill),
    x, y-8
);

// handle
var handle_x = x + fill_width;

draw_sprite(spr_slider_handle, 0, handle_x, y);