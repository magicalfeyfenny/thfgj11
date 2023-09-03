draw_sprite_ext(spr_eirin, 0, x, y, 1 - (2 * model_flip), 1, 0, c_white, 1);

draw_sprite_ext(spr_eirin_arm_arrow, 0, x - 8 + (16 * model_flip), y - 34, 1 - (2 * model_flip), 1,
					point_dir + (180 * model_flip) + ( 45 * bow_charging * (1 - (2 * model_flip))), c_white, 1);
					
draw_sprite_ext(spr_eirin_arm_bow, 0, x + 8 - (16 * model_flip), y - 34, 1 - (2 * model_flip), 1,
					point_dir + (180 * model_flip) + ( 45 * bow_charging * (1 - (2 * model_flip))), c_white, 1);

for (var _j = 0; _j < bow_stock; _j++) {
	draw_sprite_ext(spr_eirin_arrow, 0, x - 30 + (_j * 15), y + 10, .25, .25, 45, c_white, 1);
}

