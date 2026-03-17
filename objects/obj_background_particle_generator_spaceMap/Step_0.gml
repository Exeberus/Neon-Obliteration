function backgroundParticlesGenerate() {
	// Estrellas
	stars_cant = instance_number(obj_star_particle);

	var star_mov_speed = random_range(0.06, 0.10);
	var star_angle = random_range(0, 360);
	var star_rotation_speed = random(0.5);
	var star_color = c_white
	var star_sprite_select = choose( 
		spr_star_1, 
		spr_star_2,
		spr_star_3, 
		spr_star_4,
		spr_star_5,
		spr_star_6
	);
	var star_spawn_x = random(room_width);
	var star_spawn_y = random_range(-200, room_height);

	if stars_cant < stars_limit {
		var star = instance_create_layer(star_spawn_x, star_spawn_y, "BackgroundParticles", obj_star_particle);
		star.angle = star_angle;
		star.mov_speed = star_mov_speed;
		star.rotation_speed = star_rotation_speed;
		star.image_blend = star_color;
		star.image_alpha = 0;
		star.sprite_index = star_sprite_select;
	}

	// Planetas

	planets_cant = instance_number(obj_planet_particle);

	var planet_mov_speed = random_range(0.001, 0.004);
	var planet_scale = random_range(0.08, 0.4);
	var planet_alpha_limit = random(0.3)
	var planet_angle = random_range(0, 360);
	var planet_rotation_speed = random(0.15);
	var planet_color = choose(
		c_red,
		c_aqua,
		c_lime,
		c_white,
		c_yellow,
		c_orange,
		c_fuchsia,
		c_purple
	)
	var planet_sprite_select = choose(
		spr_planet_1,
		spr_planet_2,
		spr_planet_3,
		spr_planet_4,
		spr_planet_5
		)
	var planet_spawn_x = irandom_range(0, room_width);
	var planet_spawn_y = irandom_range(room_height, 0);

	if planets_cant < planets_limit {
		var planet = instance_create_layer(planet_spawn_x, planet_spawn_y, "BackgroundParticles", obj_planet_particle);
		planet.angle = planet_angle;
		planet.mov_speed = planet_mov_speed;
		planet.alpha_limit = planet_alpha_limit;
		planet.rotation_speed = planet_rotation_speed;
		planet.image_blend = planet_color;
		planet.image_alpha = 0;
		planet.sprite_index = planet_sprite_select;
		planet.image_xscale = planet_scale;
		planet.image_yscale = planet_scale;
	}

	// Asteroides

	asteroids_cant = instance_number(obj_asteroid_particle);

	var asteroid_mov_speed = random_range(0.01, 0.03);
	var asteroid_scale = random_range(0.6, 1.1);
	var asteroid_alpha_limit = random(0.4)
	var asteroid_angle = random_range(0, 360);
	var asteroid_rotation_speed = random(0.07);
	var asteroid_color = c_white
	var asteroid_sprite_select = choose(
		spr_asteroid_1,
		spr_asteroid_2,
		spr_asteroid_3,
		spr_asteroid_4,
		spr_asteroid_5,
		spr_asteroid_6,
		spr_asteroid_7,
		spr_asteroid_8,
		spr_asteroid_9,
		spr_asteroid_10
		)
	var asteroid_spawn_x = irandom_range(0, room_width);
	var asteroid_spawn_y = irandom_range(room_height, 0);

	if asteroids_cant < asteroids_limit {
		var asteroid = instance_create_layer(asteroid_spawn_x, asteroid_spawn_y, "BackgroundParticles", obj_asteroid_particle);
		asteroid.angle = asteroid_angle;
		asteroid.mov_speed = asteroid_mov_speed;
		asteroid.alpha_limit = asteroid_alpha_limit;
		asteroid.rotation_speed = asteroid_rotation_speed;
		asteroid.image_blend = asteroid_color;
		asteroid.image_alpha = 0;
		asteroid.sprite_index = asteroid_sprite_select;
		asteroid.image_xscale = asteroid_scale;
		asteroid.image_yscale = asteroid_scale;
	}

	// Cometas

	comets_cant = instance_number(obj_comet_particle);

	var comet_mov_speed = random_range(0.75, 2.25);
	var comet_scale = random_range(0.1, 0.3);
	var comet_alpha_limit = random(0.5)
	var comet_angle = random_range(0, 360);
	var comet_rotation_speed = random(0.1);
	var comet_color = choose(
		c_red,
		c_aqua,
		c_lime,
		c_white,
		c_yellow,
		c_orange,
		c_navy,
		c_fuchsia,
		c_grey
	)

	var comet_sprite_select = spr_comet
	var comet_spawn_x = irandom_range(0, room_width);
	var comet_spawn_y = irandom_range(!room_height, room_height / 2)

	if comets_cant < comets_limit {
		var comet = instance_create_layer(comet_spawn_x, comet_spawn_y, "BackgroundParticles", obj_comet_particle);
		comet.angle = comet_angle;
		comet.mov_speed = comet_mov_speed;
		comet.alpha_limit = comet_alpha_limit;
		comet.rotation_speed = comet_rotation_speed;
		comet.image_blend = comet_color;
		comet.image_alpha = 0;
		comet.sprite_index = comet_sprite_select;
		comet.image_xscale = comet_scale;
		comet.image_yscale = comet_scale;
	}
}

backgroundParticlesGenerate();	