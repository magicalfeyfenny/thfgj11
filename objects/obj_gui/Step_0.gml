var _t = obj_eirin.timeline_index;

if (_t == 3000 || _t == 3060 || _t == 3120 || _t == 3180 || _t == 3240 || 
	_t == 3300 || _t == 3360 || _t == 3420 || _t == 3480 || _t == 3540 ) {
		audio_play_sound(snd_timeout, 1, false);
}

if (_t == 3600 && buzzer_played == false) {
	audio_play_sound(snd_buzzer, 1, false);
	buzzer_played = true;
}