// Fly away from the cocoon when clicked
if (!clicked) {
    clicked = true
    global.player_score += point_value
}

if (instance_exists(obj_cocoon)) {
    direction = point_direction(obj_cocoon.x, obj_cocoon.y, x, y);
}

speed = 8;