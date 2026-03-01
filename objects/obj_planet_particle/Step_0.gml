y += mov_speed;
angle += rotation_speed;

if alpha < alpha_limit alpha += 0.005;
image_alpha = alpha;
image_angle = angle;

if y > room_height+100 instance_destroy();