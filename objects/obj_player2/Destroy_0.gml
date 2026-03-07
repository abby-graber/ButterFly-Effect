// audio_play_sound(snd_kill_character, 1, false)

global.player_lives -= 1

if (global.player_lives > 0) {
	room_restart()
} else {
	global.game_over = true
}