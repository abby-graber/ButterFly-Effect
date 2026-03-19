// obj_pause Draw GUI Event
draw_set_font(fnt_text)

if (global.paused && surface_exists(global.pauseSurf)) {

    draw_surface(global.pauseSurf, 0, 0);

    var guiW = window_get_width();
    var guiH = window_get_height();

    // semi-transparent overlay
    draw_set_alpha(0.5);
    draw_set_color(c_black);
    draw_rectangle(0, 0, guiW, guiH, false);
    draw_set_alpha(1);

    // pause text
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_yellow);

    draw_text(guiW/2, guiH/2, "PAUSED\nPress ALT+P to Resume");
}