draw_sprite_ext(spr_eirin, 0, x, y, 1 - (2 * model_flip), 1, 0, c_white, 1);

draw_sprite_ext(spr_eirin_arm_arrow, 0, x - 6 + (12 * model_flip), y - 31, 1 - (2 * model_flip), 1,
					point_dir + (180 * model_flip) + ( 45 * bow_charging * (1 - (2 * model_flip))), c_white, 1);
					
draw_sprite_ext(spr_eirin_arm_bow, 0, x + 6 - (12 * model_flip), y - 31, 1 - (2 * model_flip), 1,
					point_dir + (180 * model_flip) + ( 45 * bow_charging * (1 - (2 * model_flip))), c_white, 1);

