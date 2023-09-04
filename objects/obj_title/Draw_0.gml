draw_set_halign(fa_center);
draw_set_font(fn_title);
draw_set_color(c_aqua);
draw_set_alpha(0.5 + dsin(cycler * 2));
draw_text(320, 250, "~~ Click to start ~~" );

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);