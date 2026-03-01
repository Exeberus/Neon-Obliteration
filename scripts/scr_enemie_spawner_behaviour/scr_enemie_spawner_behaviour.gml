function scr_enemie_spawner_behaviour() {
	function arrow_spawn() {
		var x_generate = 0;
		var y_generate = random_range(0, room_width);
		var arrow_shipDirection = irandom_range(200, 340)
		
		var arrow_generate = instance_create_layer(x_generate, y_generate, "Instances", obj_arrow);
		arrow_generate.shipDirection = arrow_shipDirection;
	}
}