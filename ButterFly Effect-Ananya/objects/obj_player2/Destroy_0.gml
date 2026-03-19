// audio_play_sound(snd_kill_character, 1, false)

global.player_lives -= 1

if (global.player_lives > 0) {
	global.player_score = global.room_start_score
	room_restart()
} else {
	global.game_over = true
	room_goto(rm_gameOver);
}