// Inherit the parent event
event_inherited();

drawWeaponChangetText = function() {
	old_textFont = draw_get_font();
	weaponTextAlpha -= 0.03;
	
	draw_set_font(fnt_pixel_small)
	draw_text_colour(x - 45, y - 30, string(shipWeaponName), image_blend, image_blend, image_blend, image_blend, weaponTextAlpha)
	
	draw_set_font(old_textFont)
}