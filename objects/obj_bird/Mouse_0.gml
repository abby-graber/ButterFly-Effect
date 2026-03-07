/// Mouse Left Pressed Event

// Fly away from the cocoon when clicked
if (instance_exists(obj_cocoon)) {
    direction = point_direction(obj_cocoon.x, obj_cocoon.y, x, y);
}

speed = 8;