// obj_pause Step
if (keyboard_check(vk_alt) && keyboard_check_pressed(ord("P"))) {
    global.paused = !global.paused;
    
    if (global.paused) {
        // Capture current screen
        // Capture current screen
	if (surface_exists(global.pauseSurf)) surface_free(global.pauseSurf);

	var guiW = window_get_width();
	var guiH = window_get_height();

	global.pauseSurf = surface_create(guiW, guiH);

	surface_set_target(global.pauseSurf);
	draw_surface(application_surface, 0, 0);
	surface_reset_target();

        // Deactivate instances
        instance_deactivate_all(true);
        // Activate pause object itself
        instance_activate_object(obj_pause);
    } else {
        // Reactivate everything
        instance_activate_all();

        if (surface_exists(global.pauseSurf)) {
            surface_free(global.pauseSurf);
            global.pauseSurf = -1;
        }
    }
}