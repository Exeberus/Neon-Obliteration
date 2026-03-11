// Comportamientos y Funciones del texto
function textAlphaEffect() { // Efecto de desvanecimiento
	// Techo de Alpha
	if (textAlphaRoof) {
		textAlpha += textAlphaIncrease;
		if (textAlpha >= 1) { // Hace que cuando 'textAlpha' llegue a 1 comience a desvanecerse
			textAlphaRoof = false;
		}
	} else {
		textAlpha -= textAlphaDecrease; // Desvanecer
	}
}
function textDestroy() { // Destruir objeto
	textLifeTime --;
	// Eliminar objeto al perder su 'textAlpha' o al perder su 'textLifeTime'
	if (textAlpha < 0) {
		instance_destroy();
	}
	
	if (textLifeTime <= 0) {
		instance_destroy();
	}
}
function textMovement() {
	// Detectar a que lado se va a mover
	if (textMoveDirection != noone) {
		switch (textMoveDirection) {
			case "up":
				y -= textSpeed;
			break;
			case "down":
				y += textSpeed;
			break;
			case "left":
				x -= textSpeed;
			break;
			case "right":
				x += textSpeed;
			break;
		}
	}
}
function textRandomPositionCreate() {
	if (!textRandomPosition && textRandomCreate_Value > 0)
	{
    x += irandom_range(-textRandomCreate_Value, textRandomCreate_Value);
    y += irandom_range(-textRandomCreate_Value, textRandomCreate_Value);

    textRandomPosition = true;
	}
}
	
textAlphaEffect();
textDestroy();
textMovement();
textRandomPositionCreate();