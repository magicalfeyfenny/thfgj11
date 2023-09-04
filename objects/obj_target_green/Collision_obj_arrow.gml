if (other.collided == false && collided == false) {
	global.targets_hit++;
	global.targets_hit_medals[2] = true;
	
	collided = true;

	with (other) {
		collided = true;
		destroy_timer = 15;
	}

	instance_destroy();
}
