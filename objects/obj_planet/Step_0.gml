planetMarkerRot += 0.5;
planetMarker_2Rot += 0.25;
image_angle += planetRotSpeed;

if (position_meeting(mouse_x, mouse_y, id) && markerActualScale > markerMinScale) {
	markerAlpha += 0.05;
	markerActualScale -= 0.1;
}

// Colores de Facciones
switch (planetFaction) {
	case "Exeberus":
		factionTextColor = c_red;
	break;
}

// Colores de Minerales
switch (planetMineral) {
	case "Starlit":
		mineralTextColor = c_yellow;
	break;
	case "Kaulite":
		mineralTextColor = c_aqua;
	break;
}