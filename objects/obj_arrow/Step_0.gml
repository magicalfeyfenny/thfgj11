destroy_timer--;

image_angle = direction;
image_alpha = (destroy_timer / 15);

if (destroy_timer <= 0 ) {
	instance_destroy();
}