// Inherit the parent event
event_inherited();

// Dibujar Torreta
draw_sprite_ext(spr_exe_bringer, 0, x, y, 1, 1, shipTurretBaseRot, image_blend, 1);

// Dibujar Rango de la Torreta al colocar Mouse encima
if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button(mb_right)) {
	draw_circle_colour(x, y, shipCannonRange, image_blend, image_blend, true);
	draw_set_alpha(0.15);
	draw_circle_colour(x, y, shipCannonRange, image_blend, image_blend, false);
	draw_set_alpha(1);
}