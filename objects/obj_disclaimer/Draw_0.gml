fader++
if (fader > 300) {
	fadeout--;
}
if (fadeout <= -10) {
	room_goto_next();
}

draw_set_color(c_aqua);
draw_set_font(fn_disclaimer);

draw_set_halign(fa_center);

if (fader <= 300) {
	draw_set_alpha( fader / 30 );
} else {
	draw_set_alpha( 0.50 * ( fadeout / 10 ) );
}
draw_text( 320, 25, "This is a fanwork based on Touhou Project" );

if (fader <= 300) {
	draw_set_alpha( fader / 45 );
} else {
	draw_set_alpha( 0.60 * ( fadeout / 10 ) );
}
draw_text( 320, 50, "Touhou Project's copyright belongs to Team Shanghai Alice");


if (fader <= 300 ) {
	draw_set_alpha( fader / 75 );
} else {
	draw_set_alpha( 0.75 * ( fadeout / 10 ) );
}
draw_text( 320, 150, "Created 31 August 2023 ~ 3 September 2023");

if (fader <= 300 ) {
	draw_set_alpha( fader / 90 );
} else {
	draw_set_alpha( 0.85 * ( fadeout / 10 ) );
}
draw_text( 320, 175, "for Touhou Fan Game Jam 11 & GameMaker Community Jam 50");


draw_set_halign(fa_right);
if (fader <= 300 ) {
	draw_set_alpha( fader / 120 );
} else {
	draw_set_alpha( 0.95 * ( fadeout / 10 ) );
}
draw_text( 625, 330, "https://fenny.space");


draw_set_halign(fa_left);
draw_set_alpha(1);