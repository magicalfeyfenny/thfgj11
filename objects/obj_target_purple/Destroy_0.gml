event_inherited();

if (collided == true) {
	var _obj = instance_create_layer(x, y, "Effects", obj_destroy_orb );
	with (_obj) {
		sprite_index = spr_target_purple;
	}
}