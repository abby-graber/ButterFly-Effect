if (x < -sprite_xoffset || 
    x > room_width + sprite_xoffset ||
    y < -sprite_yoffset || 
    y > room_height + sprite_yoffset) {
    
    instance_destroy();
}