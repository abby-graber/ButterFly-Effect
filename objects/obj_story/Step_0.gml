// obj_pause Step Event
if (keyboard_check_pressed(vk_space)) {

    global.startLevel = false;

    // reactivate everything
    instance_activate_all();

    // free surface
    if (surface_exists(global.pauseSurf)) {
        surface_free(global.pauseSurf);
        global.pauseSurf = -1;
    }

    // remove pause object
    instance_destroy();
}