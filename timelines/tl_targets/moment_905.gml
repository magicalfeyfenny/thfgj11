///@description right wave bunny

var _obj = instance_create_layer(-60, -60, "Instances", obj_target_bunny);
with (_obj) {
	path_start(pth_rightwave, 2, path_action_stop, true);
}