function scr_enemies_death() {
	// Detectar Muerte.
	if shipHealth <= 0 {
		instance_destroy();
	}
}