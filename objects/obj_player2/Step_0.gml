hspeed = 3

if (keyboard_check(vk_space)) {
	show_debug_message("jumping...")
	vspeed = jump_height
}

// Gravity Code
if (instance_place(x, y+1, obj_block)) {
	gravity = 0
} else {
	gravity = 0.25
}