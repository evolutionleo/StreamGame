
use_uuid()
remote = false

max_ping_interval = 120
alarm[0] = max_ping_interval


spd = {x: 0, y: 0}
dir = {x: 0, y: 0}

walkspd = 7
jumph = 13.5

acc = .5
dec = .7
grv = .4


coyote = 0
max_coyote = 10

jump_buffer = 0
max_jump_buffer = 6


jump_cut = .5
is_jump_cut = false


function onGround() {
	return place_meeting(x, y+1, oWall)
}

function jump() {
	spd.y = -jumph
	coyote = 0
	jump_buffer = 0
	is_jump_cut = false
}