switch (effectType) {
	case "Explosion":
		image_alpha -= 0.1;
		if (image_alpha <= 0) {
			instance_destroy();
		}
	break;
	case "Nova":
		image_alpha -= 0.1;
		effectActualRadio += effectRadioTarget * 0.10
		if (image_alpha <= 0) {
			instance_destroy();
		}
	break;
}