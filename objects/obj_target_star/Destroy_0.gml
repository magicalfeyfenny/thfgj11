event_inherited();

if (collided == true) {
	effect_create_layer("Effects", ef_ring, x, y, 0.1, c_white);
	audio_play_sound(snd_pop, 1, false);
}