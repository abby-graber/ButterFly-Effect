// draw_set_colour($8DD7BF)
// draw_rectangle(50, 5, 150, 45, false)

draw_set_font(fnt_ui)

for (var i =0; i < global.player_lives; i++) {
	draw_sprite(spr_life, 0, (55 + 26 * i), 15)
}

draw_set_halign(fa_right)
draw_text(1300, 30, "Score: " + string(global.player_score))

if (global.game_over) {
	draw_set_halign(fa_center);
    draw_text(window_get_width()/2, window_get_height()/2, "Game Over! Press R to restart.");
}