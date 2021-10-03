/// @desc Press 1-9 to join lobbies


for(var i = 1; i <= 9; i++) {
	if (keyboard_check_pressed(ord(string(i)))) {
		trace("pressed %", i)
		if (i-1 < array_length(global.lobbies)) {
			sendJoinLobby(global.lobbies[i-1].lobbyid)
		}
	}
}

if (keyboard_check_pressed(ord("L"))) {
	sendLeaveLobby()
}