// obj_pause Draw GUI Event

draw_set_font(fnt_text);

if (global.startLevel && surface_exists(global.pauseSurf)) {

    var guiW = display_get_gui_width();
    var guiH = display_get_gui_height();

    // draw frozen screen
    draw_surface(global.pauseSurf, 0, 0);

    // dark overlay
    draw_set_alpha(0.6);
    draw_set_color(c_black);
    draw_rectangle(0, 0, guiW, guiH, false);
    draw_set_alpha(1);

    // text formatting
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);

    // story text
    draw_text(guiW/12, guiH/4, story_text);
	
	if (room = rm_level1) {
		// Draw Sprite
		draw_set_font(fnt_simple)
		draw_sprite(spr_arrow_keys, 0, guiW/12, guiH/2 - 128)
		draw_text(guiW/4, guiH/2 - 24, "Use ARROW KEYS to move around the maze")
	} else if (room = rm_level2) {
		draw_set_font(fnt_simple)
		draw_sprite(spr_pointer, 0, guiW/6, guiH/2 - 48)
		draw_text(guiW/4, guiH/2 - 24, "Use the MOUSE to swat away the pests")
	} else if (room = rm_level3) {
		draw_set_font(fnt_simple)
		draw_sprite(spr_up_arrow, 0, guiW/6, guiH/2 - 52)
		draw_text(guiW/4, guiH/2 - 24, "Use UP ARROW to jump through the vines")
	}

	draw_set_font(fnt_text)
    // blinking "press space"
    if (floor(current_time / 500) mod 2 == 0) {
        draw_text(guiW/12, guiH/2 + 120, "Press SPACE to continue");
    }
}