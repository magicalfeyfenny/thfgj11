///@description end timeline, create 'stop' object and prevent further action

instance_create_layer(0, 0, "lyr_gui", obj_ender);

global.allowed = false;
timeline_running = false;
