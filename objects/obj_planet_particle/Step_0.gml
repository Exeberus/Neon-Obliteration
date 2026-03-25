y += mov_speed;
angle += rotation_speed;

function activeParticle() {
	if alpha < 0 {
		instance_destroy();
	}
	
	if (alpha < alpha_limit && is_backgroundParticle) {
		alpha += 0.005;
	} else if (is_backgroundParticle == false) {
		alpha -= 0.04;
	}
}
image_alpha = alpha;
image_angle = angle;

if y > room_height+100 instance_destroy();

activeParticle();