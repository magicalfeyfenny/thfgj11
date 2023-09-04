destroy_timer--;
if (destroy_timer <= 0) {
	instance_destroy();
}

image_scale = 1 + (2 - (destroy_timer / 5));
image_xscale = image_scale;
image_yscale = image_scale;
image_alpha = destroy_timer / 20;
image_angle = base_image_angle + (destroy_timer * 15);
