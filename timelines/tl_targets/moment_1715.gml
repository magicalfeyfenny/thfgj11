///@description U wave green

var _obj = instance_create_layer(-60, -60, "Instances", obj_target_green);
with (_obj) {
	path_start(pth_U, 2, path_action_stop, true);
}