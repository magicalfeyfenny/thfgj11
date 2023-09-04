///@description right wave yellow

var _obj = instance_create_layer(-60, -60, "Instances", obj_target_yellow);
with (_obj) {
	path_start(pth_rightwave, 2, path_action_stop, true);
}