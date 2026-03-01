x += lengthdir_x(mov_speed, angle);
y += lengthdir_y(mov_speed, angle);

if alpha < 0.30 alpha += 0.02;
image_alpha = alpha;
image_angle = angle;

if y > room_height instance_destroy();

// Crear Rastro
var cometTrail = instance_create_layer(x, y, "BackgroundParticles", obj_comet_trail_particle)
cometTrail.sprite_index = sprite_index
cometTrail.image_angle = angle;
cometTrail.image_xscale = image_xscale;
cometTrail.image_yscale = image_yscale;
cometTrail.image_blend = image_blend;
cometTrail.alpha = image_alpha;