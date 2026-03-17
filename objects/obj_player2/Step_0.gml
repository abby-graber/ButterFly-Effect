if (keyboard_check_pressed(vk_up)) {
    show_debug_message("jumping...")
    vspeed = jump_height

    if (!jumped) {
        jumped = true
        gravity_active = true
    }
}

if (jumped) {
	hspeed = 3
}

if (gravity_active) {
    if (instance_place(x, y+1, obj_block)) {
        gravity = 0
    } else {
        gravity = 0.25
    }
} else {
    gravity = 0
}