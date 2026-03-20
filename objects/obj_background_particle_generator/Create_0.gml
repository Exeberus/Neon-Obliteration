// Variables para la cantidad de objetos de fondo.
is_active = true;
spaceBiomes = global.biomeSelected;
spaceBiomeChangeTime = 0;
spaceBiomeMaxTime = (60 * 60);

stars_limit = 0;
stars_cant = 0;

planets_limit = 0;
planets_cant = 0;

asteroids_limit = 0;
asteroids_cant = 0;

comets_limit = 0;
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