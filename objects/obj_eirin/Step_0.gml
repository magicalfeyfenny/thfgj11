//point bow at mouse
point_dir = point_direction(x, y - 32, mouse_x, mouse_y);
shoot_allow_timer--;
if (shoot_allow_timer <= 0) {
	shoot_allow = true;
}

if (mouse_check_button(mb_left)) {
	//only act if standing on a surface
	//charge bow and stock up to 3 arrows, prevent movement
	bow_charge += 0.10;
	if (bow_charge >= 8) {
		bow_charge = 8;
	}
	move_allowed = false;
	bow_charging = true;
	move_speed = 0;
}
if (mouse_check_button_released(mb_left)) {
	//only act if allowed to shoot
	//remove arrow stacks, fire all arrows at once 
	if (shoot_allow == true) {
		for (var _i = 0; _i < ((bow_charge + 1) ^ (bow_stock + 1)); _i++) {
			var _obj = instance_create_layer(x, y, "Instances", obj_arrow);
			with (_obj) {
				speed = ((other.bow_charge / 2) + 3) * random_range( 1.2, 1.8 );
				direction = other.point_dir - 10 + random(20);
				gravity = .05;
				image_scale = random_range( 0.6, 1.0 );
				image_xscale = image_scale;
				image_yscale = image_scale;
				
			}
		}
		
		bow_charge = 0;
		bow_stock = 0;
	}
	bow_charging = false;
	move_allowed = true;
	
}
if (mouse_check_button_pressed(mb_right)) { 
	//uncharge bow and store arrows, allow movement
	//treat as releasing Z, set a flag to prevent shooting for a moment
	bow_stock += bow_charge / 5;
	if (bow_stock >= 5) {
		bow_stock = 5;
	}
	bow_charging = false;
	mouse_clear(mb_left);
	move_allowed = true;
	shoot_allow = false;
	shoot_allow_timer = 30;
}


if (keyboard_check(ord("A"))) {
	//face in left, move left if allowed
	//prevent movement if left wall
	face_dir = 180;
	model_flip = true;
	if (move_allowed) {
		move_speed += 0.25;
		if (move_speed >= 3) {
			move_speed = 3;
		}
		x -= move_speed;
	}
}
if (keyboard_check(ord("D"))) {
	//face in right, move right if allowed
	//prevent movement if right wall
	face_dir = 0;
	model_flip = false;
	if (move_allowed) {
		move_speed += 0.25;
		if (move_speed >= 3) {
			move_speed = 3;
		}
		x += move_speed;
	}
}
if !(keyboard_check(ord("D")) || keyboard_check(ord("A"))) {
	move_speed -= 0.1;
	if (move_speed <= 0) {
		move_speed = 0;
	}
}


if (keyboard_check(vk_space)) {
	//jump
	//hold to maintain jump speed
	//treat as releasing space after hold limit reached
}

//apply gravity, check for platforms
