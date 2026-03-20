// Variables
planetCompleted = false;
planetBiome = choose("Death Space", "Comets Rain", "Asteroids Sector", "Planets Imperium", "Calm Space", "Final Horizon");

sprite_index = planetSprite;
image_blend = planetColor;
image_xscale = planetScale;
image_yscale = planetScale;

planetRotSpeed = random_range(-0.15, 0.15);
planetMarkerRot = 0;
mouseIn = false;