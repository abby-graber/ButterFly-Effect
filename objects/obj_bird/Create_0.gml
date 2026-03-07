side = irandom(3); // 0=top, 1=bottom, 2=left, 3=right

switch (side) {
    
    case 0: // top
        x = irandom_range(sprite_xoffset, room_width - sprite_xoffset);
        y = -sprite_yoffset;
        break;
        
    case 1: // bottom
        x = irandom_range(sprite_xoffset, room_width - sprite_xoffset);
        y = room_height + sprite_yoffset;
        break;
        
    case 2: // left
        x = -sprite_xoffset;
        y = irandom_range(sprite_yoffset, room_height - sprite_yoffset);
        break;
        
    case 3: // right
        x = room_width + sprite_xoffset;
        y = irandom_range(sprite_yoffset, room_height - sprite_yoffset);
        break;
}

if (instance_exists(obj_cocoon)) {
    direction = point_direction(x, y, obj_cocoon.x, obj_cocoon.y);
    speed = 5;
}