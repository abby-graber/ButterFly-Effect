draw_set_font(fnt_title)
draw_set_halign(fa_center);

var guiW = display_get_gui_width();
var guiH = display_get_gui_height();

draw_text(guiW/2, guiH/6, "Da End.");

draw_set_font(fnt_simple)
// Draw the high score table in a rectangle on screen
var tableW = 300;
var tableH = 300;

var x1 = guiW/2 - tableW/2;
var y1 = guiH/3 + 40;
var x2 = x1 + tableW;
var y2 = y1 + tableH;

draw_set_color($FA86C4);
draw_text(guiW/2, guiH/3, "High Scores");

draw_set_halign(fa_center); 

draw_set_color(c_white);
draw_highscore(x1, y1, x2, y2);

draw_set_color($FA86C4);
if (floor(current_time / 500) mod 2 == 0) {
    draw_text(guiW/2, 615, "Press R to Restart");
};