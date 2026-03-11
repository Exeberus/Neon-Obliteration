var oldFont = draw_get_font();
draw_set_font(fnt_pixel_small);
draw_text_colour(x, y, string(textString), textColour1, textColour2, textColour3, textColour4, textAlpha);
draw_set_font(oldFont);