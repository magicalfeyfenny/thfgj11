countdown--;

if (countdown < 0 ) {
	global.allowed = true;
	instance_destroy();
}