event_inherited();

if (collided == true) {
	var _obj = instance_create_layer(x, y, "Effects", obj_destroy_orb );
	with (_obj) {
		sprite_index = spr_target_green;
	}
	audio_play_sound(snd_medal_pop, 1, false);
}
