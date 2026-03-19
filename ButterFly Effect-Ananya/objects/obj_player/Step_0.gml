if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block)) {
	x += -move_speed
	image_xscale = abs(image_xscale)
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block)) {
	x += move_speed
	image_xscale = -abs(image_xscale)
}

if (keyboard_check(vk_up)) {
	if (instance_place(x, y+1, obj_block)) {
		vspeed = jump_height
	}
}

// Gravity Code
if (instance_place(x, y+1, obj_block)) {
	gravity = 0
} else {
	gravity = 0.25
}

// does not go out the grid 
// move right (example)
if (!place_meeting(x + hspeed, y, obj_wood_block)) {
    x += hspeed;
} else {
    hspeed = -hspeed; // turn around (enemy behavior)
}