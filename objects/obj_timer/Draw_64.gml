draw_set_halign(fa_center);
draw_set_color(c_white);

var seconds = ceil(timer / room_speed);

draw_text(display_get_gui_width()/2, 50, "Time: " + string(seconds));