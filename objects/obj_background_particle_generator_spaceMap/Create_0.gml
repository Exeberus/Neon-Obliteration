// Variables para la cantidad de objetos de fondo.
is_active = true;

stars_limit = 260;
stars_cant = 0;

asteroids_limit = 89;
asteroids_cant = 0;

planets_limit = 12;
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