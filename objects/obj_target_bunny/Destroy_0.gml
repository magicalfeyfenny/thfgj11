event_inherited();

if (collided == true) {
	var _obj = instance_create_layer(x, y, "Effects", obj_destroy_orb );
	with (_obj) {
		sprite_index = spr_particle_bunny;
	}
	audio_play_sound(snd_bunny_pop, 1, false);
}