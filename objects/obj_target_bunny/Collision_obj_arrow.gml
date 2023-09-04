if (other.collided == false && collided == false) {
	global.targets_hit++;
	global.targets_hit_bunnies++;
	
	collided = true;

	with (other) {
		collided = true;
		destroy_timer = 15;
	}

	instance_destroy();
}
