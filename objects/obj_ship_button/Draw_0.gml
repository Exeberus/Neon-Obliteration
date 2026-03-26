draw_self();
var get_oldFont = draw_get_font();
var stringLen = string_length(modelName);
var mousePointDistance = point_distance(x, y, mouse_x, mouse_y);
if (mousePointDistance < 16) {
	draw_set_font(fnt_pixel_small_lb);
	if (!is_blocked) {
		switch (rarity) {
			case "Common": 
				draw_text_colour(x - (stringLen * 3), y - 40, string(modelName), c_white, c_white, c_white, c_white, 1)
			break;
			case "Uncommon": 
				draw_text_colour(x - (stringLen * 3), y - 40, string(modelName), c_lime, c_lime, c_lime, c_lime, 1)
			break;
			case "Rare": 
				draw_text_colour(x - (stringLen * 3), y - 40, string(modelName), c_aqua, c_aqua, c_aqua, c_blue, 1)
			break;
			case "Epic": 
				draw_text_colour(x - (stringLen * 3), y - 40, string(modelName), c_red, c_fuchsia, c_fuchsia, c_fuchsia, 1)
			break;
			case "Legendary": 
				draw_text_colour(x - (stringLen * 3), y - 40, string(modelName), c_orange, c_orange, c_yellow, c_yellow, 1)
			break;
		}
	} else { 
		draw_text_colour(x - 20, y - 40, "Blocked", c_red, c_red, c_red, c_red, 1)
		if (price_galaxianCredits > 0) {
			draw_text_colour(x - 20, y + 25, "Cost To Unlock: " + string(price_galaxianCredits) + " Galaxian Credits", c_yellow, c_yellow, c_yellow, c_yellow, 1)
		}
	}
}