///@description begin down wave

var _obj = instance_create_layer(-60, -60, "Instances", obj_target_star);
with (_obj) {
	path_start(pth_down, 2, path_action_stop, true);
}