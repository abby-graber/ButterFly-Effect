// obj_pause Create Event

draw_set_font(fnt_text);

// start paused
global.startLevel = false

if (room == rm_level1 && !global.level1_story_done) {
    alarm[0] = room_speed * .1
	global.room_start_score = global.player_score
}
else if (room == rm_level2 && !global.level2_story_done) {
    alarm[0] = room_speed * .1
	global.room_start_score = global.player_score
}
else if (room == rm_level3 && !global.level3_story_done) {
    alarm[0] = room_speed * .1
	global.room_start_score = global.player_score
}
else {
    instance_destroy(); // story already played
}
