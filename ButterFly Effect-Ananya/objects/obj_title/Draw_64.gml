draw_set_font(fnt_title);
draw_text(50, 50, "ButterFly Effect");

if (floor(current_time / 350) mod 2 == 0) {
	draw_set_font(fnt_ui);
	draw_text(55, 225, "Click The Egg To Hatch");
}

draw_set_font(fnt_uiBigger)
draw_text(55, 625, "Press Start Productions")