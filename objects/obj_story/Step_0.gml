// obj_pause Step Event
if (keyboard_check_pressed(vk_space)) {

    global.startLevel = false;

    if (room == rm_level1) global.level1_story_done = true;
    if (room == rm_level2) global.level2_story_done = true;
    if (room == rm_level3) global.level3_story_done = true;

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