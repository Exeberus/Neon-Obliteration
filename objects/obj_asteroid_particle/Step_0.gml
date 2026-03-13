y += mov_speed;
angle += rotation_speed;

function activeParticle() {
	if alpha < 0 {
		instance_destroy();
	}
	
	if (alpha < 0.80 && is_backgroundParticle) {
		alpha += 0.01;
	} else if (is_backgroundParticle == false) {
		alpha -= 0.04;
	}
}

image_alpha = alpha;
image_angle = angle;

if y > room_height instance_destroy();

activeParticle();