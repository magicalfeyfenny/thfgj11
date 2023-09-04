for (var _j = 0; _j < obj_eirin.bow_stock; _j++) {
	draw_sprite_ext(spr_eirin_arrow, 0, obj_eirin.x - 30 + (_j * 15), obj_eirin.y - 60, .25, .25, 45, c_white, 1);
}
if (obj_eirin.bow_charge > 0) {
	draw_rectangle_color(obj_eirin.x - 20, obj_eirin.y, (obj_eirin.x - 20) + (40), obj_eirin.y + 2, 
				c_black, c_black, c_black, c_black, false );
	draw_rectangle_color(obj_eirin.x - 20, obj_eirin.y, (obj_eirin.x - 20) + (5 * obj_eirin.bow_charge), obj_eirin.y + 2, 
				c_fuchsia, c_fuchsia, c_white, c_white, false );
}
if (obj_eirin.shoot_allow == false) {
	draw_rectangle_color(obj_eirin.x - 20, obj_eirin.y, (obj_eirin.x - 20) + (40), obj_eirin.y + 2, 
			c_black, c_black, c_black, c_black, false );
	draw_set_alpha(sin(obj_eirin.flasher));
	draw_rectangle_color(obj_eirin.x - 20, obj_eirin.y, (obj_eirin.x - 20) + (40), obj_eirin.y + 2, 
			c_red, c_red, c_red, c_red, false );
	draw_set_alpha(1);
}

draw_set_color(c_white);
draw_set_font(fn_gui);
draw_set_alpha(.75);
draw_text(7, 7, "Targets: " + string(global.targets_hit) + " / " + string(global.targets) );
draw_text(7, 24, "Stars hit: " + string(global.targets_hit_stars));
draw_text(7, 41, "Bunnies hit: " + string(global.targets_hit_bunnies));
draw_text(7, 58, "Medals collected:");
if (global.targets_hit_medals[0] == true) {
	draw_sprite_ext(spr_target_red, 0, 25, 80, .25, .25, 0, c_white, .75);
}
if (global.targets_hit_medals[1] == true) {
	draw_sprite_ext(spr_target_yellow, 0, 50, 80, .25, .25, 0, c_white, .75);
}
if (global.targets_hit_medals[2] == true) {
	draw_sprite_ext(spr_target_green, 0, 75, 80, .25, .25, 0, c_white, .75);
}
if (global.targets_hit_medals[3] == true) {
	draw_sprite_ext(spr_target_blue, 0, 100, 80, .25, .25, 0, c_white, .75);
}
if (global.targets_hit_medals[4] == true) {
	draw_sprite_ext(spr_target_purple, 0, 125, 80, .25, .25, 0, c_white, .75);
}
draw_set_alpha(1);