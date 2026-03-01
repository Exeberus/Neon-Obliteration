y += mov_speed;
angle += rotation_speed;

if alpha < alpha_limit alpha += 0.01;
image_alpha = alpha;
image_angle = angle;

if y > room_height instance_destroy();