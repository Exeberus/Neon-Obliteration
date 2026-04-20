draw_set_alpha(image_alpha)
switch (effectType) {
	case "Explosion":
		draw_circle_colour(x, y, effectRadioTarget, effectColour, effectColour, true);
	break;
	case "Nova":
		draw_circle_colour(x, y, (0 + effectActualRadio), effectColour, effectColour, true);
	break;
}