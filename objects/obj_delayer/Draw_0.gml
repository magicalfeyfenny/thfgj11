if (countdown > 150) {
	draw_sprite( spr_start_timer, 0, 320, 180);
} else if (countdown > 90) {
	draw_sprite( spr_start_timer, 1, 320, 180);
} else if (countdown > 30) {
	draw_sprite( spr_start_timer, 2, 320, 180);
} else {
	draw_sprite( spr_start_timer, 3, 290 + (15 * min(0, countdown - 20)), 180);
	draw_sprite( spr_start_timer, 4, 350 + (15 * max(0, -countdown + 20)), 180);
}