audio_play_sound(snd_material_collect, 1, false);
instance_destroy();

if (currencyType == "Mineral") {
	switch (currencyName) {
		case "Starlit":
			global.starlit += currencyCant;
		break;
		case "Kaulite":
			global.Kaulite += currencyCant;
		break;
	}
}

var textCreate = instance_create_layer(x, y, "Instances", obj_floating_text);

with (textCreate) {
	textLifeTime = 180;
	textSpeed = 0.1;
	textFont = fnt_pixel_small;
	textRandomCreate_Value = 15;
	textRandomPosition = false;
	textFollow = false;
	textToFollow = noone;
	textFollowOffset_x = 0;
	textFollowOffset_y = 0;
	textMoveDirection = "";
	textString = string(other.currencyName) + " x" + string(other.currencyCant);
	textColour1 = other.textColor1;
	textColour2 = other.textColor1;
	textColour3 = other.textColor2;
	textColour4 = other.textColor2;
	textAlpha = 1;
	textAlphaIncrease = 0;
	textAlphaDecrease = 0.02;
	textAlphaRoof = false;
}