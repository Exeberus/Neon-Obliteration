// Variables para la cantidad de objetos de fondo.
is_active = true;

stars_limit = 200;
stars_cant = 0;

asteroids_limit = 25;
asteroids_cant = 0;

planets_limit = 4;
planets_cant = 0;

comets_limit = 16;
comets_cant = 0;

// Funcion para eliminar particulas al cambiar de bioma -
function removeParticle() {
	with (all) {
		if (variable_instance_exists(id, "is_backgroundParticle")) {
			is_backgroundParticle = false;
		}
	}
}

scr_biomesList(); // Recibir lista de Biomas