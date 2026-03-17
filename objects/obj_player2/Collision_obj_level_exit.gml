// Inherit the parent event
var playerName = get_string_async("Enter your name:", "");

if (playerName == "") {
    playerName = "Player";
}

highscore_add(playerName, global.player_score);

event_inherited();
