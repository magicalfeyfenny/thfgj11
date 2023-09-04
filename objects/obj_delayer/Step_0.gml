countdown--;

if (countdown < 0 ) {
	global.allowed = true;
	audio_play_sound(snd_music, 0, true);
	instance_destroy();
}