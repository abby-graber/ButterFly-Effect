// remove old surface if it exists
global.startLevel = true

if (surface_exists(global.pauseSurf)) {
    surface_free(global.pauseSurf);
}

// get GUI size
var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

// create surface
global.pauseSurf = surface_create(guiW, guiH);

// capture screen
surface_set_target(global.pauseSurf);
draw_surface(application_surface, 0, 0);
surface_reset_target();

// deactivate everything except pause object
instance_deactivate_all(true);
instance_activate_object(obj_story);