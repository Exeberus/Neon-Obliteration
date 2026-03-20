// Dibujar texto sobre el planeta
var stringSize = string_width(planetName)
var textWidthPosition = sprite_width;
var textHeightPosition = sprite_height * image_yscale;
var oldFont = draw_get_font();

if (mouseIn) {
	draw_sprite_ext(spr_planetMarker, 0, x, y, image_xscale + 0.2, image_yscale + 0.2, planetMarkerRot, image_blend, 1);
	
	draw_set_font(fnt_pixel_small_lb);
	draw_text_colour(x + 85 - stringSize / 3, y - 25 - (textWidthPosition / 2), "Planet: " + string(planetName), c_orange, c_orange, c_yellow, c_yellow, 1);
	draw_text_colour(x + 85 - stringSize / 3, y - 10 - (textWidthPosition / 2), "Faction: " + string(planetFaction), c_yellow, c_yellow, c_yellow, c_yellow, 1);
	draw_text_colour(x + 85 - stringSize / 3, y + 15 - (textWidthPosition / 2), "Enemy Level: " + string(planetLevel), c_white, c_white, c_white, c_white, 1);
	draw_text_colour(x + 85 - stringSize / 3, y + 30 - (textWidthPosition / 2), "Difficulty: " + string(planetDifficulty), c_white, c_white, c_white, c_white, 1);
	draw_text_colour(x + 85 - stringSize / 3, y + 45 - (textWidthPosition / 2), "Biome: " + string(planetBiome), c_aqua, c_aqua, c_aqua, c_aqua, 1);
	if (planetState == "Incompleted") {
		draw_text_colour(x + 85 - stringSize / 3, y + 60 - (textWidthPosition / 2), "Planet Phase: " + string(planetPhase) + " | " + string(planetPhaseLimit), c_red, c_red, c_red, c_red, 1);
		draw_text_colour(x + 85 - stringSize / 3, y + 75 - (textWidthPosition / 2), "- " + string(planetState), c_red, c_red, c_red, c_red, 1);
	} else {
		draw_text_colour(x + 85 - stringSize / 3, y + 60 - (textWidthPosition / 2), "Planet Phase: " + string(planetPhase) + " | " + string(planetPhaseLimit), c_lime, c_lime, c_aqua, c_aqua, 1);
		draw_text_colour(x + 85 - stringSize / 3, y + 75 - (textWidthPosition / 2), "- " + string(planetState), c_lime, c_lime, c_aqua, c_aqua, 1);
	draw_set_font(oldFont);
	}
	
	if (planetCompleted) {
		draw_sprite(spr_completion_star_completed, 0 ,x, y);
	} else {
		draw_sprite(spr_completion_star_incompleted, 0 ,x, y);
	}
}

draw_self();