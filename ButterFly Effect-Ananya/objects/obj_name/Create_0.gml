var playerName = get_string_async("Enter your name:", "Player");

// Default name
if (playerName == "") {
    playerName = "Player";
}

// Add score to high score table
highscore_add(playerName, global.playerScore);