draw_set_color(c_black);
draw_set_alpha(0.6);
draw_roundrect(10, 10, 630, 350, false);

draw_set_alpha(1);

draw_set_font( fn_scores );

draw_set_color( c_fuchsia );
draw_set_halign( fa_left );
draw_text(20, 40, "Results:" );
draw_text(70, 80, "Stars collected:" );
draw_text(70, 105, "Bunnies collected:" );
draw_text(70, 130, "Hourai Elixir ingredients:" );

draw_text(70, 270, "Total targets hit: ");
draw_text(70, 295, "Completion: ");


draw_set_halign( fa_right );
draw_set_color( c_aqua );
draw_text(570, 80, string(global.targets_hit_stars));
draw_text(570, 105, string(global.targets_hit_bunnies));

draw_text(570, 270, string(global.targets_hit) + " / " + string(global.targets) );
draw_text(570, 295, string( floor(100 * (global.targets_hit / global.targets)) ) + "%" );

if (delayer < 240 && global.targets_hit_medals[0] == true) {
	draw_sprite(spr_target_red, 0, 100, 205);
}
if (delayer < 210 && global.targets_hit_medals[1] == true) {
	draw_sprite(spr_target_yellow, 0, 210, 205);
}
if (delayer < 180 && global.targets_hit_medals[2] == true) {
	draw_sprite(spr_target_green, 0, 320, 205);
}
if (delayer < 150 && global.targets_hit_medals[3] == true) {
	draw_sprite(spr_target_blue, 0, 430, 205);
}
if (delayer < 120 && global.targets_hit_medals[4] == true) {
	draw_sprite(spr_target_purple, 0, 540, 205);
}

if (global.targets_hit >= global.targets && delayer < 60) {
	draw_set_halign(fa_center)
	draw_set_color(c_black);
	draw_text( 320 - 1, 180 - 1, "Congratulations! All components collected!" );
	draw_text( 320 - 1, 180 + 1, "Congratulations! All components collected!" );
	draw_text( 320 + 1, 180 - 1, "Congratulations! All components collected!" );
	draw_text( 320 + 1, 180 + 1, "Congratulations! All components collected!" );
	draw_set_color(c_white);
	draw_text( 320, 180, "Congratulations! All components collected!" );
}

if (delayer < 0) {
	draw_set_halign(fa_right);
	draw_set_color(c_lime);
	draw_text(620, 330, "Next volley...");
}

draw_set_halign(fa_left);
draw_set_color(c_white);