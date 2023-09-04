///@description spiral wave purple

var _obj = instance_create_layer(-60, -60, "Instances", obj_target_purple);
with (_obj) {
	path_start(pth_spiral, 2, path_action_stop, true);
}